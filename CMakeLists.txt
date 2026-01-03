cmake_minimum_required(VERSION 3.15)

project(HttpPlusCS2)

# ─────────────────────────────────────────────────────────────
# C++ standard
# ─────────────────────────────────────────────────────────────
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# For editor integration (clangd, VS Code, etc.)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ─────────────────────────────────────────────────────────────
# Conan integration (come before find_package)
# ─────────────────────────────────────────────────────────────
if(EXISTS "${CMAKE_BINARY_DIR}/conan_toolchain.cmake")
    include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)
endif()

# ─────────────────────────────────────────────────────────────
# Dependencies
# ─────────────────────────────────────────────────────────────
find_package(Boost REQUIRED COMPONENTS system)
find_package(nlohmann_json REQUIRED)

# ─────────────────────────────────────────────────────────────
# Main executable
# ─────────────────────────────────────────────────────────────
add_executable(HttpPlusCS2
    src/main.cpp
    src/http/server.cpp
    src/http/session.cpp
    src/http/router.cpp
    src/http/response.cpp
    src/gsi/ingestion.cpp
    src/gsi/parser.cpp
)

add_executable(TestParser
    tests/test_parser.cpp
    src/gsi/parser.cpp
)
target_include_directories(TestParser PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(TestParser PRIVATE nlohmann_json::nlohmann_json)

target_include_directories(HttpPlusCS2 PRIVATE
    ${CMAKE_SOURCE_DIR}/include
)
target_link_libraries(HttpPlusCS2 PRIVATE
    Boost::boost      # Header-only libs (Asio, Beast, etc.)
    Boost::system     # Required by Asio/Beast at link time
    nlohmann_json::nlohmann_json
)

# ─────────────────────────────────────────────────────────────
# Compiler warnings (recommended for catching bugs early)
# ─────────────────────────────────────────────────────────────
target_compile_options(HttpPlusCS2 PRIVATE
    $<$<CXX_COMPILER_ID:AppleClang,Clang,GNU>:-Wall -Wextra -Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)
target_compile_options(TestParser PRIVATE
    $<$<CXX_COMPILER_ID:AppleClang,Clang,GNU>:-Wall -Wextra -Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)

# ─────────────────────────────────────────────────────────────
# Optional: sanitizers for Debug builds (catch memory/UB bugs)
# ─────────────────────────────────────────────────────────────
option(ENABLE_SANITIZERS "Enable ASan + UBSan in Debug builds" OFF)
if(ENABLE_SANITIZERS AND CMAKE_BUILD_TYPE STREQUAL "Debug")
    target_compile_options(HttpPlusCS2 PRIVATE -fsanitize=address,undefined -fno-omit-frame-pointer)
    target_link_options(HttpPlusCS2 PRIVATE -fsanitize=address,undefined)
endif()