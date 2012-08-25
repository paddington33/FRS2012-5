FILE(REMOVE_RECURSE
  "../src/TOSNETDriver/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/TOSNETDriver/srv/__init__.py"
  "../src/TOSNETDriver/srv/_TOSNET_read.py"
  "../src/TOSNETDriver/srv/_TOSNET_write.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
