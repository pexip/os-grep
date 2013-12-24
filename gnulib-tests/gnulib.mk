## DO NOT EDIT! GENERATED AUTOMATICALLY!
## Process this file with automake to produce Makefile.in.
# Copyright (C) 2002-2011 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.

AUTOMAKE_OPTIONS = 1.5 foreign subdir-objects

SUBDIRS = .
TESTS =
XFAIL_TESTS =
TESTS_ENVIRONMENT =
noinst_PROGRAMS =
check_PROGRAMS =
noinst_HEADERS =
noinst_LIBRARIES =
check_LIBRARIES = libtests.a
EXTRA_DIST =
BUILT_SOURCES =
SUFFIXES =
MOSTLYCLEANFILES = core *.stackdump
MOSTLYCLEANDIRS =
CLEANFILES =
DISTCLEANFILES =
MAINTAINERCLEANFILES =

AM_CPPFLAGS = \
  -D@gltests_WITNESS@=1 \
  -I. -I$(srcdir) \
  -I.. -I$(srcdir)/.. \
  -I../lib -I$(srcdir)/../lib

LDADD = libtests.a ../lib/libgreputils.a libtests.a $(LIBTESTS_LIBDEPS)

libtests_a_SOURCES =
libtests_a_LIBADD = $(gltests_LIBOBJS)
libtests_a_DEPENDENCIES = $(gltests_LIBOBJS)
EXTRA_libtests_a_SOURCES =
AM_LIBTOOLFLAGS = --preserve-dup-deps

TESTS_ENVIRONMENT += EXEEXT='@EXEEXT@' srcdir='$(srcdir)'

## begin gnulib module alloca-opt-tests

TESTS += test-alloca-opt
check_PROGRAMS += test-alloca-opt

EXTRA_DIST += test-alloca-opt.c

## end   gnulib module alloca-opt-tests

## begin gnulib module argmatch-tests

TESTS += test-argmatch
check_PROGRAMS += test-argmatch
test_argmatch_LDADD = $(LDADD) @LIBINTL@

EXTRA_DIST += test-argmatch.c macros.h

## end   gnulib module argmatch-tests

## begin gnulib module binary-io-tests

TESTS += test-binary-io.sh
check_PROGRAMS += test-binary-io

EXTRA_DIST += test-binary-io.sh test-binary-io.c macros.h

## end   gnulib module binary-io-tests

## begin gnulib module bitrotate-tests

TESTS += test-bitrotate
check_PROGRAMS += test-bitrotate
EXTRA_DIST += test-bitrotate.c macros.h

## end   gnulib module bitrotate-tests

## begin gnulib module btowc-tests

TESTS += test-btowc1.sh test-btowc2.sh
TESTS_ENVIRONMENT += LOCALE_FR='@LOCALE_FR@' LOCALE_FR_UTF8='@LOCALE_FR_UTF8@'
check_PROGRAMS += test-btowc

EXTRA_DIST += test-btowc1.sh test-btowc2.sh test-btowc.c signature.h macros.h

## end   gnulib module btowc-tests

## begin gnulib module c-ctype-tests

TESTS += test-c-ctype
check_PROGRAMS += test-c-ctype

EXTRA_DIST += test-c-ctype.c macros.h

## end   gnulib module c-ctype-tests

## begin gnulib module c-strcase-tests

TESTS += test-c-strcase.sh
TESTS_ENVIRONMENT += LOCALE_FR='@LOCALE_FR@' LOCALE_TR_UTF8='@LOCALE_TR_UTF8@'
check_PROGRAMS += test-c-strcasecmp test-c-strncasecmp
EXTRA_DIST += test-c-strcase.sh test-c-strcasecmp.c test-c-strncasecmp.c macros.h

## end   gnulib module c-strcase-tests

## begin gnulib module close


EXTRA_DIST += close.c

EXTRA_libtests_a_SOURCES += close.c

## end   gnulib module close

## begin gnulib module close-tests

TESTS += test-close
check_PROGRAMS += test-close
EXTRA_DIST += test-close.c signature.h macros.h

## end   gnulib module close-tests

## begin gnulib module ctype-tests

TESTS += test-ctype
check_PROGRAMS += test-ctype
EXTRA_DIST += test-ctype.c

## end   gnulib module ctype-tests

## begin gnulib module dirent-tests

TESTS += test-dirent
check_PROGRAMS += test-dirent
EXTRA_DIST += test-dirent.c

## end   gnulib module dirent-tests

## begin gnulib module dirname-tests

TESTS += test-dirname
check_PROGRAMS += test-dirname
test_dirname_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += test-dirname.c

## end   gnulib module dirname-tests

## begin gnulib module dup2


EXTRA_DIST += dup2.c

EXTRA_libtests_a_SOURCES += dup2.c

## end   gnulib module dup2

## begin gnulib module dup2-tests

TESTS += test-dup2
check_PROGRAMS += test-dup2
EXTRA_DIST += test-dup2.c signature.h macros.h

## end   gnulib module dup2-tests

## begin gnulib module environ-tests

TESTS += test-environ
check_PROGRAMS += test-environ

EXTRA_DIST += test-environ.c

## end   gnulib module environ-tests

## begin gnulib module errno-tests

TESTS += test-errno
check_PROGRAMS += test-errno

EXTRA_DIST += test-errno.c

## end   gnulib module errno-tests

## begin gnulib module exclude-tests

TESTS += \
 test-exclude1.sh\
 test-exclude2.sh\
 test-exclude3.sh\
 test-exclude4.sh\
 test-exclude5.sh\
 test-exclude6.sh\
 test-exclude7.sh\
 test-exclude8.sh

check_PROGRAMS += test-exclude
test_exclude_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += init.sh test-exclude.c test-exclude1.sh test-exclude2.sh test-exclude3.sh test-exclude4.sh test-exclude5.sh test-exclude6.sh test-exclude7.sh test-exclude8.sh

## end   gnulib module exclude-tests

## begin gnulib module fcntl-h-tests

