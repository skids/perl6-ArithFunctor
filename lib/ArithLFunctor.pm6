#| Adding ArithLFunctor to a class allows it to gain type persistence
#| across arithmetic.  For example, you can have a class instance,
#| add an Int to it with "+", and the result will be an instance of
#| your class, rather than an Int.
#|
#| Users of this role should *not* be a doer of Numeric or Real
#| and should *not* be a subclass of Int/Rat/Num/etc.
#|
#| You are encouraged to parameterize ArithLFunctor with a category
#| which other users of this role can use to decide which
#| class prevails if they encounter each other.
#|
#| (If you want a proper math "functor" you'd only allow operations
#| between instances of your own classes... which you can do with this
#| role, but that's boring.)
role ArithLFunctor[$category = "none"] {
    method category { $category }

    #| Classes using this role must provide a .Numeric
    #| method which produces an instance(value) of the narrowest
    #| core type which can adequately represent the numification
    #| of an instance of the class for aritmetic purposes.
    #| So it should produce an Int, Rat, FatRat, Num, Complex, etc.
    method Numeric {...}

    #| You probably want to overload this.  It does the opposite
    #| of Numeric, re-assimilating a core arithmetic type into
    #| your class... or even, into the original instance if you
    #| make it a mutator.  You can also decide that some core
    #| types were broader and just return any core values that
    #| cannot fit in your field.  Or return a Failure...
    method Generic (::?CLASS \SELF: \b) {
        SELF.new(b)
    }

    #| This method decides whether your class is "broader"
    #| than another value which also does ArithLFunctor.
    #| If your class returns something positive, like More,
    #| then your .Generic will always be called, unless it
    #| is on the right side from a class that also returned
    #| More.  Otherwise the class returning the least
    #| negative value will have its .Generic called.  Ties
    #| break to the left-hand side.
    method broader (\SELF: \b, \v) { Same }

    #| This is just here to satisfy the ArithRFunctor role
    method ArithRFunctorSentry { True }

    my sub generic (\a, \b, \v) {
        my $ab;
        if ($ab = a.broader(b, v)) > Same {
            a.Generic(v);
        }
        elsif b.broader(a, v) > $ab {
            b.Generic(v);
        }
        else {
            a.Generic(v);
       }
    }

# The rest is all exports
my multi sub infix:<+> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric + b);
}
my multi sub infix:<+> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric + b.Numeric);
}
my multi sub infix:<-> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric - b);
}
my multi sub infix:<-> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric - b.Numeric);
}
my multi sub infix:<*> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric * b);
}
my multi sub infix:<*> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric * b.Numeric);
}
my multi sub infix:</> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric / b);
}
my multi sub infix:</> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric / b.Numeric);
}
my multi sub infix:<div> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric div b);
}
my multi sub infix:<div> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric div b.Numeric);
}
my multi sub infix:<%> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric % b);
}
my multi sub infix:<%> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric % b.Numeric);
}
my multi sub infix:<%%> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric % b);
}
my multi sub infix:<%%> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric % b.Numeric);
}
my multi sub infix:<**> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric ** b);
}
my multi sub infix:<**> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric ** b.Numeric);
}
my multi sub infix:<lcm> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric lcm b);
}
my multi sub infix:<lcm> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric lcm b.Numeric);
}
my multi sub infix:<gcd> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric gcd b);
}
my multi sub infix:<gcd> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric gcd b.Numeric);
}
my multi sub infix:<+&> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric +& b);
}
my multi sub infix:<+&> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric +& b.Numeric);
}
my multi sub infix:<+|> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric +| b);
}
my multi sub infix:<+|> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric +| b.Numeric);
}
my multi sub infix:<+^> (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric +^ b);
}
my multi sub infix:<+^> (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric +^ b.Numeric);
}
my multi sub infix:«+>» (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric +> b);
}
my multi sub infix:«+>» (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric +> b.Numeric);
}
my multi sub infix:«+<» (ArithLFunctor \a, \b) is export {
      a.Generic(a.Numeric +< b);
}
my multi sub infix:«+<» (ArithLFunctor \a, ArithLFunctor \b) is export {
      generic(a, b, a.Numeric +< b.Numeric);
}

