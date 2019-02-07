cmake_minimum_required(VERSION 3.0)
project(eviscerator)

set(CMAKE_CXX_STANDARD 11)
set(Boost_USE_STATIC_LIBS ON)

find_package(Threads)
find_package(Boost COMPONENTS timer chrono regex filesystem)
add_executable(eviscerator main.cpp cxxopts.hpp modules/existential.h TestResults.h utilities/Ellipsis.h utilities/functions.cpp modules/pddl12.h modules/existential.cpp modules/pddl21.cpp modules/pddl21.h modules/pddl12.cpp utilities/Ellipsis.cpp utilities/Executor.cpp utilities/Executor.h modules/pddl22.cpp modules/pddl22.h modules/pddl3.cpp modules/pddl3.h modules/pddlplus.cpp modules/pddlplus.h modules/TestSuite.cpp modules/TestSuite.h modules/PlannerQualities.cpp modules/PlannerQualities.h modules/IPC.h modules/IPC.cpp)
target_link_libraries (eviscerator ${CMAKE_THREAD_LIBS_INIT} ${Boost_LIBRARIES})
target_include_directories(eviscerator PUBLIC ${Boost_INCLUDE_DIRS})
file(REMOVE_RECURSE ${CMAKE_CURRENT_BINARY_DIR}/pddl)
file(COPY pddl DESTINATION ${CMAKE_CURRENT_BINARY_DIR})