TESTS += test-fcntl-h
check_PROGRAMS += test-fcntl-h
EXTRA_DIST += test-fcntl-h.c

## end   gnulib module fcntl-h-tests

## begin gnulib module fd-hook

libtests_a_SOURCES += fd-hook.c

EXTRA_DIST += fd-hook.h

## end   gnulib module fd-hook

## begin gnulib module fdopen


EXTRA_DIST += fdopen.c

EXTRA_libtests_a_SOURCES += fdopen.c

## end   gnulib module fdopen

## begin gnulib module fdopen-tests

TESTS += test-fdopen
check_PROGRAMS += test-fdopen
EXTRA_DIST += test-fdopen.c signature.h macros.h

## end   gnulib module fdopen-tests

## begin gnulib module fgetc-tests

TESTS += test-fgetc
check_PROGRAMS += test-fgetc
EXTRA_DIST += test-fgetc.c signature.h macros.h

## end   gnulib module fgetc-tests

## begin gnulib module float

BUILT_SOURCES += $(FLOAT_H)

# We need the following in order to create <float.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_FLOAT_H
float.h: float.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_FLOAT_H''@|$(NEXT_FLOAT_H)|g' \
	      -e 's|@''REPLACE_ITOLD''@|$(REPLACE_ITOLD)|g' \
	      < $(srcdir)/float.in.h; \
	} > $@-t && \
	mv $@-t $@
else
float.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += float.h float.h-t

EXTRA_DIST += float.c float.in.h itold.c

EXTRA_libtests_a_SOURCES += float.c itold.c

## end   gnulib module float

## begin gnulib module float-tests

TESTS += test-float
check_PROGRAMS += test-float
EXTRA_DIST += test-float.c macros.h

## end   gnulib module float-tests

## begin gnulib module fnmatch-tests

TESTS += test-fnmatch
check_PROGRAMS += test-fnmatch
EXTRA_DIST += test-fnmatch.c signature.h macros.h

## end   gnulib module fnmatch-tests

## begin gnulib module fpending-tests

TESTS += test-fpending.sh
check_PROGRAMS += test-fpending
MOSTLYCLEANFILES += test-fpending.t
EXTRA_DIST += test-fpending.c test-fpending.sh macros.h

## end   gnulib module fpending-tests

## begin gnulib module fpucw


EXTRA_DIST += fpucw.h

## end   gnulib module fpucw

## begin gnulib module fputc-tests

TESTS += test-fputc
check_PROGRAMS += test-fputc
EXTRA_DIST += test-fputc.c signature.h macros.h

## end   gnulib module fputc-tests

## begin gnulib module fread-tests

TESTS += test-fread
check_PROGRAMS += test-fread
EXTRA_DIST += test-fread.c signature.h macros.h

## end   gnulib module fread-tests

## begin gnulib module fstat-tests

TESTS += test-fstat
check_PROGRAMS += test-fstat
EXTRA_DIST += test-fstat.c signature.h macros.h

## end   gnulib module fstat-tests

## begin gnulib module fwrite-tests

TESTS += test-fwrite
check_PROGRAMS += test-fwrite
EXTRA_DIST += test-fwrite.c signature.h macros.h

## end   gnulib module fwrite-tests

## begin gnulib module getcwd-lgpl


EXTRA_DIST += getcwd-lgpl.c

EXTRA_libtests_a_SOURCES += getcwd-lgpl.c

## end   gnulib module getcwd-lgpl

## begin gnulib module getcwd-lgpl-tests

TESTS += test-getcwd-lgpl
check_PROGRAMS += test-getcwd-lgpl
test_getcwd_lgpl_LDADD = $(LDADD) $(LIBINTL)
EXTRA_DIST += test-getcwd-lgpl.c signature.h macros.h

## end   gnulib module getcwd-lgpl-tests

## begin gnulib module getopt-posix-tests

TESTS += test-getopt
check_PROGRAMS += test-getopt
test_getopt_LDADD = $(LDADD) $(LIBINTL)
EXTRA_DIST += macros.h signature.h test-getopt.c test-getopt.h test-getopt_long.h

## end   gnulib module getopt-posix-tests

## begin gnulib module hash-pjw

libtests_a_SOURCES += hash-pjw.h hash-pjw.c

## end   gnulib module hash-pjw

## begin gnulib module hash-tests

TESTS += test-hash
check_PROGRAMS += test-hash
EXTRA_DIST += test-hash.c macros.h

## end   gnulib module hash-tests

## begin gnulib module iconv-h-tests

TESTS += test-iconv-h
check_PROGRAMS += test-iconv-h
EXTRA_DIST += test-iconv-h.c

## end   gnulib module iconv-h-tests

## begin gnulib module iconv-tests

TESTS += test-iconv
check_PROGRAMS += test-iconv
test_iconv_LDADD = $(LDADD) @LIBICONV@

EXTRA_DIST += test-iconv.c signature.h macros.h

## end   gnulib module iconv-tests

## begin gnulib module ignore-value-tests

TESTS += test-ignore-value
check_PROGRAMS += test-ignore-value
EXTRA_DIST += test-ignore-value.c

## end   gnulib module ignore-value-tests

## begin gnulib module intprops-tests

TESTS += test-intprops
check_PROGRAMS += test-intprops
EXTRA_DIST += test-intprops.c macros.h

## end   gnulib module intprops-tests

## begin gnulib module inttostr

libtests_a_SOURCES += \
  imaxtostr.c \
  inttostr.c \
  offtostr.c \
  uinttostr.c \
  umaxtostr.c

EXTRA_DIST += anytostr.c inttostr.h

EXTRA_libtests_a_SOURCES += anytostr.c

## end   gnulib module inttostr

## begin gnulib module inttostr-tests

TESTS += test-inttostr
check_PROGRAMS += test-inttostr
EXTRA_DIST += macros.h test-inttostr.c

## end   gnulib module inttostr-tests

## begin gnulib module inttypes-tests

TESTS += test-inttypes
check_PROGRAMS += test-inttypes
EXTRA_DIST += test-inttypes.c

## end   gnulib module inttypes-tests

