set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86)

find_program(CMAKE_C_COMPILER NAMES "${CMAKE_CURRENT_LIST_DIR}/zig-cc-win.sh")
find_program(CMAKE_CXX_COMPILER NAMES "${CMAKE_CURRENT_LIST_DIR}/zig-c++-win.sh")
find_program(CMAKE_RC_COMPILER NAMES x86_64-w64-mingw32-windres windres)
find_program(CMAKE_C_COMPILER_AR NAMES "${CMAKE_CURRENT_LIST_DIR}/zig-ar.sh")

if(NOT CMAKE_C_COMPILER)
	message(FATAL_ERROR "Failed to find CMAKE_C_COMPILER.")
endif()

if(NOT CMAKE_CXX_COMPILER)
	message(FATAL_ERROR "Failed to find CMAKE_CXX_COMPILER.")
endif()

if(NOT CMAKE_RC_COMPILER)
        message(FATAL_ERROR "Failed to find CMAKE_RC_COMPILER.")
endif()

if(NOT CMAKE_C_COMPILER_AR)
        message(FATAL_ERROR "Failed to find CMAKE_AR.")
endif()
