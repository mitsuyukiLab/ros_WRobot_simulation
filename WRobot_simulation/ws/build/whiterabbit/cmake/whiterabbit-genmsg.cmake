# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "whiterabbit: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(whiterabbit_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_custom_target(_whiterabbit_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whiterabbit" "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(whiterabbit
  "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whiterabbit
)

### Generating Module File
_generate_module_cpp(whiterabbit
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whiterabbit
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(whiterabbit_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(whiterabbit_generate_messages whiterabbit_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_dependencies(whiterabbit_generate_messages_cpp _whiterabbit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whiterabbit_gencpp)
add_dependencies(whiterabbit_gencpp whiterabbit_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whiterabbit_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(whiterabbit
  "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whiterabbit
)

### Generating Module File
_generate_module_eus(whiterabbit
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whiterabbit
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(whiterabbit_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(whiterabbit_generate_messages whiterabbit_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_dependencies(whiterabbit_generate_messages_eus _whiterabbit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whiterabbit_geneus)
add_dependencies(whiterabbit_geneus whiterabbit_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whiterabbit_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(whiterabbit
  "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whiterabbit
)

### Generating Module File
_generate_module_lisp(whiterabbit
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whiterabbit
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(whiterabbit_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(whiterabbit_generate_messages whiterabbit_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_dependencies(whiterabbit_generate_messages_lisp _whiterabbit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whiterabbit_genlisp)
add_dependencies(whiterabbit_genlisp whiterabbit_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whiterabbit_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(whiterabbit
  "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whiterabbit
)

### Generating Module File
_generate_module_nodejs(whiterabbit
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whiterabbit
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(whiterabbit_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(whiterabbit_generate_messages whiterabbit_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_dependencies(whiterabbit_generate_messages_nodejs _whiterabbit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whiterabbit_gennodejs)
add_dependencies(whiterabbit_gennodejs whiterabbit_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whiterabbit_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(whiterabbit
  "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whiterabbit
)

### Generating Module File
_generate_module_py(whiterabbit
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whiterabbit
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(whiterabbit_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(whiterabbit_generate_messages whiterabbit_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuanhui/catkin_ws/src/whiterabbit/srv/Canny.srv" NAME_WE)
add_dependencies(whiterabbit_generate_messages_py _whiterabbit_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whiterabbit_genpy)
add_dependencies(whiterabbit_genpy whiterabbit_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whiterabbit_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whiterabbit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whiterabbit
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(whiterabbit_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(whiterabbit_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(whiterabbit_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whiterabbit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whiterabbit
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(whiterabbit_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(whiterabbit_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(whiterabbit_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whiterabbit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whiterabbit
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(whiterabbit_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(whiterabbit_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(whiterabbit_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whiterabbit)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whiterabbit
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(whiterabbit_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(whiterabbit_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(whiterabbit_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whiterabbit)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whiterabbit\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whiterabbit
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(whiterabbit_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(whiterabbit_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(whiterabbit_generate_messages_py std_msgs_generate_messages_py)
endif()