## begin gnulib module isblank-tests

TESTS += test-isblank
check_PROGRAMS += test-isblank
EXTRA_DIST += test-isblank.c signature.h macros.h

## end   gnulib module isblank-tests

## begin gnulib module iswblank-tests

TESTS += test-iswblank
check_PROGRAMS += test-iswblank
EXTRA_DIST += test-iswblank.c macros.h

## end   gnulib module iswblank-tests

## begin gnulib module langinfo-tests

TESTS += test-langinfo
check_PROGRAMS += test-langinfo
EXTRA_DIST += test-langinfo.c

## end   gnulib module langinfo-tests

## begin gnulib module locale-tests

TESTS += test-locale
check_PROGRAMS += test-locale
EXTRA_DIST += test-locale.c

## end   gnulib module locale-tests

## begin gnulib module localename

libtests_a_SOURCES += localename.c

EXTRA_DIST += localename.h

## end   gnulib module localename

## begin gnulib module localename-tests

TESTS += test-localename
check_PROGRAMS += test-localename
test_localename_LDADD = $(LDADD) @INTL_MACOSX_LIBS@ $(LIBTHREAD)

EXTRA_DIST += test-localename.c macros.h

## end   gnulib module localename-tests

## begin gnulib module lock

libtests_a_SOURCES += glthread/lock.h glthread/lock.c

## end   gnulib module lock

## begin gnulib module lock-tests

TESTS += test-lock
check_PROGRAMS += test-lock
test_lock_LDADD = $(LDADD) @LIBMULTITHREAD@ @YIELD_LIB@
EXTRA_DIST += test-lock.c

## end   gnulib module lock-tests

## begin gnulib module lseek-tests

TESTS += test-lseek.sh
check_PROGRAMS += test-lseek
EXTRA_DIST += test-lseek.c test-lseek.sh signature.h macros.h

## end   gnulib module lseek-tests

## begin gnulib module lstat


EXTRA_DIST += lstat.c

EXTRA_libtests_a_SOURCES += lstat.c

## end   gnulib module lstat

## begin gnulib module lstat-tests

TESTS += test-lstat
check_PROGRAMS += test-lstat
EXTRA_DIST += test-lstat.h test-lstat.c signature.h macros.h

## end   gnulib module lstat-tests

## begin gnulib module malloc-gnu-tests

TESTS += test-malloc-gnu
check_PROGRAMS += test-malloc-gnu
EXTRA_DIST += test-malloc-gnu.c

## end   gnulib module malloc-gnu-tests

## begin gnulib module malloca-tests

TESTS += test-malloca
check_PROGRAMS += test-malloca

EXTRA_DIST += test-malloca.c

## end   gnulib module malloca-tests

## begin gnulib module mbrtowc-tests

TESTS += \
  test-mbrtowc1.sh test-mbrtowc2.sh test-mbrtowc3.sh test-mbrtowc4.sh \
  test-mbrtowc-w32-1.sh test-mbrtowc-w32-2.sh test-mbrtowc-w32-3.sh \
  test-mbrtowc-w32-4.sh test-mbrtowc-w32-5.sh
TESTS_ENVIRONMENT += \
  LOCALE_FR='@LOCALE_FR@' \
  LOCALE_FR_UTF8='@LOCALE_FR_UTF8@' \
  LOCALE_JA='@LOCALE_JA@' \
  LOCALE_ZH_CN='@LOCALE_ZH_CN@'
check_PROGRAMS += test-mbrtowc test-mbrtowc-w32

EXTRA_DIST += test-mbrtowc1.sh test-mbrtowc2.sh test-mbrtowc3.sh test-mbrtowc4.sh test-mbrtowc.c test-mbrtowc-w32-1.sh test-mbrtowc-w32-2.sh test-mbrtowc-w32-3.sh test-mbrtowc-w32-4.sh test-mbrtowc-w32-5.sh test-mbrtowc-w32.c signature.h macros.h

## end   gnulib module mbrtowc-tests

## begin gnulib module mbscasecmp-tests

TESTS += test-mbscasecmp.sh
TESTS_ENVIRONMENT += LOCALE_TR_UTF8='@LOCALE_TR_UTF8@'
check_PROGRAMS += test-mbscasecmp

EXTRA_DIST += test-mbscasecmp.sh test-mbscasecmp.c macros.h

## end   gnulib module mbscasecmp-tests

## begin gnulib module mbsinit-tests

TESTS += test-mbsinit.sh
TESTS_ENVIRONMENT += LOCALE_FR_UTF8='@LOCALE_FR_UTF8@'
check_PROGRAMS += test-mbsinit

EXTRA_DIST += test-mbsinit.sh test-mbsinit.c signature.h macros.h

## end   gnulib module mbsinit-tests

## begin gnulib module mbsrtowcs-tests

TESTS += test-mbsrtowcs1.sh test-mbsrtowcs2.sh test-mbsrtowcs3.sh test-mbsrtowcs4.sh
TESTS_ENVIRONMENT += \
  LOCALE_FR='@LOCALE_FR@' \
  LOCALE_FR_UTF8='@LOCALE_FR_UTF8@' \
  LOCALE_JA='@LOCALE_JA@' \
  LOCALE_ZH_CN='@LOCALE_ZH_CN@'
check_PROGRAMS += test-mbsrtowcs

EXTRA_DIST += test-mbsrtowcs1.sh test-mbsrtowcs2.sh test-mbsrtowcs3.sh test-mbsrtowcs4.sh test-mbsrtowcs.c signature.h macros.h

## end   gnulib module mbsrtowcs-tests

## begin gnulib module mbsstr-tests

TESTS += test-mbsstr1 test-mbsstr2.sh test-mbsstr3.sh
TESTS_ENVIRONMENT += LOCALE_FR_UTF8='@LOCALE_FR_UTF8@' LOCALE_ZH_CN='@LOCALE_ZH_CN@'
check_PROGRAMS += test-mbsstr1 test-mbsstr2 test-mbsstr3

