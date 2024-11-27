cmake_minimum_required(VERSION 3.16)
project(ModelView)

find_package(Qt6 REQUIRED COMPONENTS Gui)

file(TOUCH Model.cpp Model.h )
file(TOUCH View.cpp View.h )
file(TOUCH Presenter.cpp Presenter.h )

file(GLOB CIPER "${CMAKE_SOURCE_DIR}/Widgets/*.cpp")
file(GLOB HIPER "${CMAKE_SOURCE_DIR}/Widgets/*.h")

set(SRC Model.cpp View.cpp Presenter.cpp ${CIPER})
set(HDR Model.h View.h Presenter.h ${HIPER})

include_directories(${CMAKE_SOURCE_DIR}/Widgets)
link_directories(${CMAKE_SOURCE_DIR}/Widgets)

add_library(${PROJECT_NAME} SHARED ${SRC} ${HDR})

target_link_libraries(${PROJECT_NAME}
	Qt6::Core
	Widgets
	Qt6::Gui
	Qt6::Quick
)
