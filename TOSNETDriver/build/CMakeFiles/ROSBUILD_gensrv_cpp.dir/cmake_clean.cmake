FILE(REMOVE_RECURSE
  "../src/TOSNETDriver/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/TOSNETDriver/TOSNET_read.h"
  "../srv_gen/cpp/include/TOSNETDriver/TOSNET_write.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