EXTRA_DIST += test-mbsstr1.c test-mbsstr2.sh test-mbsstr2.c test-mbsstr3.sh test-mbsstr3.c macros.h

## end   gnulib module mbsstr-tests

## begin gnulib module memchr-tests

TESTS += test-memchr
check_PROGRAMS += test-memchr
EXTRA_DIST += test-memchr.c zerosize-ptr.h signature.h macros.h

## end   gnulib module memchr-tests

## begin gnulib module nl_langinfo-tests

TESTS += test-nl_langinfo.sh
TESTS_ENVIRONMENT += LOCALE_FR='@LOCALE_FR@' LOCALE_FR_UTF8='@LOCALE_FR_UTF8@'
check_PROGRAMS += test-nl_langinfo
EXTRA_DIST += test-nl_langinfo.sh test-nl_langinfo.c signature.h macros.h

## end   gnulib module nl_langinfo-tests

## begin gnulib module open-tests

TESTS += test-open
check_PROGRAMS += test-open
EXTRA_DIST += test-open.h test-open.c signature.h macros.h

## end   gnulib module open-tests

## begin gnulib module pathmax-tests

TESTS += test-pathmax
check_PROGRAMS += test-pathmax
EXTRA_DIST += test-pathmax.c

## end   gnulib module pathmax-tests

## begin gnulib module putenv


EXTRA_DIST += putenv.c

EXTRA_libtests_a_SOURCES += putenv.c

## end   gnulib module putenv

## begin gnulib module quotearg-simple-tests

TESTS += test-quotearg-simple
check_PROGRAMS += test-quotearg-simple
test_quotearg_simple_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += test-quotearg-simple.c test-quotearg.h macros.h

## end   gnulib module quotearg-simple-tests

## begin gnulib module realloc-gnu-tests

TESTS += test-realloc-gnu
check_PROGRAMS += test-realloc-gnu
EXTRA_DIST += test-realloc-gnu.c

## end   gnulib module realloc-gnu-tests

## begin gnulib module setenv


EXTRA_DIST += setenv.c

EXTRA_libtests_a_SOURCES += setenv.c

## end   gnulib module setenv

## begin gnulib module setenv-tests

TESTS += test-setenv
check_PROGRAMS += test-setenv
EXTRA_DIST += test-setenv.c signature.h macros.h

## end   gnulib module setenv-tests

## begin gnulib module setlocale


EXTRA_DIST += setlocale.c

EXTRA_libtests_a_SOURCES += setlocale.c

## end   gnulib module setlocale

## begin gnulib module setlocale-tests

TESTS += test-setlocale1.sh test-setlocale2.sh
TESTS_ENVIRONMENT += \
  LOCALE_FR='@LOCALE_FR@' \
  LOCALE_FR_UTF8='@LOCALE_FR_UTF8@' \
  LOCALE_JA='@LOCALE_JA@' \
  LOCALE_ZH_CN='@LOCALE_ZH_CN@'
check_PROGRAMS += test-setlocale1 test-setlocale2
EXTRA_DIST += test-setlocale1.sh test-setlocale1.c test-setlocale2.sh test-setlocale2.c signature.h macros.h

## end   gnulib module setlocale-tests

## begin gnulib module size_max

libtests_a_SOURCES += size_max.h

## end   gnulib module size_max

## begin gnulib module snippet/_Noreturn

# Because this Makefile snippet defines a variable used by other
# gnulib Makefile snippets, it must be present in all Makefile.am that
# need it. This is ensured by the applicability 'all' defined above.

_NORETURN_H=$(top_srcdir)/build-aux/snippet/_Noreturn.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/_Noreturn.h

## end   gnulib module snippet/_Noreturn

## begin gnulib module snippet/arg-nonnull

# The BUILT_SOURCES created by this Makefile snippet are not used via #include
# statements but through direct file reference. Therefore this snippet must be
# present in all Makefile.am that need it. This is ensured by the applicability
# 'all' defined above.

BUILT_SOURCES += arg-nonnull.h
# The arg-nonnull.h that gets inserted into generated .h files is the same as
# build-aux/snippet/arg-nonnull.h, except that it has the copyright header cut
# off.
arg-nonnull.h: $(top_srcdir)/build-aux/snippet/arg-nonnull.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/GL_ARG_NONNULL/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/arg-nonnull.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += arg-nonnull.h arg-nonnull.h-t

ARG_NONNULL_H=arg-nonnull.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/arg-nonnull.h

## end   gnulib module snippet/arg-nonnull

## begin gnulib module snippet/c++defs

# The BUILT_SOURCES created by this Makefile snippet are not used via #include
# statements but through direct file reference. Therefore this snippet must be
# present in all Makefile.am that need it. This is ensured by the applicability
# 'all' defined above.

BUILT_SOURCES += c++defs.h
# The c++defs.h that gets inserted into generated .h files is the same as
# build-aux/snippet/c++defs.h, except that it has the copyright header cut off.
c++defs.h: $(top_srcdir)/build-aux/snippet/c++defs.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/_GL_CXXDEFS/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/c++defs.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += c++defs.h c++defs.h-t

CXXDEFS_H=c++defs.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/c++defs.h

## end   gnulib module snippet/c++defs

## begin gnulib module snippet/unused-parameter

# The BUILT_SOURCES created by this Makefile snippet are not used via #include
# statements but through direct file reference. Therefore this snippet must be
# present in all Makefile.am that need it. This is ensured by the applicability
# 'all' defined above.

BUILT_SOURCES += unused-parameter.h
# The unused-parameter.h that gets inserted into generated .h files is the same
# as build-aux/snippet/unused-parameter.h, except that it has the copyright
# header cut off.
unused-parameter.h: $(top_srcdir)/build-aux/snippet/unused-parameter.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/GL_UNUSED_PARAMETER/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/unused-parameter.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += unused-parameter.h unused-parameter.h-t

UNUSED_PARAMETER_H=unused-parameter.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/unused-parameter.h

## end   gnulib module snippet/unused-parameter

## begin gnulib module snippet/warn-on-use

