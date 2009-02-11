#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.54)
AC_REVISION([$NiH: configure.ac,v 1.17 2004/07/24 10:51:38 dillo Exp $])
AC_INIT([NeoPop-SDL],[0.2], [wiz@danbala.tuwien.ac.at], [NeoPop-SDL])
AC_CONFIG_SRCDIR([System_SDL/system_main.c])
AC_CONFIG_HEADERS([System_SDL/config.h])
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([dist-bzip2])

# Checks for programs.
AC_PROG_CC

# Checks for typedefs, structures, and compiler characteristics.
AC_STRUCT_TM
AC_C_BIGENDIAN(CFLAGS="${CFLAGS} -DMSB_FIRST", CFLAGS="${CFLAGS} -DLSB_FIRST")

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h sys/time.h unistd.h])

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_MEMCMP
AC_FUNC_STAT
AC_FUNC_VPRINTF
AC_CHECK_FUNCS([atexit gettimeofday memset strchr strdup strerror strrchr strspn])

# Checks for libraries.
AM_PATH_SDL(,,AC_MSG_ERROR([SDL not found]))

AC_ARG_WITH(png,
    AC_HELP_STRING([--with-png=PREFIX],[specify prefix for PNG library]),,
    with_png=yes)

AC_ARG_ENABLE(pandora,
 [  --enable-pandora        enable pandora compilation],
 [ pandora=yes
 ])

if test $pandora = "yes" ;
then
	CPPFLAGS="$CPPFLAGS -I$PNDSDK/usr/include -mcpu=cortex-a8 -DPANDORA"
	LDFLAGS="$LDFLAGS -L$PNDSDK/usr/lib"
fi


if test "$with_png" != "yes"
then
    CPPFLAGS="$CPPFLAGS -I$with_png/include"
    LDFLAGS="$LDFLAGS -L$with_png/lib -Wl,-R$with_png/lib"
fi
AC_CHECK_HEADER(png.h,
    AC_CHECK_LIB(png, png_create_read_struct, ,
        [AC_CHECK_LIB(png, png_destroy_read_struct,
	    [AC_DEFINE(HAVE_LIBPNG) LIBS="-lpng -lm $LIBS"],
	    [AC_MSG_WARN([PNG library not found -- using BMP screenshots])],
	    -lm)]),
    [AC_MSG_WARN([PNG library not found -- using BMP screenshots])])

AC_CHECK_LIB([z], [main],
	[AC_DEFINE([HAVE_LIBZ], [1],
		  [Define to 1 if you have the zlib library (-lz)])
	LIBS="$LIBS -lz"],
	[AC_MSG_WARN([zlib not found -- no support for zipped ROMs])])

AC_CHECK_LIB([SDL_net], [SDLNet_TCP_Open],
	[AC_DEFINE([HAVE_LIBSDL_NET], [1],
	           [Define to 1 if you have the `SDL_net' library (-lSDL_net)])
	 SDL_LIBS="$SDL_LIBS -lSDL_net"],
	[AC_MSG_WARN([SDL_net not found -- no comms support])],
	[$SDL_LIBS])

# Man pages
case $host_os
in
	*bsd*) MANFMT=mdoc;;
	*) MANFMT=man;;
esac

AC_SUBST(MANFMT, [${MANFMT}])
AC_SUBST(DOCDIR, [${datadir}/doc/${PACKAGE}])

AC_CONFIG_FILES([Makefile System_SDL/Makefile])
AC_OUTPUT
