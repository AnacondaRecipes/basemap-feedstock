#!/bin/bash

echo "===================================================================================================="
echo "Building $PKG_NAME"
echo ""

export GEOS_DIR=$PREFIX

case $PKG_NAME in

    basemap)
        $PYTHON -m pip install . --no-deps --no-build-isolation -vv
        ;;

    basemap-data)
        $PYTHON -m pip install data/basemap_data --no-deps --no-build-isolation -vv
        ;;

    basemap-data-hires)
        $PYTHON -m pip install data/basemap_data_hires --no-deps --no-build-isolation -vv
        ;;

    *)
        echo "No build instructions for $PKG_NAME"
        exit 1
        ;;

esac
