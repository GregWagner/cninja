#pragma once
#include <string>
#include <algorithm>

namespace cn
{
inline
std::string uppercase(std::string s) noexcept
{
  std::transform(
        s.begin(), s.end(),
        s.begin(),
        [] (unsigned char c) { return std::toupper(c); }
  );
  return s;
}
}
