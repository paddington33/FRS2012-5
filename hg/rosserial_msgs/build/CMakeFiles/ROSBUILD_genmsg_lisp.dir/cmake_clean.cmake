FILE(REMOVE_RECURSE
  "../src/rosserial_msgs/msg"
  "../src/rosserial_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Log.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Log.lisp"
  "../msg_gen/lisp/TopicInfo.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_TopicInfo.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
