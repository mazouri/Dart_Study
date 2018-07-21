void foo(){}

class A {
  static void bar(){}
  void baz(){}
}

void main() {
  var x;
  x = foo;
  // Comparing top-level functions.
  print(x == foo); // true

  x = A.bar;
  // Comparing static methods.
  print(A.bar == x); // true

  // Comparing instance methods.
  var m = new A();
  var n = new A();

  x = m.baz;
  var y = n.baz;
  // These closures refer to the same instance (#2),
  // so they're equal.
  print(x == y); //false
  // These closures refer to different instances,
  // so they're unequal.
  print(m.baz == x); //true

}
