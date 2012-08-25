FILE(REMOVE_RECURSE
  "../src/IMUDriver/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/gyroscope.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_gyroscope.lisp"
  "../msg_gen/lisp/accelerometer.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_accelerometer.lisp"
  "../msg_gen/lisp/magnetometer.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_magnetometer.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
