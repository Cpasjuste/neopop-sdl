#! /bin/sh

# $NiH: mknames.sh,v 1.4 2004/07/14 09:48:30 dillo Exp $

#  mknames.sh -- create names arrays
#  Copyright (C) 2004 Thomas Klausner and Dieter Baron
#
#  This file is part of NeoPop-SDL, a NeoGeo Pocket emulator
#  The author can be contacted at <wiz@danbala.tuwien.ac.at>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

cat <<EOF
/*
  This file is automatically created by mknames.sh from NeoPop-SDL.h.
  Do not edit.
*/

#include "NeoPop-SDL.h"

const char *npev_names[] = {
EOF

sed -n 's/^[	 ]*NPEV_\([A-Z0-9_]*\),.*/    "\1",/p' "$1" | tr A-Z_ 'a-z '

cat <<EOF
};

const char *nprc_names[] = {
EOF

sed -n 's/^[	 ]*NPRC_\([A-Z0-9_]*\),.*/    "\1",/p' "$1" | tr A-Z_ 'a-z-'

cat <<EOF
};

const char *comms_names[] = {
EOF

sed -n 's/^[	 ]*COMMS_\([A-Z0-9_]*\),.*/    "\1",/p' "$1" | tr A-Z_ 'a-z-'

cat <<EOF
};

const char *yuv_names[] = {
EOF

sed -n 's/^[	 ]*YUV_\([A-Z0-9_]*\),.*/    "\1",/p' "$1" | tr A-Z_ 'a-z-'

cat <<EOF
};
EOF
