set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR amd64)

set(CMAKE_TOOLCHAIN_PREFIX "x86_64-w64-mingw32")

find_program(CMAKE_MAKE_PROGRAM  NAMES make)
find_program(CMAKE_RC_COMPILER  NAMES ${CMAKE_TOOLCHAIN_PREFIX}-windres)
find_program(CMAKE_C_COMPILER   NAMES ${CMAKE_TOOLCHAIN_PREFIX}-gcc)
find_program(CMAKE_CXX_COMPILER NAMES ${CMAKE_TOOLCHAIN_PREFIX}-g++)
find_program(CMAKE_ASM_COMPILER NAMES ${CMAKE_TOOLCHAIN_PREFIX}-as)
find_program(CMAKE_LINK_EXECUTABLE NAMES ${CMAKE_TOOLCHAIN_PREFIX}-ld)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

set(CMAKE_FIND_ROOT_PATH /usr/${CMAKE_TOOLCHAIN_PREFIX} /usr/local/${CMAKE_TOOLCHAIN_PREFIX})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
