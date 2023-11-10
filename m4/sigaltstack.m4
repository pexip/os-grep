# sigaltstack.m4 serial 15
dnl Copyright (C) 2002-2022 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl Written by Bruno Haible and Eric Blake.

AC_DEFUN([SV_SIGALTSTACK],
[
  AC_REQUIRE([AC_PROG_CC])
  AC_REQUIRE([AC_CANONICAL_HOST])

  AC_CHECK_FUNCS_ONCE([sigaltstack setrlimit])

  if test "$ac_cv_func_sigaltstack" = yes; then
    AC_CHECK_TYPE([stack_t], ,
      [AC_DEFINE(stack_t, [struct sigaltstack],
         [Define to 'struct sigaltstack' if that's the type of the argument to sigaltstack])
      ],
      [
#include <signal.h>
#if HAVE_SYS_SIGNAL_H
# include <sys/signal.h>
#endif
      ])
  fi

  AC_CACHE_CHECK([for working sigaltstack], [sv_cv_sigaltstack], [
    if test "$ac_cv_func_sigaltstack" = yes; then
      case "$host_os" in
        macos* | darwin[[6-9]]* | darwin[[1-9]][[0-9]]*)
          # On MacOS X 10.2 or newer, just assume that if it compiles, it will
          # work. If we were to perform the real test, 1 Crash Report dialog
          # window would pop up.
          AC_LINK_IFELSE([
            AC_LANG_PROGRAM([[#include <signal.h>]],
              [[int x = SA_ONSTACK; stack_t ss; sigaltstack ((stack_t*)0, &ss);]])],
            [sv_cv_sigaltstack="guessing yes"],
            [sv_cv_sigaltstack=no])
          ;;
        *)
          AC_RUN_IFELSE([
            AC_LANG_SOURCE([[
#include <stdlib.h>
#include <signal.h>
#if HAVE_SYS_SIGNAL_H
# include <sys/signal.h>
#endif
#if HAVE_SETRLIMIT
# include <sys/types.h>
# include <sys/time.h>
# include <sys/resource.h>
#endif
void stackoverflow_handler (int sig)
{
  /* If we get here, the stack overflow was caught.  */
  exit (0);
}
volatile int * recurse_1 (volatile int n, volatile int *p)
{
  if (n >= 0)
    *recurse_1 (n + 1, p) += n;
  return p;
}
int recurse (volatile int n)
{
  int sum = 0;
  return *recurse_1 (n, &sum);
}
char mystack[2 * (1 << 24)];
int main ()
{
  stack_t altstack;
  struct sigaction action;
#if defined HAVE_SETRLIMIT && defined RLIMIT_STACK
  /* Before starting the endless recursion, try to be friendly to the user's
     machine.  On some Linux 2.2.x systems, there is no stack limit for user
     processes at all.  We don't want to kill such systems.  */
  struct rlimit rl;
  rl.rlim_cur = rl.rlim_max = 0x100000; /* 1 MB */
  setrlimit (RLIMIT_STACK, &rl);
#endif
  /* Install the alternate stack.  Use the midpoint of mystack, to guard
     against a buggy interpretation of ss_sp on IRIX.  */
#ifdef SIGSTKSZ
  if (sizeof mystack / 2 < SIGSTKSZ)
    exit (3);
#endif
  altstack.ss_sp = mystack + sizeof mystack / 2;
  altstack.ss_size = sizeof mystack / 2;
  altstack.ss_flags = 0; /* no SS_DISABLE */
  if (sigaltstack (&altstack, NULL) < 0)
    exit (1);
  /* Install the SIGSEGV handler.  */
  sigemptyset (&action.sa_mask);
  action.sa_handler = &stackoverflow_handler;
  action.sa_flags = SA_ONSTACK;
  sigaction (SIGSEGV, &action, (struct sigaction *) NULL);
  sigaction (SIGBUS, &action, (struct sigaction *) NULL);
  /* Provoke a stack overflow.  */
  recurse (0);
  exit (2);
}]])],
            [sv_cv_sigaltstack=yes],
            [sv_cv_sigaltstack=no],
            [
              dnl FIXME: Put in some more known values here.
              case "$host_os" in
                *)
                  AC_LINK_IFELSE([
                    AC_LANG_PROGRAM([[#include <signal.h>]],
                      [[int x = SA_ONSTACK; stack_t ss; sigaltstack ((stack_t*)0, &ss);]])],
                    [sv_cv_sigaltstack="guessing yes"],
                    [sv_cv_sigaltstack=no])
                  ;;
              esac
            ])
          ;;
      esac
    else
      sv_cv_sigaltstack=no
    fi
  ])
  if test "$sv_cv_sigaltstack" != no; then
    AC_DEFINE([HAVE_WORKING_SIGALTSTACK], [1],
      [Define if you have the sigaltstack() function and it works.])

    dnl The ss_sp field of a stack_t is, according to POSIX, the lowest address
    dnl of the memory block designated as an alternate stack. But IRIX 5.3
    dnl interprets it as the highest address!
    AC_CACHE_CHECK([for correct stack_t interpretation],
      [sv_cv_sigaltstack_low_base], [
      AC_RUN_IFELSE([
        AC_LANG_SOURCE([[
#include <stdlib.h>
#include <signal.h>
#if HAVE_SYS_SIGNAL_H
# include <sys/signal.h>
#endif
volatile char *stack_lower_bound;
volatile char *stack_upper_bound;
static void check_stack_location (volatile char *addr)
{
  if (addr >= stack_lower_bound && addr <= stack_upper_bound)
    exit (0);
  else
    exit (1);
}
static void stackoverflow_handler (int sig)
{
  char dummy;
  check_stack_location (&dummy);
}
char mystack[2 * (1 << 24)];
int main ()
{
  stack_t altstack;
  struct sigaction action;
  /* Install the alternate stack.  */
  altstack.ss_sp = mystack + sizeof mystack / 2;
  altstack.ss_size = sizeof mystack / 2;
  stack_lower_bound = (char *) altstack.ss_sp;
  stack_upper_bound = (char *) altstack.ss_sp + altstack.ss_size - 1;
  altstack.ss_flags = 0; /* no SS_DISABLE */
  if (sigaltstack (&altstack, NULL) < 0)
    exit (2);
  /* Install the SIGSEGV handler.  */
  sigemptyset (&action.sa_mask);
  action.sa_handler = &stackoverflow_handler;
  action.sa_flags = SA_ONSTACK;
  if (sigaction (SIGSEGV, &action, (struct sigaction *) NULL) < 0)
    exit(3);
  /* Provoke a SIGSEGV.  */
  raise (SIGSEGV);
  exit (3);
}]])],
      [sv_cv_sigaltstack_low_base=yes],
      [sv_cv_sigaltstack_low_base=no],
      [
        dnl FIXME: Put in some more known values here.
        case "$host_os" in
          irix5*) sv_cv_sigaltstack_low_base="no" ;;
          *)      sv_cv_sigaltstack_low_base="guessing yes" ;;
        esac
      ])
    ])
    if test "$sv_cv_sigaltstack_low_base" = no; then
      AC_DEFINE([SIGALTSTACK_SS_REVERSED], [1],
        [Define if sigaltstack() interprets the stack_t.ss_sp field incorrectly,
         as the highest address of the alternate stack range rather than as the
         lowest address.])
    fi
  fi
])