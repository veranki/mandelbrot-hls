#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/f/dev/mandelbrot-hls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
