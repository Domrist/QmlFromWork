cmake_minimum_required(VERSION 3.16)
project (Widgets VERSION "1.0.0")

#file(TOUCH WidgetThree.cpp WidgetThree.h)

# file(TOUCH Initializer.h Initializer.cpp)


set(SRC
	BaseWidget.cpp
	WidgetOne.cpp
	WidgetTwo.cpp
	WidgetThree.cpp
	Initializer.cpp
)


set(HDR
	BaseWidget.h
	WidgetOne.h
	WidgetTwo.h
	WidgetThree.h
	Initializer.h
)

link_directories(${CMAKE_SOURCE_DIR}/ModelView)
include_directories(${CMAKE_SOURCE_DIR}/ModelView)

add_library(${PROJECT_NAME} STATIC ${SRC} ${HDR})

target_link_libraries(${PROJECT_NAME}
	Qt6::Core
	Qt6::Qml
)