BUILT_SOURCES += warn-on-use.h
# The warn-on-use.h that gets inserted into generated .h files is the same as
# build-aux/snippet/warn-on-use.h, except that it has the copyright header cut
# off.
warn-on-use.h: $(top_srcdir)/build-aux/snippet/warn-on-use.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/^.ifndef/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/warn-on-use.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += warn-on-use.h warn-on-use.h-t

WARN_ON_USE_H=warn-on-use.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/warn-on-use.h

## end   gnulib module snippet/warn-on-use

## begin gnulib module snprintf


EXTRA_DIST += snprintf.c

EXTRA_libtests_a_SOURCES += snprintf.c

## end   gnulib module snprintf

## begin gnulib module snprintf-tests

TESTS += test-snprintf
check_PROGRAMS += test-snprintf

EXTRA_DIST += test-snprintf.c signature.h macros.h

## end   gnulib module snprintf-tests

## begin gnulib module stat-tests

TESTS += test-stat
check_PROGRAMS += test-stat
test_stat_LDADD = $(LDADD) $(LIBINTL)
EXTRA_DIST += test-stat.h test-stat.c signature.h macros.h

## end   gnulib module stat-tests

## begin gnulib module stdbool-tests

TESTS += test-stdbool
check_PROGRAMS += test-stdbool
EXTRA_DIST += test-stdbool.c

## end   gnulib module stdbool-tests

## begin gnulib module stddef-tests

TESTS += test-stddef
check_PROGRAMS += test-stddef
EXTRA_DIST += test-stddef.c

## end   gnulib module stddef-tests

## begin gnulib module stdint-tests

TESTS += test-stdint
check_PROGRAMS += test-stdint
EXTRA_DIST += test-stdint.c

## end   gnulib module stdint-tests

## begin gnulib module stdio

BUILT_SOURCES += stdio.h

