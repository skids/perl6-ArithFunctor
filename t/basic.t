use v6;
use lib <blib/lib lib>;

use Test;

use ArithLFunctor;
use ArithRFunctor :Right;

plan 14;

class A does ArithLFunctor {
    has $.x = 42;
    has $.foo = "fee";

    method Numeric { $!x };

    multi method new (::?CLASS:D \SELF: $val) {
        SELF.clone(:x($val));
    }
    multi method new (::?CLASS:U: |c) {
        self.bless(|c)
    }
}

# class with right side enabled
class R does ArithLFunctor does ArithRFunctor {
    has $.x = 42;
    has $.foo = "fie";

    method Numeric { $!x };

    multi method new (::?CLASS:D \SELF: $val) {
        SELF.clone(:x($val));
    }
    multi method new (::?CLASS:U: |c) {
        self.bless(|c)
    }
}

# Mutator class
class M does ArithLFunctor {
    has $.x = 42;
    has $.foo = "foo";

    method Numeric { $!x };
    method Generic(\v) { $!x = v; self }

    multi method new (::?CLASS:D \SELF: $val) {
        SELF.clone(:x($val));
    }
    multi method new (::?CLASS:U: |c) {
        self.bless(|c)
    }
}

# broad class
class B does ArithLFunctor does ArithRFunctor {
    has $.x = 42;
    has $.foo = "fum";

    method Numeric { $!x };

    method broader($,$) { More };

    multi method new (::?CLASS:D \SELF: $val) {
        SELF.clone(:x($val));
    }
    multi method new (::?CLASS:U: |c) {
        self.bless(|c)
    }
}

is (A.new() + 1).foo, "fee", "Left Functor preserves class from left (+)";
is (A.new() + 1).x, 43, "Left Functor preserves field structure from left (+)";
is (1 + A.new()), 43, "Left Functor stays in core field on right (+)";
is (R.new() + 1).foo, "fie", "Right Functor preserves class from left (+)";
is (R.new() + 1).x, 43, "Right Functor preserves field structure from left (+)";
is (1 + R.new()).foo, "fie", "Right Functor preserves class from right (+)";
is (1 + R.new()).x, 43, "Right Functor preserves field structure from right (+)";
is (A.new + R.new).foo, "fee", "Left side wins broadness tie (L,R)";
is (M.new + A.new).foo, "foo", "Left side wins broadness tie (L,L)";
is (R.new + A.new).foo, "fie", "Left side wins broadness tie (R,L)";
is (A.new + B.new).foo, "fum", "broad Functor wins broadness from right";
my $m = M.new();
my $mw = $m.WHICH;
is ($m + 1).x, 43, "Mutating left functor operation";
is $m.x, 43, "Mutating left functor mutated";
is $m.WHICH, $mw, "Mutating left functor is same object";
