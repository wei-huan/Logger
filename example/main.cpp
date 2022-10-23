#include "log.hpp"

int main() {
  log_init(Debug);
  // log_redirect_output("1.log");
  fatal("Huge Problem, Abort!");
  error("Find a question, tackle it, Now!");
  warning("Something went wrong, please check");
  info("We capture a situation, announcing you");
  debug("Is it what you expect");
  trace("Recording, every thing just fine");
  return 0;
}
