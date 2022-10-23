#include "log.hpp"
#include <exception>
#include <sstream>
#include <stdexcept>

using std::chrono::system_clock;

std::shared_ptr<Log> Log::single = nullptr;
std::mutex Log::s_mutex;

char buffer[1024];

void Log::log(enum Level level, const char *file, int line, char *fmt, ...) {
  if (get_level() < level) {
    return;
  }

  std::stringstream s;
  time_t raw_time = system_clock::to_time_t(system_clock::now());
  struct tm *timeinfo = std::localtime(&raw_time);
  s << std::put_time(timeinfo, "[%H:%M:%S]");
  if (ofs.is_open()) {
    s << level_name[level];
  } else {
    s << level_color[level] << level_name[level] << NO_COLOR;
  }
  s << "[" << file << ":" << line << "]";

  va_list aptr;
  va_start(aptr, fmt);
  vsprintf(buffer, fmt, aptr);
  va_end(aptr);

  print_mutex.lock();
  if (ofs.is_open()) {
    ofs << s.str() << buffer << std::endl;
  } else {
    std::cout << s.str() << buffer << std::endl;
  }
  print_mutex.unlock();
}

bool is_path_exist(string path_and_file) {
  return (access(dirname(const_cast<char *>(path_and_file.c_str())), F_OK) !=
          -1);
}

bool is_file_exist(string path_and_file) {
  return (access(const_cast<char *>(path_and_file.c_str()), F_OK) != -1);
}

void Log::set_output_stream(string path_and_file) {
  if (is_path_exist(path_and_file)) {
    if (is_file_exist(path_and_file)) {
      info("the log file already exist, append the content");
    }
    ofs.open(path_and_file, ios::out | ios::app);
  } else {
    throw std::runtime_error("designated log path doesn't exist");
  }
}

void log_init(Level level) {
  auto log_instance = Log::get_instance();
  log_instance->set_level(level);
  // log_instance->set_output_stream("log/logger.log");
}

void log_redirect_output(string path_and_file) {
  auto log_instance = Log::get_instance();
  log_instance->set_output_stream(path_and_file);
}