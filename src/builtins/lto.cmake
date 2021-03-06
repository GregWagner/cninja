# Enable -flto={thin,full}. E.g. pass lto=full.
cninja_optional(compiler)
set(CNINJA_LTO_KIND "%lto%")

if(CNINJA_COMPILER STREQUAL "clang")
  string(APPEND CMAKE_C_FLAGS_INIT " -flto=%lto%")
  string(APPEND CMAKE_CXX_FLAGS_INIT " -flto=%lto%")

  string(APPEND CMAKE_C_FLAGS_INIT " -fwhole-program-vtables")
  string(APPEND CMAKE_CXX_FLAGS_INIT " -fwhole-program-vtables")
else()
  string(APPEND CMAKE_C_FLAGS_INIT " -flto")
  string(APPEND CMAKE_CXX_FLAGS_INIT " -flto")
endif()
# Will only be available in clang-11:
# -fvirtual-function-elimination
