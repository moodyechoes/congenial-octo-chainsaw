cmake_minimum_required(VERSION 3.21)
project(congenial-octo-chainsaw LANGUAGES CXX)

include(FetchContent)
FetchContent_Declare(SFML
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_TAG 2.6.x)
FetchContent_MakeAvailable(SFML)

add_executable(congenial-octo-chainsaw main.cpp)
target_link_libraries(congenial-octo-chainsaw PRIVATE sfml-graphics)
target_compile_features(congenial-octo-chainsaw PRIVATE cxx_std_17)
if (WIN32 AND BUILD_SHARED_LIBS)
    add_custom_command(TARGET congenial-octo-chainsaw POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_RUNTIME_DLLS:congenial-octo-chainsaw> $<TARGET_FILE_DIR:congenial-octo-chainsaw> COMMAND_EXPAND_LISTS)
endif()

install(TARGETS congenial-octo-chainsaw)
