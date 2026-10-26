#!/bin/sh
# Thin wrapper kept for compatibility. See add_area_coords.sh.
exec sh "$(dirname "$0")/add_area_coords.sh" IPSL-CM6A-LR-INCA
