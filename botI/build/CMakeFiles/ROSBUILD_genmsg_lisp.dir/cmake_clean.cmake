FILE(REMOVE_RECURSE
  "../src/botI/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/position_in_row.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_position_in_row.lisp"
  "../msg_gen/lisp/control_msg.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_control_msg.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