# We need the following in order to create <stdio.h> when the system
# doesn't have one that works with the given compiler.
stdio.h: stdio.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(ARG_NONNULL_H) $(WARN_ON_USE_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STDIO_H''@|$(NEXT_STDIO_H)|g' \
	      -e 's/@''GNULIB_DPRINTF''@/$(GNULIB_DPRINTF)/g' \
	      -e 's/@''GNULIB_FCLOSE''@/$(GNULIB_FCLOSE)/g' \
	      -e 's/@''GNULIB_FDOPEN''@/$(GNULIB_FDOPEN)/g' \
	      -e 's/@''GNULIB_FFLUSH''@/$(GNULIB_FFLUSH)/g' \
	      -e 's/@''GNULIB_FGETC''@/$(GNULIB_FGETC)/g' \
	      -e 's/@''GNULIB_FGETS''@/$(GNULIB_FGETS)/g' \
	      -e 's/@''GNULIB_FOPEN''@/$(GNULIB_FOPEN)/g' \
	      -e 's/@''GNULIB_FPRINTF''@/$(GNULIB_FPRINTF)/g' \
	      -e 's/@''GNULIB_FPRINTF_POSIX''@/$(GNULIB_FPRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_FPURGE''@/$(GNULIB_FPURGE)/g' \
	      -e 's/@''GNULIB_FPUTC''@/$(GNULIB_FPUTC)/g' \
	      -e 's/@''GNULIB_FPUTS''@/$(GNULIB_FPUTS)/g' \
	      -e 's/@''GNULIB_FREAD''@/$(GNULIB_FREAD)/g' \
	      -e 's/@''GNULIB_FREOPEN''@/$(GNULIB_FREOPEN)/g' \
	      -e 's/@''GNULIB_FSCANF''@/$(GNULIB_FSCANF)/g' \
	      -e 's/@''GNULIB_FSEEK''@/$(GNULIB_FSEEK)/g' \
	      -e 's/@''GNULIB_FSEEKO''@/$(GNULIB_FSEEKO)/g' \
	      -e 's/@''GNULIB_FTELL''@/$(GNULIB_FTELL)/g' \
	      -e 's/@''GNULIB_FTELLO''@/$(GNULIB_FTELLO)/g' \
	      -e 's/@''GNULIB_FWRITE''@/$(GNULIB_FWRITE)/g' \
	      -e 's/@''GNULIB_GETC''@/$(GNULIB_GETC)/g' \
	      -e 's/@''GNULIB_GETCHAR''@/$(GNULIB_GETCHAR)/g' \
	      -e 's/@''GNULIB_GETDELIM''@/$(GNULIB_GETDELIM)/g' \
	      -e 's/@''GNULIB_GETLINE''@/$(GNULIB_GETLINE)/g' \
	      -e 's/@''GNULIB_GETS''@/$(GNULIB_GETS)/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF''@/$(GNULIB_OBSTACK_PRINTF)/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF_POSIX''@/$(GNULIB_OBSTACK_PRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_PCLOSE''@/$(GNULIB_PCLOSE)/g' \
	      -e 's/@''GNULIB_PERROR''@/$(GNULIB_PERROR)/g' \
	      -e 's/@''GNULIB_POPEN''@/$(GNULIB_POPEN)/g' \
	      -e 's/@''GNULIB_PRINTF''@/$(GNULIB_PRINTF)/g' \
	      -e 's/@''GNULIB_PRINTF_POSIX''@/$(GNULIB_PRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_PUTC''@/$(GNULIB_PUTC)/g' \
	      -e 's/@''GNULIB_PUTCHAR''@/$(GNULIB_PUTCHAR)/g' \
	      -e 's/@''GNULIB_PUTS''@/$(GNULIB_PUTS)/g' \
	      -e 's/@''GNULIB_REMOVE''@/$(GNULIB_REMOVE)/g' \
	      -e 's/@''GNULIB_RENAME''@/$(GNULIB_RENAME)/g' \
	      -e 's/@''GNULIB_RENAMEAT''@/$(GNULIB_RENAMEAT)/g' \
	      -e 's/@''GNULIB_SCANF''@/$(GNULIB_SCANF)/g' \
	      -e 's/@''GNULIB_SNPRINTF''@/$(GNULIB_SNPRINTF)/g' \
	      -e 's/@''GNULIB_SPRINTF_POSIX''@/$(GNULIB_SPRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_STDIO_H_NONBLOCKING''@/$(GNULIB_STDIO_H_NONBLOCKING)/g' \
	      -e 's/@''GNULIB_STDIO_H_SIGPIPE''@/$(GNULIB_STDIO_H_SIGPIPE)/g' \
	      -e 's/@''GNULIB_TMPFILE''@/$(GNULIB_TMPFILE)/g' \
	      -e 's/@''GNULIB_VASPRINTF''@/$(GNULIB_VASPRINTF)/g' \
	      -e 's/@''GNULIB_VDPRINTF''@/$(GNULIB_VDPRINTF)/g' \
	      -e 's/@''GNULIB_VFPRINTF''@/$(GNULIB_VFPRINTF)/g' \
	      -e 's/@''GNULIB_VFPRINTF_POSIX''@/$(GNULIB_VFPRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_VFSCANF''@/$(GNULIB_VFSCANF)/g' \
	      -e 's/@''GNULIB_VSCANF''@/$(GNULIB_VSCANF)/g' \
	      -e 's/@''GNULIB_VPRINTF''@/$(GNULIB_VPRINTF)/g' \
	      -e 's/@''GNULIB_VPRINTF_POSIX''@/$(GNULIB_VPRINTF_POSIX)/g' \
	      -e 's/@''GNULIB_VSNPRINTF''@/$(GNULIB_VSNPRINTF)/g' \
	      -e 's/@''GNULIB_VSPRINTF_POSIX''@/$(GNULIB_VSPRINTF_POSIX)/g' \
	      < $(srcdir)/stdio.in.h | \
	  sed -e 's|@''HAVE_DECL_FPURGE''@|$(HAVE_DECL_FPURGE)|g' \
	      -e 's|@''HAVE_DECL_FSEEKO''@|$(HAVE_DECL_FSEEKO)|g' \
	      -e 's|@''HAVE_DECL_FTELLO''@|$(HAVE_DECL_FTELLO)|g' \
	      -e 's|@''HAVE_DECL_GETDELIM''@|$(HAVE_DECL_GETDELIM)|g' \
	      -e 's|@''HAVE_DECL_GETLINE''@|$(HAVE_DECL_GETLINE)|g' \
	      -e 's|@''HAVE_DECL_OBSTACK_PRINTF''@|$(HAVE_DECL_OBSTACK_PRINTF)|g' \
	      -e 's|@''HAVE_DECL_SNPRINTF''@|$(HAVE_DECL_SNPRINTF)|g' \
	      -e 's|@''HAVE_DECL_VSNPRINTF''@|$(HAVE_DECL_VSNPRINTF)|g' \
	      -e 's|@''HAVE_DPRINTF''@|$(HAVE_DPRINTF)|g' \
	      -e 's|@''HAVE_FSEEKO''@|$(HAVE_FSEEKO)|g' \
	      -e 's|@''HAVE_FTELLO''@|$(HAVE_FTELLO)|g' \
	      -e 's|@''HAVE_PCLOSE''@|$(HAVE_PCLOSE)|g' \
	      -e 's|@''HAVE_POPEN''@|$(HAVE_POPEN)|g' \
	      -e 's|@''HAVE_RENAMEAT''@|$(HAVE_RENAMEAT)|g' \
	      -e 's|@''HAVE_VASPRINTF''@|$(HAVE_VASPRINTF)|g' \
	      -e 's|@''HAVE_VDPRINTF''@|$(HAVE_VDPRINTF)|g' \
	      -e 's|@''REPLACE_DPRINTF''@|$(REPLACE_DPRINTF)|g' \
	      -e 's|@''REPLACE_FCLOSE''@|$(REPLACE_FCLOSE)|g' \
	      -e 's|@''REPLACE_FDOPEN''@|$(REPLACE_FDOPEN)|g' \
	      -e 's|@''REPLACE_FFLUSH''@|$(REPLACE_FFLUSH)|g' \
	      -e 's|@''REPLACE_FOPEN''@|$(REPLACE_FOPEN)|g' \
	      -e 's|@''REPLACE_FPRINTF''@|$(REPLACE_FPRINTF)|g' \
	      -e 's|@''REPLACE_FPURGE''@|$(REPLACE_FPURGE)|g' \
	      -e 's|@''REPLACE_FREOPEN''@|$(REPLACE_FREOPEN)|g' \
	      -e 's|@''REPLACE_FSEEK''@|$(REPLACE_FSEEK)|g' \
	      -e 's|@''REPLACE_FSEEKO''@|$(REPLACE_FSEEKO)|g' \
	      -e 's|@''REPLACE_FTELL''@|$(REPLACE_FTELL)|g' \
	      -e 's|@''REPLACE_FTELLO''@|$(REPLACE_FTELLO)|g' \
	      -e 's|@''REPLACE_GETDELIM''@|$(REPLACE_GETDELIM)|g' \
	      -e 's|@''REPLACE_GETLINE''@|$(REPLACE_GETLINE)|g' \
	      -e 's|@''REPLACE_OBSTACK_PRINTF''@|$(REPLACE_OBSTACK_PRINTF)|g' \
	      -e 's|@''REPLACE_PERROR''@|$(REPLACE_PERROR)|g' \
	      -e 's|@''REPLACE_POPEN''@|$(REPLACE_POPEN)|g' \
	      -e 's|@''REPLACE_PRINTF''@|$(REPLACE_PRINTF)|g' \
	      -e 's|@''REPLACE_REMOVE''@|$(REPLACE_REMOVE)|g' \
	      -e 's|@''REPLACE_RENAME''@|$(REPLACE_RENAME)|g' \
	      -e 's|@''REPLACE_RENAMEAT''@|$(REPLACE_RENAMEAT)|g' \
	      -e 's|@''REPLACE_SNPRINTF''@|$(REPLACE_SNPRINTF)|g' \
	      -e 's|@''REPLACE_SPRINTF''@|$(REPLACE_SPRINTF)|g' \
	      -e 's|@''REPLACE_STDIO_READ_FUNCS''@|$(REPLACE_STDIO_READ_FUNCS)|g' \
	      -e 's|@''REPLACE_STDIO_WRITE_FUNCS''@|$(REPLACE_STDIO_WRITE_FUNCS)|g' \
	      -e 's|@''REPLACE_TMPFILE''@|$(REPLACE_TMPFILE)|g' \
	      -e 's|@''REPLACE_VASPRINTF''@|$(REPLACE_VASPRINTF)|g' \
	      -e 's|@''REPLACE_VDPRINTF''@|$(REPLACE_VDPRINTF)|g' \
	      -e 's|@''REPLACE_VFPRINTF''@|$(REPLACE_VFPRINTF)|g' \
	      -e 's|@''REPLACE_VPRINTF''@|$(REPLACE_VPRINTF)|g' \
	      -e 's|@''REPLACE_VSNPRINTF''@|$(REPLACE_VSNPRINTF)|g' \
	      -e 's|@''REPLACE_VSPRINTF''@|$(REPLACE_VSPRINTF)|g' \
	      -e 's|@''ASM_SYMBOL_PREFIX''@|$(ASM_SYMBOL_PREFIX)|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)'; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += stdio.h stdio.h-t

EXTRA_DIST += stdio.in.h

## end   gnulib module stdio

## begin gnulib module stdio-tests

TESTS += test-stdio
check_PROGRAMS += test-stdio
EXTRA_DIST += test-stdio.c

## end   gnulib module stdio-tests

## begin gnulib module stdlib-tests

TESTS += test-stdlib
check_PROGRAMS += test-stdlib
EXTRA_DIST += test-stdlib.c test-sys_wait.h

## end   gnulib module stdlib-tests

## begin gnulib module strerror-tests

TESTS += test-strerror
check_PROGRAMS += test-strerror
EXTRA_DIST += test-strerror.c signature.h macros.h

## end   gnulib module strerror-tests

## begin gnulib module striconv-tests

TESTS += test-striconv
check_PROGRAMS += test-striconv
test_striconv_LDADD = $(LDADD) @LIBICONV@

EXTRA_DIST += test-striconv.c macros.h

## end   gnulib module striconv-tests

## begin gnulib module string-tests

TESTS += test-string
check_PROGRAMS += test-string
EXTRA_DIST += test-string.c

## end   gnulib module string-tests

## begin gnulib module strings-tests

TESTS += test-strings
check_PROGRAMS += test-strings
EXTRA_DIST += test-strings.c

## end   gnulib module strings-tests

## begin gnulib module strnlen-tests

TESTS += test-strnlen
check_PROGRAMS += test-strnlen
EXTRA_DIST += test-strnlen.c zerosize-ptr.h signature.h macros.h

## end   gnulib module strnlen-tests

## begin gnulib module strtoumax-tests

TESTS += test-strtoumax
check_PROGRAMS += test-strtoumax
EXTRA_DIST += test-strtoumax.c signature.h macros.h

## end   gnulib module strtoumax-tests

## begin gnulib module symlink


EXTRA_DIST += symlink.c

EXTRA_libtests_a_SOURCES += symlink.c

## end   gnulib module symlink

## begin gnulib module symlink-tests

TESTS += test-symlink
check_PROGRAMS += test-symlink
EXTRA_DIST += test-symlink.h test-symlink.c signature.h macros.h

## end   gnulib module symlink-tests

## begin gnulib module sys_stat-tests

TESTS += test-sys_stat
check_PROGRAMS += test-sys_stat
EXTRA_DIST += test-sys_stat.c

## end   gnulib module sys_stat-tests

## begin gnulib module sys_types-tests

TESTS += test-sys_types
check_PROGRAMS += test-sys_types
EXTRA_DIST += test-sys_types.c

## end   gnulib module sys_types-tests

## begin gnulib module thread

libtests_a_SOURCES += glthread/thread.h glthread/thread.c

## end   gnulib module thread

## begin gnulib module thread-tests

TESTS += test-thread_self test-thread_create
check_PROGRAMS += test-thread_self test-thread_create
test_thread_self_LDADD = $(LDADD) @LIBTHREAD@
test_thread_create_LDADD = $(LDADD) @LIBMULTITHREAD@
EXTRA_DIST += test-thread_self.c test-thread_create.c macros.h

## end   gnulib module thread-tests

## begin gnulib module threadlib

libtests_a_SOURCES += glthread/threadlib.c

EXTRA_DIST += $(top_srcdir)/build-aux/config.rpath

## end   gnulib module threadlib

## begin gnulib module time-tests

TESTS += test-time
check_PROGRAMS += test-time
EXTRA_DIST += test-time.c

## end   gnulib module time-tests

## begin gnulib module unistd-tests

TESTS += test-unistd
check_PROGRAMS += test-unistd
EXTRA_DIST += test-unistd.c

## end   gnulib module unistd-tests

## begin gnulib module unistr/u8-mbtoucr-tests

TESTS += test-u8-mbtoucr
check_PROGRAMS += test-u8-mbtoucr
test_u8_mbtoucr_SOURCES = unistr/test-u8-mbtoucr.c
test_u8_mbtoucr_LDADD = $(LDADD) $(LIBUNISTRING)
EXTRA_DIST += unistr/test-u8-mbtoucr.c macros.h

## end   gnulib module unistr/u8-mbtoucr-tests

## begin gnulib module unistr/u8-uctomb-tests

TESTS += test-u8-uctomb
check_PROGRAMS += test-u8-uctomb
test_u8_uctomb_SOURCES = unistr/test-u8-uctomb.c
test_u8_uctomb_LDADD = $(LDADD) $(LIBUNISTRING)
EXTRA_DIST += unistr/test-u8-uctomb.c macros.h

## end   gnulib module unistr/u8-uctomb-tests

## begin gnulib module uniwidth/width-tests

TESTS += test-uc_width uniwidth/test-uc_width2.sh
check_PROGRAMS += test-uc_width test-uc_width2
test_uc_width_SOURCES = uniwidth/test-uc_width.c
test_uc_width_LDADD = $(LDADD) $(LIBUNISTRING)
test_uc_width2_SOURCES = uniwidth/test-uc_width2.c
test_uc_width2_LDADD = $(LDADD) $(LIBUNISTRING)
EXTRA_DIST += uniwidth/test-uc_width.c uniwidth/test-uc_width2.c uniwidth/test-uc_width2.sh macros.h

## end   gnulib module uniwidth/width-tests

## begin gnulib module unsetenv


EXTRA_DIST += unsetenv.c

EXTRA_libtests_a_SOURCES += unsetenv.c

## end   gnulib module unsetenv

## begin gnulib module unsetenv-tests

TESTS += test-unsetenv
check_PROGRAMS += test-unsetenv
EXTRA_DIST += test-unsetenv.c signature.h macros.h

## end   gnulib module unsetenv-tests

## begin gnulib module update-copyright-tests

TESTS += test-update-copyright.sh
TESTS_ENVIRONMENT += abs_aux_dir='$(abs_aux_dir)'
EXTRA_DIST += test-update-copyright.sh

## end   gnulib module update-copyright-tests

## begin gnulib module vasnprintf


EXTRA_DIST += asnprintf.c float+.h printf-args.c printf-args.h printf-parse.c printf-parse.h vasnprintf.c vasnprintf.h

EXTRA_libtests_a_SOURCES += asnprintf.c printf-args.c printf-parse.c vasnprintf.c

## end   gnulib module vasnprintf

## begin gnulib module vasnprintf-tests

TESTS += test-vasnprintf
check_PROGRAMS += test-vasnprintf

EXTRA_DIST += test-vasnprintf.c macros.h

## end   gnulib module vasnprintf-tests

## begin gnulib module vc-list-files-tests

TESTS += test-vc-list-files-git.sh
TESTS += test-vc-list-files-cvs.sh
TESTS_ENVIRONMENT += abs_aux_dir='$(abs_aux_dir)'
EXTRA_DIST += test-vc-list-files-git.sh test-vc-list-files-cvs.sh init.sh

## end   gnulib module vc-list-files-tests

## begin gnulib module verify-tests

TESTS_ENVIRONMENT += MAKE='$(MAKE)'
TESTS += test-verify test-verify.sh
check_PROGRAMS += test-verify
EXTRA_DIST += test-verify.c test-verify.sh init.sh

## end   gnulib module verify-tests

## begin gnulib module version-etc-tests

TESTS += test-version-etc.sh
check_PROGRAMS += test-version-etc
test_version_etc_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += test-version-etc.c test-version-etc.sh

## end   gnulib module version-etc-tests

## begin gnulib module wchar-tests

TESTS += test-wchar
check_PROGRAMS += test-wchar
EXTRA_DIST += test-wchar.c

## end   gnulib module wchar-tests

## begin gnulib module wcrtomb-tests

TESTS += \
  test-wcrtomb.sh \
  test-wcrtomb-w32-1.sh test-wcrtomb-w32-2.sh test-wcrtomb-w32-3.sh \
  test-wcrtomb-w32-4.sh test-wcrtomb-w32-5.sh
TESTS_ENVIRONMENT += \
  LOCALE_FR='@LOCALE_FR@' \
  LOCALE_FR_UTF8='@LOCALE_FR_UTF8@' \
  LOCALE_JA='@LOCALE_JA@' \
  LOCALE_ZH_CN='@LOCALE_ZH_CN@'
check_PROGRAMS += test-wcrtomb test-wcrtomb-w32

EXTRA_DIST += test-wcrtomb.sh test-wcrtomb.c test-wcrtomb-w32-1.sh test-wcrtomb-w32-2.sh test-wcrtomb-w32-3.sh test-wcrtomb-w32-4.sh test-wcrtomb-w32-5.sh test-wcrtomb-w32.c signature.h macros.h

## end   gnulib module wcrtomb-tests

## begin gnulib module wctype-h-tests

TESTS += test-wctype-h
check_PROGRAMS += test-wctype-h
EXTRA_DIST += test-wctype-h.c macros.h

## end   gnulib module wctype-h-tests

## begin gnulib module wcwidth-tests

TESTS += test-wcwidth
check_PROGRAMS += test-wcwidth

EXTRA_DIST += test-wcwidth.c signature.h macros.h

## end   gnulib module wcwidth-tests

## begin gnulib module xalloc-die-tests

TESTS += test-xalloc-die.sh
check_PROGRAMS += test-xalloc-die
test_xalloc_die_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += test-xalloc-die.c test-xalloc-die.sh init.sh

## end   gnulib module xalloc-die-tests

## begin gnulib module xsize

libtests_a_SOURCES += xsize.h

## end   gnulib module xsize

## begin gnulib module xstrtol-tests

TESTS += test-xstrtol.sh
check_PROGRAMS += test-xstrtol test-xstrtoul
test_xstrtol_LDADD = $(LDADD) @LIBINTL@
test_xstrtoul_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += init.sh test-xstrtol.c test-xstrtoul.c test-xstrtol.sh

## end   gnulib module xstrtol-tests

## begin gnulib module xstrtoumax-tests

TESTS += test-xstrtoumax.sh
check_PROGRAMS += test-xstrtoumax
test_xstrtoumax_LDADD = $(LDADD) @LIBINTL@
EXTRA_DIST += init.sh test-xstrtoumax.c test-xstrtoumax.sh

## end   gnulib module xstrtoumax-tests

## begin gnulib module yield

libtests_a_SOURCES += glthread/yield.h

## end   gnulib module yield

# Clean up after Solaris cc.
clean-local:
	rm -rf SunWS_cache

mostlyclean-local: mostlyclean-generic
	@for dir in '' $(MOSTLYCLEANDIRS); do \
	  if test -n "$$dir" && test -d $$dir; then \
	    echo "rmdir $$dir"; rmdir $$dir; \
	  fi; \
	done; \
	:
