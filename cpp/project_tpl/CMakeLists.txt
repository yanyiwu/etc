PROJECT(xx)

CMAKE_MINIMUM_REQUIRED (VERSION 2.8)

SET(CMAKE_INSTALL_PREFIX  /usr)

ADD_DEFINITIONS(-std=c++0x -O3)
ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(test)

ENABLE_TESTING()
ADD_TEST(NAME mytest COMMAND test1)
