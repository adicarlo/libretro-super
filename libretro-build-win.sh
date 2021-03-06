#!/bin/bash

BASE_DIR=$(pwd)
RARCH_DIR=$BASE_DIR/dist
RARCH_DIST_DIR=$RARCH_DIR/win
FORMAT=_win
FORMAT_EXT=dll
MSVC_NAME=msvc-2010
RELEASE_LTCG=Release
RELEASE=Release

die()
{
   echo $1
   #exit 1
}

source $BASE_DIR/libretro-build-common-xdk.sh

if [ $1 ]; then
   $1
else
   build_libretro_mednafen_pce_fast
   build_libretro_mednafen_gba
   build_libretro_mednafen_ngp
   build_libretro_mednafen_vb
   build_libretro_mednafen_wswan
   build_libretro_s9x
   build_libretro_s9x_next
   build_libretro_genplus
   #build_libretro_fba
   build_libretro_vba_next
   build_libretro_fceu
   build_libretro_gambatte
   build_libretro_nx
   build_libretro_prboom
   build_libretro_stella
   #build_libretro_quicknes
   build_libretro_nestopia
   build_libretro_tyrquake
   build_libretro_mame078
   build_libretro_picodrive
   #build_libretro_handy
fi
