FILE(REMOVE_RECURSE
  "../src/rosserial_arduino/msg"
  "../src/rosserial_arduino/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/make_libraries"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/make_libraries.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