my multi sub prefix:<+>(ArithLFunctor \a) is export { a.Generic(+a.Numeric) }
my multi sub prefix:<->(ArithLFunctor \a) is export { a.Generic(-a.Numeric) }
my multi sub prefix:<+^>(ArithLFunctor \a) is export { a.Generic(+^a.Numeric) }
my multi sub prefix:<-->(ArithLFunctor $a is rw) is export { $a .= Recoup($a.Numeric - 1) }
my multi sub prefix:<++>(ArithLFunctor $a is rw) is export { $a .= Recoup($a.Numeric + 1) }
my multi sub postfix:<-->(ArithLFunctor $a is rw) is export { my $b = $a.clone; $a .= Recoup($a.Numeric - 1); $b; }
my multi sub postfix:<++>(ArithLFunctor $a is rw) is export { my $b = $a.clone; $a .= Recoup($a.Numeric + 1); $b; }
my multi sub postfix:<i>(ArithLFunctor \a --> Complex:D) { a.Generic(a.Numeric * Complex.new(0e0, 1e0)) }

my multi sub abs(ArithLFunctor \a) is export { a.Generic(abs a.Numeric) }
my multi sub sign(ArithLFunctor \a) is export { a.Generic(a.Numeric.sign) }
my multi sub log(ArithLFunctor \a) is export { a.Generic(a.Numeric.log) }
my multi sub log(ArithLFunctor \a, \base) is export { a.Generic(a.Numeric.log(base)) }
my multi sub log10(ArithLFunctor \a) is export { a.Generic(a.Numeric.log(10e0)) }
my multi sub exp(ArithLFunctor \a) is export { a.Generic(a.Numeric.exp) }
my multi sub exp(ArithLFunctor \a, \base) is export { a.Generic(a.Numeric.exp(base)) }
my multi sub sin(ArithLFunctor \a) is export { a.Generic(a.Numeric.sin) }
my multi sub asin(ArithLFunctor \a) is export { a.Generic(a.Numeric.asin) }
my multi sub cos(ArithLFunctor \a) is export { a.Generic(a.Numeric.cos) }
my multi sub acos(ArithLFunctor \a) is export { a.Generic(a.Numeric.acos) }
my multi sub tan(ArithLFunctor \a) is export { a.Generic(a.Numeric.tan) }
my multi sub atan(ArithLFunctor \a) is export { a.Generic(a.Numeric.atan) }
my multi sub sec(ArithLFunctor \a) is export { a.Generic(a.Numeric.sec) }
my multi sub asec(ArithLFunctor \a) is export { a.Generic(a.Numeric.asec) }
my multi sub cosec(ArithLFunctor \a) is export { a.Generic(a.Numeric.cosec) }
my multi sub acosec(ArithLFunctor \a) is export { a.Generic(a.Numeric.acosec) }
my multi sub cotan(ArithLFunctor \a) is export { a.Generic(a.Numeric.cotan) }
my multi sub acotan(ArithLFunctor \a) is export { a.Generic(a.Numeric.acotan) }
my multi sub sinh(ArithLFunctor \a) is export { a.Generic(a.Numeric.sinh) }
my multi sub asinh(ArithLFunctor \a) is export { a.Generic(a.Numeric.asinh) }
my multi sub cosh(ArithLFunctor \a) is export { a.Generic(a.Numeric.cosh) }
my multi sub acosh(ArithLFunctor \a) is export { a.Generic(a.Numeric.acosh) }
my multi sub tanh(ArithLFunctor \a) is export { a.Generic(a.Numeric.tanh) }
my multi sub atanh(ArithLFunctor \a) is export { a.Generic(a.Numeric.atanh) }
my multi sub sech(ArithLFunctor \a) is export { a.Generic(a.Numeric.sech) }
my multi sub cosech(ArithLFunctor \a) is export { a.Generic(a.Numeric.cosech) }
my multi sub acosech(ArithLFunctor \a) is export { a.Generic(a.Numeric.acosech) }
my multi sub cotanh(ArithLFunctor \a) is export { a.Generic(a.Numeric.cotanh) }
my multi sub acotanh(ArithLFunctor \a) is export { a.Generic(a.Numeric.acotanh) }
my multi sub sqrt(ArithLFunctor \a) is export { a.Generic(a.Numeric.sqrt) }
my multi sub roots(ArithLFunctor \a, \b) is export { a.Generic(a.Numeric.Complex.roots(b.Int)) }
my multi sub floor(ArithLFunctor \a) is export { a.Generic(a.Numeric.floor) }
my multi sub ceiling(ArithLFunctor \a) is export { a.Generic(a.Numeric.ceiling) }
my multi sub round(ArithLFunctor \a) is export { a.Generic(a.Numeric.round) }
my multi sub round(ArithLFunctor \a, \b) is export { a.Generic(a.Numeric.round(\b)) }

}
