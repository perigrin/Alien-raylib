# Initialize and destroy an instance to the library
use Test2::Bundle::More;
use Test::Alien 0.05;
use Alien::raylib;

alien_ok 'Alien::raylib';
#my $xs = do { local $/; <DATA> };
#diag "Checking libvas version";
#xs_ok {xs => $xs, verbose => 1}, with_subtest {
    #my($module) = @_;

#};

done_testing;


