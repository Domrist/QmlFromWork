cmake_minimum_required(VERSION 3.10.2)

project(QmlTest VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

add_subdirectory(Widgets)
add_subdirectory(ModelView)



file(GLOB CIPER "Widgets/*.cpp")
file(GLOB HIPER "Widgets/*.h")

set(SRC
	main.cpp
	${CIPER}
)

set(HDR
	${HIPER}
)

set(QML
	Main.qml
)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQmlTest
	${SRC} ${HDR}
)



qt_add_qml_module(appQmlTest
    URI QmlTest
    VERSION 1.0
    QML_FILES
		${QML}
)

# # Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# # If you are developing for iOS or macOS you should consider setting an
# # explicit, fixed bundle identifier manually though.
# set_target_properties(appQmlTest PROPERTIES
# #    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQmlTest
#     MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
#     MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
#     MACOSX_BUNDLE TRUE
#     WIN32_EXECUTABLE TRUE
# )

target_include_directories(appQmlTest PUBLIC Widgets)
target_link_directories(appQmlTest PUBLIC Widgets)

target_link_libraries(appQmlTest PUBLIC
	Qt6::Quick
	Widgets
	ModelView
	Qt6::Core
)

include(GNUInstallDirs)
install(TARGETS appQmlTest
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
