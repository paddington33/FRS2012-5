FILE(REMOVE_RECURSE
  "../src/IMUDriver/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/IMUDriver/msg/__init__.py"
  "../src/IMUDriver/msg/_gyroscope.py"
  "../src/IMUDriver/msg/_accelerometer.py"
  "../src/IMUDriver/msg/_magnetometer.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
