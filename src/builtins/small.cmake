# Creates a small build
cninja_require(pre)
cninja_require(lto=full)
cninja_optional(debugsyms)
cninja_optional(compiler)
cninja_optional(lld)

# Identical code folding reduces size and improves performance
if("lld" STREQUAL "${CNINJA_LINKER}")
  add_linker_flags(" -Wl,--icf=all")
endif()

if(NOT APPLE)
  add_linker_flags(" -Wl,-O3")
endif()

if(NOT "debugsyms" IN_LIST CNINJA_FEATURES)
  add_linker_flags(" -Wl,--strip-all")
endif()
