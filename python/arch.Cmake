cmake_minimum_required(VERSION 3.5)

project(MyQtProject LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

add_executable(MyQtProject
    main.cpp
    qml.qrc
)

target_compile_definitions(MyQtProject
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(MyQtProject
    PRIVATE Qt5::Core Qt5::Quick)
