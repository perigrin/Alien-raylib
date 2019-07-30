# Initialize and destroy an instance to the library
use Test2::Bundle::More;
use Test::Alien 0.05;
use Alien::raylib;

skip_all "Debug this test" if $^O eq 'MSWin32';

alien_ok 'Alien::raylib';
my $xs = do { local $/; <DATA> };
diag "Trying out GetRandomValue via header";
xs_ok {xs => $xs, verbose => 1}, with_subtest {
    my $r = My::Raylib::xs_rand(42, 45);
    ok 42 <= $r && $r <= 45;

};

done_testing;

__DATA__

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <raylib.h>

int xs_rand(int min, int max)
{
    return GetRandomValue(min, max);
}

int __cpu_model;

MODULE = My::Raylib PACKAGE = My::Raylib

int xs_rand(min, max);
 int min;
 int max;


