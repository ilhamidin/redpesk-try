file(REMOVE_RECURSE
  "modem-binding-debug-test.wgt"
  "modem-binding-debug.wgt"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/populate.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
