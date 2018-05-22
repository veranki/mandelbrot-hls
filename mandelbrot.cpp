#include "mandelbrot.h"

double mapToReal(int x, int imgWidth, double minR, double maxR) {
  double xrange = maxR - minR;
  // scaled x value is minR + ((maxR-minR)*Range/width)
  return (x * (xrange / imgWidth) + minR);
}

double mapToImag(int y, int imgHeight, double minI, double maxI) {
  double yrange = maxI - minI;
  return (y * (yrange / imgHeight) + minI);
}

int findmandelbrot(double cr, double ci, int max_iteration) {
  int i = 0;
  double zr = 0.0, zi = 0.0;
  while (i < max_iteration && (zr * zr + zi * zi) < 4.0) {
    double temp = (zr * zr) - (zi * zi) + cr;
    zi = (2.0 * zr * zi) + ci;
    zr = temp;
    i++;
  };
  return i;
}

void mandlebrot_main(int res[imgWidth][imgHeight]) {
  // For every pixel..
  for (int y = 0; y < imgHeight; y++) {   // Rows
    for (int x = 0; x < imgWidth; x++) {  // Pixels in row
      // Find real and imaginary for C, corresponding to  x,y pixel in image
      double cr = mapToReal(x, imgWidth, minR, maxR);
      double ci = mapToImag(y, imgHeight, minI, maxI);
      // Find  number of iterations in  Mandelbrot formula using C
      int n = findmandelbrot(cr, ci, max_iteration);
      // Map resulting iterations to RGB values
      res[x][y] = n % 256;
    }
  }
}
