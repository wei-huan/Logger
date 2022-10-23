# Logger

Simple toy logger for my other project which supports multi level control, output redirection and thread-safety.

## Build

```shell
cd Logger
cmake -S . -B ./build
cd build
make
```

## Run
```shell
cd ..
./build/Logger
[19:09:28][Fatal][example/main.cpp:6]Huge Problem, Abort!
[19:09:28][Error][example/main.cpp:7]Find a question, tackle it, Now!
[19:09:28][Warn ][example/main.cpp:8]Something went wrong, please check
[19:09:28][Info ][example/main.cpp:9]We capture a situation, announcing you
[19:09:28][Debug][example/main.cpp:10]Is it what you expect
```
