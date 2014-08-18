#!/bin/bash
if [ ! -f Solarize.12x29.bmp   ]; then exit 1; fi
if [ ! -f Solarize.12x29.table ]; then exit 2; fi
echo Creating Solarize font...
echo

rm -f Solarize.12x29.psf*
./writepsf Solarize.12x29.bmp
psfaddtable Solarize.12x29.psf Solarize.12x29.table Solarize.12x29.psfu
gzip Solarize.12x29.psfu

echo
echo Done!
exit 0
