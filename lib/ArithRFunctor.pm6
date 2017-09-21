unit role ArithRFunctor;
# This is an add-on role to be combined with ArithLFunctor.
#
# It is in its own file only because currently one cannot
# restrict individual multi candidates with export tags.
# You'll want to "use ArithRFuntor :Right;" as the tags are
# kept for when this is possible.
#
# If you want true contageon on a ArithLFuntor, mix in ArithRFunctor.
# This will mean you'll get your class back out even if you do
# something like "42 + $myclass".  Normally only "$myclass + 42"
# works.
#
# ...but it's a huge lot of bloat and so not exported by default.

# This just makes classes using this also do ArithLFunctor
method ArithRFunctorSentry {...}

my multi sub infix:<+> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}
my multi sub infix:<+> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a + b.Numeric);
}

my multi sub infix:<-> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}
my multi sub infix:<-> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a - b.Numeric);
}

my multi sub infix:<*> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}
my multi sub infix:<*> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a * b.Numeric);
}

my multi sub infix:</> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}
my multi sub infix:</> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a / b.Numeric);
}

my multi sub infix:<div> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}
my multi sub infix:<div> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a div b.Numeric);
}

my multi sub infix:<%> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}
my multi sub infix:<%> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a % b.Numeric);
}

my multi sub infix:<%%> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}
my multi sub infix:<%%> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a %% b.Numeric);
}

my multi sub infix:<**> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}
my multi sub infix:<**> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a ** b.Numeric);
}

my multi sub infix:<lcm> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}
my multi sub infix:<lcm> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a lcm b.Numeric);
}

my multi sub infix:<gcd> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}
my multi sub infix:<gcd> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a gcd b.Numeric);
}

my multi sub infix:<+&> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}
my multi sub infix:<+&> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +& b.Numeric);
}

my multi sub infix:<+|> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}
my multi sub infix:<+|> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +| b.Numeric);
}


my multi sub infix:<+^> (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}
my multi sub infix:<+^> (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +^ b.Numeric);
}

my multi sub infix:«+>» (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}
my multi sub infix:«+>» (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +> b.Numeric);
}

my multi sub infix:«+<» (\a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Cool \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Numeric \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Real \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Complex \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Num \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (FatRat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Rat \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (Int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (int \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (IntStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
my multi sub infix:«+<» (NumStr \a, ArithRFunctor \b) is export(:Right) {
      b.Generic(a +< b.Numeric);
}
