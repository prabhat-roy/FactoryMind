cmake_minimum_required(VERSION 3.20)
project(plc_adapter CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenSSL REQUIRED)

add_executable(plc-adapter
    src/main.cpp
    src/s7_driver.cpp
    src/mqtt_publisher.cpp
)

target_include_directories(plc-adapter PRIVATE src)
target_link_libraries(plc-adapter PRIVATE OpenSSL::SSL OpenSSL::Crypto snap7 paho-mqtt3c)
