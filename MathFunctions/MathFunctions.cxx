#include "MathFunctions.h"

// TODO 11: include cmath

// TODO 10: Wrap the mysqrt include in a precompiled ifdef based on USE_MYMATH
#include "mysqrt.h"

namespace mathfunctions {
double sqrt(double x)
{
  return detail::mysqrt(x);
}
}