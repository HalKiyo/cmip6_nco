#!/bin/sh
# Add the "nav_lon nav_lat" coordinates attribute to the area variable of a
# CMIP6 tos file with ncatted. The model name is the only argument.
# Usage is ./add_area_coords.sh IPSL-CM6A-LR-INCA

if [ $# -ne 1 ]; then
    echo "usage $0 MODEL" >&2
    exit 1
fi

model=$1
fname=tos_Omon_${model}_historical_r1i1p1f1_gn_185001-201412.nc
infile=/work/kajiyama/data/cmip6/raw/${model}/tos/${fname}
outfile=/work/kajiyama/nco/cmip6/${model}/tos/${fname}
ncatted -a coordinates,area,c,c,"nav_lon nav_lat" "$infile" "$outfile"
