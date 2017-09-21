perl6-ArithFunctor
========

ArithLFunctor and ArithRFunctor

## WHAT

This role provides an easy way to create a class that survives
through arithmetic.  That is to say, you can do this:

use ArithLFunctor;
class A does ArithLFunctor {
      has $.i = 1;
      has $.otherstuff = "OHAI";
      method Numeric { $!i };
      method Generic($i) { self.new(:$i) };
}
(A.new * 2 + 1).otherstuff.say; # says OHAI
(A.new * 2 + 1).i.say;          # says 3

## HOW

It does this by adding new multiple-dispatch candidate functions
that intercept most math operations for any class bearing this role.
These functions call .Numeric to get a numeric value from your class,
then perform the operation, then call .Generic on the result of the
operation so you can shove the result back into your class.  Whether
you choose to construct a new object, or tweak a clone of the one
you started with, or even mutate the original value in place... Well,
that's all up to you.

By default, your class only survives from the left side of operators...
if you want also to take over expressions from the right side, see the
instructions in ArithRFunctor.pm6.  The two are kept separate because
ArithRFunctor is much less efficient.

Of course this means two such classes can fight over what gets
produced... see the ArithLFunctor pod for how to tweak that.

And of course, you can abuse this role to some pretty weird or
cerebral or possibly even useful things.

## WHY

Everyone was trying to subclass Int or somesuch.  Not that there's
not a reason to want to do that, and maybe it will even work smoothly
some day... but it isn't needed for this simple use case.

Despite being a very simple use case, it's actually very tedious
to make candidates for all those functions.  So this role does it
once, so users do not have to and so we don't end up with lots
of extra candidates clogging up the MMD system from inside modules.
This one set of candidates can serve classes with a variety of
needs for a fixed cost.

And finally, because putting this out there for experimental
use might help Perl6 devs find any lingering issues in the core
or come up with ideas for future development.
