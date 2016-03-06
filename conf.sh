set -x
./configure --prefix=/usr --sysconfdir=/etc/rrdtool \
            --disable-perl --disable-ruby

# `configure' configures rrdtool 1.5.999 to adapt to many kinds of systems.
#
# Usage: ./configure [OPTION]... [VAR=VALUE]...
#
# To assign environment variables (e.g., CC, CFLAGS...), specify them as
# VAR=VALUE.  See below for descriptions of some of the useful variables.
#
# Defaults for the options are specified in brackets.
#
# Configuration:
#   -h, --help              display this help and exit
#       --help=short        display options specific to this package
#       --help=recursive    display the short help of all the included packages
#   -V, --version           display version information and exit
#   -q, --quiet, --silent   do not print `checking ...' messages
#       --cache-file=FILE   cache test results in FILE [disabled]
#   -C, --config-cache      alias for `--cache-file=config.cache'
#   -n, --no-create         do not create output files
#       --srcdir=DIR        find the sources in DIR [configure dir or `..']
#
# Installation directories:
#   --prefix=PREFIX         install architecture-independent files in PREFIX
#                           [/opt/rrdtool-1.5.999]
#   --exec-prefix=EPREFIX   install architecture-dependent files in EPREFIX
#                           [PREFIX]
#
# By default, `make install' will install all the files in
# `/opt/rrdtool-1.5.999/bin', `/opt/rrdtool-1.5.999/lib' etc.  You can specify
# an installation prefix other than `/opt/rrdtool-1.5.999' using `--prefix',
# for instance `--prefix=$HOME'.
#
# For better control, use the options below.
#
# Fine tuning of the installation directories:
#   --bindir=DIR            user executables [EPREFIX/bin]
#   --sbindir=DIR           system admin executables [EPREFIX/sbin]
#   --libexecdir=DIR        program executables [EPREFIX/libexec]
#   --sysconfdir=DIR        read-only single-machine data [PREFIX/etc]
#   --sharedstatedir=DIR    modifiable architecture-independent data [PREFIX/com]
#   --localstatedir=DIR     modifiable single-machine data [PREFIX/var]
#   --libdir=DIR            object code libraries [EPREFIX/lib]
#   --includedir=DIR        C header files [PREFIX/include]
#   --oldincludedir=DIR     C header files for non-gcc [/usr/include]
#   --datarootdir=DIR       read-only arch.-independent data root [PREFIX/share]
#   --datadir=DIR           read-only architecture-independent data [DATAROOTDIR]
#   --infodir=DIR           info documentation [DATAROOTDIR/info]
#   --localedir=DIR         locale-dependent data [DATAROOTDIR/locale]
#   --mandir=DIR            man documentation [DATAROOTDIR/man]
#   --docdir=DIR            documentation root [DATAROOTDIR/doc/rrdtool]
#   --htmldir=DIR           html documentation [DOCDIR]
#   --dvidir=DIR            dvi documentation [DOCDIR]
#   --pdfdir=DIR            pdf documentation [DOCDIR]
#   --psdir=DIR             ps documentation [DOCDIR]
#
# Program names:
#   --program-prefix=PREFIX            prepend PREFIX to installed program names
#   --program-suffix=SUFFIX            append SUFFIX to installed program names
#   --program-transform-name=PROGRAM   run sed PROGRAM on installed program names
#
# System types:
#   --build=BUILD     configure for building on BUILD [guessed]
#   --host=HOST       cross-compile to build programs to run on HOST [BUILD]
#   --target=TARGET   configure for building compilers for TARGET [HOST]
#
# Optional Features:
#   --disable-option-checking  ignore unrecognized --enable/--with options
#   --disable-FEATURE       do not include FEATURE (same as --enable-FEATURE=no)
#   --enable-FEATURE[=ARG]  include FEATURE [ARG=yes]
#   --enable-dependency-tracking
#                           do not reject slow dependency extractors
#   --disable-dependency-tracking
#                           speeds up one-time build
#   --enable-silent-rules   less verbose build output (undo: "make V=1")
#   --disable-silent-rules  verbose build output (undo: "make V=0")
#   --enable-maintainer-mode
#                           enable make rules and dependencies not useful (and
#                           sometimes confusing) to the casual installer
#   --disable-docs          disable building documentation
#   --disable-examples      disable building of examples
#   --disable-rrdcached     disable building of rrdcached
#   --disable-rrdcgi        disable building of rrdcgi
#   --disable-rrd_graph     disable all rrd_graph functions
#   --disable-rrd_restore   disable rrd_restore XML import functions
#   --disable-mmap          disable mmap in rrd_update, use seek+write instead
#   --disable-pthread       disable multithread support
#   --disable-flock         disable file locking
#   --enable-static-programs
#                           Build static programs
#   --enable-shared[=PKGS]  build shared libraries [default=yes]
#   --enable-static[=PKGS]  build static libraries [default=yes]
#   --enable-fast-install[=PKGS]
#                           optimize for fast installation [default=yes]
#   --disable-libtool-lock  avoid locking (might break parallel builds)
#   --disable-nls           do not use Native Language Support
#   --disable-rpath         do not hardcode runtime library paths
#   --disable-libdbi        do not build in support for libdbi
#   --disable-librados      do not build in support for librados
#   --disable-libwrap       do not build in support for libwrap (tcp wrapper)
#   --disable-perl          do not build the perl modules
#   --enable-perl-site-install
#                           by default the rrdtool perl modules are installed
#                           together with rrdtool in $prefix/lib/perl. You have
#                           to put a 'use lib qw($prefix/lib/perl)' into your
#                           scripts when you want to use them. When you set this
#                           option the perl modules will get installed wherever
#                           your perl setup thinks it is best.
#   --disable-ruby          do not build the ruby modules
#   --enable-ruby-site-install
#                           by default the rrdtool ruby modules are installed
#                           together with rrdtool in $prefix/lib/ruby. You have
#                           to add $prefix/lib/ruby/$ruby_version/$sitearch to
#                           your $: variable for ruby to find the RRD.so file.
#   --disable-lua           do not build the lua modules
#   --enable-lua-site-install
#                           by default the lua module is installed together with
#                           rrdtool in $prefix/lib/lua/$lua_version. You have to
#                           add $prefix/lib/lua/$lua_version/?.so to
#                           package.cpath for lua to find 'rrd.so'. For lua 5.0
#                           you may also need to change LUA_PATH to the same
#                           dir, to require 'compat-5.1'. When you set this
#                           option the lua modules will get installed wherever
#                           your Lua setup thinks it is best. WARNING: if you
#                           set this option, system lua modules compat-5.1.lua
#                           and rrd.so, if any, may be overwritten.
#   --disable-tcl           do not build the tcl modules
#   --enable-tcl-site       install the tcl extension in the tcl tree
#   --disable-python        do not build the python modules
#
# Optional Packages:
#   --with-PACKAGE[=ARG]    use PACKAGE [ARG=yes]
#   --without-PACKAGE       do not use PACKAGE (same as --with-PACKAGE=no)
#   --with-rrd-default-font=OPTIONS  set the full path to your default font.
#   --with-pic[=PKGS]       try to use only PIC/non-PIC objects [default=use
#                           both]
#   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
#   --with-sysroot=DIR Search for dependent libraries within DIR
#                         (or the compiler's sysroot if not specified).
#   --with-gnu-ld           assume the C compiler uses GNU ld default=no
#   --with-libiconv-prefix[=DIR]  search for libiconv in DIR/include and DIR/lib
#   --without-libiconv-prefix     don't search for libiconv in includedir and libdir
#   --with-libintl-prefix[=DIR]  search for libintl in DIR/include and DIR/lib
#   --without-libintl-prefix     don't search for libintl in includedir and libdir
#   --with-perl-options=OPTIONS  options to pass on command-line when
#                           generating Makefile from Makefile.PL. If you set this
#                           option, interesting things may happen unless you know
#                           what you are doing!
#   --with-ruby-options=OPTIONS  options to pass on command-line when
#                           generating Makefile from extconf.rb. If you set this
#                           option, interesting things may happen unless you know
#                           what you are doing!
#   --with-tcllib=DIR       location of the tclConfig.sh
#   --with-systemdsystemunitdir=DIR
#                           Directory for systemd service files
#
# Some influential environment variables:
#   CC          C compiler command
#   CFLAGS      C compiler flags
#   LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
#               nonstandard directory <lib dir>
#   LIBS        libraries to pass to the linker, e.g. -l<library>
#   CPPFLAGS    (Objective) C/C++ preprocessor flags, e.g. -I<include dir> if
#               you have headers in a nonstandard directory <include dir>
#   CPP         C preprocessor
#   RRDGRAPH_YLEGEND_ANGLE
#               Vertical label angle: -90.0 (default) or 90.0
#   PERLCC      C compiler for Perl modules
#   PERLCCFLAGS CC flags for Perl modules
#   PERLLD      Linker for Perl modules
#   PERLLDFLAGS LD flags for Perl modules
#   PYTHON      the Python interpreter
#   NROFF       path to the local nroff version
#   TROFF       path to the local troff version
#   RRDDOCDIR   [DATADIR/doc/PACKAGE-VERSION] Documentation directory
#   PKG_CONFIG  path to pkg-config utility
#   PKG_CONFIG_PATH
#               directories to add to pkg-config's search path
#   PKG_CONFIG_LIBDIR
#               path overriding pkg-config's built-in search path
#
# Use these variables to override the choices made by `configure' or to help
# it to find libraries and programs with nonstandard names/locations.
#
# Report bugs to the package provider.
