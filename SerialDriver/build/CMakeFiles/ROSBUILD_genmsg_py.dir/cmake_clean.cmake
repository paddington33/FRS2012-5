FILE(REMOVE_RECURSE
  "../src/SerialDriver/msg"
  "../src/SerialDriver/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/SerialDriver/msg/__init__.py"
  "../src/SerialDriver/msg/_serial_mode.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
