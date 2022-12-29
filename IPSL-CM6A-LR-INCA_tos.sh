#!/bin/sh

infile=/work/kajiyama/data/cmip6/raw/IPSL-CM6A-LR-INCA/tos/tos_Omon_IPSL-CM6A-LR-INCA_historical_r1i1p1f1_gn_185001-201412.nc
outfile=/work/kajiyama/nco/cmip6/IPSL-CM6A-LR-INCA/tos/tos_Omon_IPSL-CM6A-LR-INCA_historical_r1i1p1f1_gn_185001-201412.nc
ncatted -a coordinates,area,c,c,"nav_lon nav_lat" $infile $outfile
