# Enable UndefinedBehaviourSanitizer
cninja_optional(compiler)
string(APPEND CMAKE_C_FLAGS_INIT " -fsanitize=undefined")
string(APPEND CMAKE_CXX_FLAGS_INIT " -fsanitize=undefined")

if(CNINJA_COMPILER STREQUAL "clang")
  string(APPEND CMAKE_C_FLAGS_INIT " -fsanitize=undefined -fsanitize=integer")
  string(APPEND CMAKE_CXX_FLAGS_INIT " -fsanitize=undefined -fsanitize=integer")
endif()
