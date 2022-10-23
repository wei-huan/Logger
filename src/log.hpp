#pragma once

#include <chrono>
#include <fmt/core.h>
#include <fstream>
#include <iostream>
#include <libgen.h>
#include <mutex>
#include <ostream>
#include <string>
#include <unistd.h>

using std::ios;
using std::ofstream;
using std::string;

#define __FILENAME__ (&(__FILE__[SOURCE_PATH_SIZE]))

#define NO_COLOR "\e[0m"
#define RED "\e[0;31m"
#define GREEN "\e[0;32m"
#define L_YELLOW "\e[0;33m"
#define YELLOW "\e[1;33m"
#define L_BLUE "\e[0;34m"
#define PURPLE "\e[0;35m"
#define WHITE "\e[1;37m"

enum Level {
  Fatal = 0,
  Error,
  Warning,
  Info,
  Debug,
  Trace,
};

const string level_color[] = {RED, L_YELLOW, YELLOW, L_BLUE, GREEN, PURPLE};
const string level_name[] = {"[Fatal]", "[Error]", "[Warn ]",
                             "[Info ]", "[Debug]", "[Trace]"};

class Log;
class SafeDeletor {
public:
  void operator()(Log *sf) { delete sf; }
};

class Log {
private:
  Log() {}
  ~Log() {
    if (ofs.is_open()) {
      ofs.close();
    }
  }
  Log(const Log &) = delete;
  Log &operator=(const Log &) = delete;
  //定义友元类，通过友元类调用该类析构函数
  friend class SafeDeletor;

public:
  static std::shared_ptr<Log> get_instance() {
    if (single != nullptr) {
      return single;
    }
    s_mutex.lock();
    if (single != nullptr) {
      s_mutex.unlock();
      return single;
    }
    //额外指定删除器
    single = std::shared_ptr<Log>(new Log, SafeDeletor());
    s_mutex.unlock();
    return single;
  }
  void set_output_stream(string file);
  enum Level get_level() { return level; }
  void set_level(enum Level _level) { level = _level; }
  void log(enum Level level, const char *file, int line, char *format, ...);

private:
  static std::shared_ptr<Log> single;
  static std::mutex s_mutex;
  // other data
  ofstream ofs;
  std::mutex print_mutex;
  enum Level level = Fatal;
  bool need_time = false;
  bool need_date = false;
};

#define fatal(fmt, args...)                                                    \
  Log::get_instance()->log(Level::Fatal, __FILENAME__, __LINE__,               \
                           const_cast<char *>(fmt), ##args)

#define error(fmt, args...)                                                    \
  Log::get_instance()->log(Level::Error, __FILENAME__, __LINE__,               \
                           const_cast<char *>(fmt), ##args)

#define warning(fmt, args...)                                                  \
  Log::get_instance()->log(Level::Warning, __FILENAME__, __LINE__,             \
                           const_cast<char *>(fmt), ##args)

#define info(fmt, args...)                                                     \
  Log::get_instance()->log(Level::Info, __FILENAME__, __LINE__,                \
                           const_cast<char *>(fmt), ##args)

#define debug(fmt, args...)                                                    \
  Log::get_instance()->log(Level::Debug, __FILENAME__, __LINE__,               \
                           const_cast<char *>(fmt), ##args)

#define trace(fmt, args...)                                                    \
  Log::get_instance()->log(Level::Trace, __FILENAME__, __LINE__,               \
                           const_cast<char *>(fmt), ##args)

void log_init(Level level);
void log_redirect_output(string path_and_file);
