#ifndef __mandelbrot__
#define __mandelbrot__
#include <cmath>
using namespace std;

const int imgWidth = 1024;
const int imgHeight = 512;
const int max_iteration = 512;
const double minR = -1.5;
const double maxR = 0.5;
const double minI = -1.0;
const double maxI = 1.0;
void mandlebrot_main(int res[imgWidth][imgHeight]);
#endif
