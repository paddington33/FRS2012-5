FILE(REMOVE_RECURSE
  "../src/botI/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/botI/msg/__init__.py"
  "../src/botI/msg/_position_in_row.py"
  "../src/botI/msg/_control_msg.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
