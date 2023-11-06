# Arduino Core CMake Wrapper

Simple CMake wrapper for `Arduino Core` library.

Intended for use with custom `avr-gcc` build for Arduino platform,
while still being able to use Arduino Libraries.

## Usage

To use this wrapper you need to specify the wrapper directory and then include
it into your project.
You also need to specify CPU frequency, as well as target platform.
Furthermore, the sources need to be cross compiled using the
`avr-gcc` toolchain.

Example:
```cmake
set(CORE_WRAPPER_DIR ${CMAKE_CURRENT_SOURCE_DIR}/ext/wrapper CACHE STRING "")
set(CORE_WRAPPER_DEFS ... CACHE STRING "")
set(CORE_WRAPPER_OPTS ... CACHE STRING "")

add_subdirectory(ext/wrapper)
```

## Miscellaneous

Files are simply copied from
[ArduinoCore-avr Github repo](https://github.com/arduino/ArduinoCore-avr).
Most files are licensed under GLPL, some are not specified or use MIT License.


```
TODOS:

Add new options for CMake library (CDC_DISABLED, or others)
```
