FILE(REMOVE_RECURSE
  "../src/SerialDriver/msg"
  "../src/SerialDriver/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/serial_service.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_serial_service.lisp"
  "../srv_gen/lisp/serial_write_service.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_serial_write_service.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
