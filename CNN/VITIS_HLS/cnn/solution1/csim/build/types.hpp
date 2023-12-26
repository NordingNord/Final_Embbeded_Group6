#ifndef TYPES_HPP
#define TYPES_HPP

#include "ap_fixed.h"
#include "stdint.h"

typedef ap_fixed<21,5> fixed;
typedef ap_fixed<40,32> softmax_fixed;
//typedef float fixed;
typedef uint16_t sizetype;

#endif
