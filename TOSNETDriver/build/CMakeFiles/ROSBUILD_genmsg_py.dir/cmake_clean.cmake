FILE(REMOVE_RECURSE
  "../src/TOSNETDriver/msg"
  "../src/TOSNETDriver/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/TOSNETDriver/msg/__init__.py"
  "../src/TOSNETDriver/msg/_posision_in_row.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
