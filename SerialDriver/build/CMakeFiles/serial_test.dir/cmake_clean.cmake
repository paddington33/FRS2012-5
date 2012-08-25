FILE(REMOVE_RECURSE
  "../src/SerialDriver/msg"
  "../src/SerialDriver/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/serial_test.dir/src/test.o"
  "../bin/serial_test.pdb"
  "../bin/serial_test"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/serial_test.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
