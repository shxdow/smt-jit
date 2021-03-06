cmake_minimum_required(VERSION 3.7 FATAL_ERROR)

project(smt-jit-bvlib CXX)

if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    # using regular Clang or AppleClang
else()
    message(FATAL_ERROR "CXX compiler is not clang, aborting!" )
endif()

set(CMAKE_CXX_STANDARD 14)
add_compile_options(-fno-rtti -fno-exceptions -Wall -Wextra -pedantic)

set(BVLIB_SOURCES
  bvlib.cpp
)

enable_testing()
add_executable(bvlib_tests doctest_main.cpp bvlib_tests.cpp ${BVLIB_SOURCES})
add_test(NAME bvlib_tests COMMAND bvlib_tests DEPENDS bvlib_tests)

add_custom_command(OUTPUT bvlib_bitcode
                   COMMAND ${CMAKE_CXX_COMPILER}
                           ${INCLUDE_DIRECTORIES}
                           -emit-llvm -c ${CXX_COMPILER_FLAGS}
                           -std=gnu++14 -march=native -O3
                           -o bvlib.bc
                           ${CMAKE_CURRENT_SOURCE_DIR}/bvlib.cpp)

add_custom_command(OUTPUT bvlib_ir
                   COMMAND ${CMAKE_CXX_COMPILER}
                           ${INCLUDE_DIRECTORIES}
                           -S -emit-llvm -c ${CXX_COMPILER_FLAGS}
                           -std=gnu++14 -march=native -O3
                           -o bvlib.ll
                           ${CMAKE_CURRENT_SOURCE_DIR}/bvlib.cpp)


add_custom_target(bvlib_bitcode.bc ALL DEPENDS bvlib_ir)

add_executable(eval_ex1 eval_ex1.cpp ${BVLIB_SOURCES})

add_library(bvlib ${BVLIB_SOURCES})
target_include_directories(bvlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
