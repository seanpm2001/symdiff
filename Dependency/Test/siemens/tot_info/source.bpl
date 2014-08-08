type {:extern} name;

type {:extern} byte;

function {:extern} OneByteToInt(byte) : int;

function {:extern} TwoBytesToInt(byte, byte) : int;

function {:extern} FourBytesToInt(byte, byte, byte, byte) : int;

axiom (forall b0: byte, c0: byte :: { OneByteToInt(b0), OneByteToInt(c0) } OneByteToInt(b0) == OneByteToInt(c0) ==> b0 == c0);

axiom (forall b0: byte, b1: byte, c0: byte, c1: byte :: { TwoBytesToInt(b0, b1), TwoBytesToInt(c0, c1) } TwoBytesToInt(b0, b1) == TwoBytesToInt(c0, c1) ==> b0 == c0 && b1 == c1);

axiom (forall b0: byte, b1: byte, b2: byte, b3: byte, c0: byte, c1: byte, c2: byte, c3: byte :: { FourBytesToInt(b0, b1, b2, b3), FourBytesToInt(c0, c1, c2, c3) } FourBytesToInt(b0, b1, b2, b3) == FourBytesToInt(c0, c1, c2, c3) ==> b0 == c0 && b1 == c1 && b2 == c2 && b3 == c3);

var {:extern} Mem: [name][int]int;

var {:extern} alloc: int;

function {:extern} Field(int) : name;

function {:extern} Base(int) : int;

axiom (forall x: int :: { Base(x) } INT_LEQ(Base(x), x));

function {:extern} DT(int) : name;

var {:extern} Mem_T.A1000INT4: [int]int;

var {:extern} Mem_T.A15CHAR: [int]int;

var {:extern} Mem_T.A17CHAR: [int]int;

var {:extern} Mem_T.A18CHAR: [int]int;

var {:extern} Mem_T.A21CHAR: [int]int;

var {:extern} Mem_T.A256CHAR: [int]int;

var {:extern} Mem_T.A29CHAR: [int]int;

var {:extern} Mem_T.A34CHAR: [int]int;

var {:extern} Mem_T.A37CHAR: [int]int;

var {:extern} Mem_T.A41CHAR: [int]int;

var {:extern} Mem_T.A5CHAR: [int]int;

var {:extern} Mem_T.A6FLOAT: [int]int;

var {:extern} Mem_T.A7CHAR: [int]int;

var {:extern} Mem_T.CHAR: [int]int;

var {:extern} Mem_T.FLOAT: [int]int;

var {:extern} Mem_T.INT4: [int]int;

var {:extern} Mem_T.PCHAR: [int]int;

var {:extern} Mem_T.PFLOAT: [int]int;

var {:extern} Mem_T.PINT4: [int]int;

var {:extern} Mem_T.P_iobuf: [int]int;

var {:extern} Mem_T.UINT4: [int]int;

function {:extern} Match(a: int, t: name) : bool;

function {:extern} MatchBase(b: int, a: int, t: name) : bool;

function {:extern} HasType(v: int, t: name) : bool;

function {:extern} T.Ptr(t: name) : name;

axiom (forall a: int, t: name :: { Match(a, T.Ptr(t)) } Match(a, T.Ptr(t)) <==> Field(a) == T.Ptr(t));

axiom (forall b: int, a: int, t: name :: { MatchBase(b, a, T.Ptr(t)) } MatchBase(b, a, T.Ptr(t)) <==> Base(a) == b);

axiom (forall v: int, t: name :: { HasType(v, T.Ptr(t)) } HasType(v, T.Ptr(t)) <==> v == 0 || (INT_GT(v, 0) && Match(v, t) && MatchBase(Base(v), v, t)));

const {:extern} unique T.A1000INT4: name;

const {:extern} unique T.A15CHAR: name;

const {:extern} unique T.A17CHAR: name;

const {:extern} unique T.A18CHAR: name;

const {:extern} unique T.A21CHAR: name;

const {:extern} unique T.A256CHAR: name;

const {:extern} unique T.A29CHAR: name;

const {:extern} unique T.A34CHAR: name;

const {:extern} unique T.A37CHAR: name;

const {:extern} unique T.A41CHAR: name;

const {:extern} unique T.A5CHAR: name;

const {:extern} unique T.A6FLOAT: name;

const {:extern} unique T.A7CHAR: name;

const {:extern} unique T.CHAR: name;

const {:extern} unique T.FLOAT: name;

const {:extern} unique T.INT4: name;

const {:extern} unique T.PA1000INT4: name;

const {:extern} unique T.PA15CHAR: name;

const {:extern} unique T.PA17CHAR: name;

const {:extern} unique T.PA18CHAR: name;

const {:extern} unique T.PA21CHAR: name;

const {:extern} unique T.PA256CHAR: name;

const {:extern} unique T.PA29CHAR: name;

const {:extern} unique T.PA34CHAR: name;

const {:extern} unique T.PA37CHAR: name;

const {:extern} unique T.PA41CHAR: name;

const {:extern} unique T.PA5CHAR: name;

const {:extern} unique T.PA6FLOAT: name;

const {:extern} unique T.PA7CHAR: name;

const {:extern} unique T.PCHAR: name;

const {:extern} unique T.PFLOAT: name;

const {:extern} unique T.PINT4: name;

const {:extern} unique T.PPCHAR: name;

const {:extern} unique T.PPFLOAT: name;

const {:extern} unique T.PPINT4: name;

const {:extern} unique T.PPPCHAR: name;

const {:extern} unique T.PP_iobuf: name;

const {:extern} unique T.PUINT4: name;

const {:extern} unique T.P_iobuf: name;

const {:extern} unique T.UINT4: name;

const {:extern} unique T._iobuf: name;

function {:extern}  INT_EQ(x: int, y: int) : bool
{
  x == y
}

function {:extern}  INT_NEQ(x: int, y: int) : bool
{
  x != y
}

function {:extern}  INT_ADD(x: int, y: int) : int
{
  x + y
}

function {:extern}  INT_SUB(x: int, y: int) : int
{
  x - y
}

function {:extern}  INT_MULT(x: int, y: int) : int
{
  x * y
}

function {:extern}  INT_LT(x: int, y: int) : bool
{
  x < y
}

function {:extern}  INT_ULT(x: int, y: int) : bool
{
  x < y
}

function {:extern}  INT_LEQ(x: int, y: int) : bool
{
  x <= y
}

function {:extern}  INT_ULEQ(x: int, y: int) : bool
{
  x <= y
}

function {:extern}  INT_GT(x: int, y: int) : bool
{
  x > y
}

function {:extern}  INT_UGT(x: int, y: int) : bool
{
  x > y
}

function {:extern}  INT_GEQ(x: int, y: int) : bool
{
  x >= y
}

function {:extern}  INT_UGEQ(x: int, y: int) : bool
{
  x >= y
}

function {:extern}  BV32_EQ(x: bv32, y: bv32) : bool
{
  x == y
}

function {:extern}  BV32_NEQ(x: bv32, y: bv32) : bool
{
  x != y
}

function {:extern} {:bvbuiltin "bvadd"} BV32_ADD(x: bv32, y: bv32) : bv32;

function {:extern} {:bvbuiltin "bvsub"} BV32_SUB(x: bv32, y: bv32) : bv32;

function {:extern} {:bvbuiltin "bvmul"} BV32_MULT(x: bv32, y: bv32) : bv32;

function {:extern} {:bvbuiltin "bvudiv"} BV32_DIV(x: bv32, y: bv32) : bv32;

function {:extern} {:bvbuiltin "bvult"} BV32_ULT(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvslt"} BV32_LT(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvule"} BV32_ULEQ(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvsle"} BV32_LEQ(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvugt"} BV32_UGT(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvsgt"} BV32_GT(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvuge"} BV32_UGEQ(x: bv32, y: bv32) : bool;

function {:extern} {:bvbuiltin "bvsge"} BV32_GEQ(x: bv32, y: bv32) : bool;

function {:extern} MINUS_BOTH_PTR_OR_BOTH_INT(a: int, b: int, size: int) : int;

axiom (forall a: int, b: int, size: int :: { MINUS_BOTH_PTR_OR_BOTH_INT(a, b, size) } INT_LEQ(INT_MULT(size, MINUS_BOTH_PTR_OR_BOTH_INT(a, b, size)), INT_SUB(a, b)) && INT_LT(INT_SUB(a, b), INT_MULT(size, INT_ADD(MINUS_BOTH_PTR_OR_BOTH_INT(a, b, size), 1))));

axiom (forall a: int, b: int, size: int :: { MINUS_BOTH_PTR_OR_BOTH_INT(a, b, size) } MINUS_BOTH_PTR_OR_BOTH_INT(a, b, 1) == INT_SUB(a, b));

function {:extern} MINUS_LEFT_PTR(a: int, a_size: int, b: int) : int;

axiom (forall a: int, a_size: int, b: int :: { MINUS_LEFT_PTR(a, a_size, b) } MINUS_LEFT_PTR(a, a_size, b) == INT_SUB(a, INT_MULT(a_size, b)));

function {:extern} PLUS(a: int, a_size: int, b: int) : int;

axiom (forall a: int, a_size: int, b: int :: { PLUS(a, a_size, b) } PLUS(a, a_size, b) == INT_ADD(a, INT_MULT(a_size, b)));

function {:extern} MULT(a: int, b: int) : int;

axiom (forall a: int, b: int :: { MULT(a, b) } MULT(a, b) == INT_MULT(a, b));

function {:extern} DIV(a: int, b: int) : int;

function {:extern} BINARY_UNKNOWN(a: int, b: int) : int;

axiom (forall a: int, b: int :: { DIV(a, b) } a >= 0 && b > 0 ==> b * DIV(a, b) <= a && a < b * (DIV(a, b) + 1));

axiom (forall a: int, b: int :: { DIV(a, b) } a >= 0 && b < 0 ==> b * DIV(a, b) <= a && a < b * (DIV(a, b) - 1));

axiom (forall a: int, b: int :: { DIV(a, b) } a < 0 && b > 0 ==> b * DIV(a, b) >= a && a > b * (DIV(a, b) - 1));

axiom (forall a: int, b: int :: { DIV(a, b) } a < 0 && b < 0 ==> b * DIV(a, b) >= a && a > b * (DIV(a, b) + 1));

function {:extern} BINARY_BOTH_INT(a: int, b: int) : int;

function {:extern} POW2(a: int) : bool;

axiom POW2(1);

axiom POW2(2);

axiom POW2(4);

axiom POW2(8);

axiom POW2(16);

axiom POW2(32);

axiom POW2(64);

axiom POW2(128);

axiom POW2(256);

axiom POW2(512);

axiom POW2(1024);

axiom POW2(2048);

axiom POW2(4096);

axiom POW2(8192);

axiom POW2(16384);

axiom POW2(32768);

axiom POW2(65536);

axiom POW2(131072);

axiom POW2(262144);

axiom POW2(524288);

axiom POW2(1048576);

axiom POW2(2097152);

axiom POW2(4194304);

axiom POW2(8388608);

axiom POW2(16777216);

axiom POW2(33554432);

function {:extern} BIT_BAND(a: int, b: int) : int;

axiom (forall a: int, b: int :: { BIT_BAND(a, b) } a == b ==> BIT_BAND(a, b) == a);

axiom (forall a: int, b: int :: { BIT_BAND(a, b) } POW2(a) && POW2(b) && a != b ==> BIT_BAND(a, b) == 0);

axiom (forall a: int, b: int :: { BIT_BAND(a, b) } a == 0 || b == 0 ==> BIT_BAND(a, b) == 0);

function {:extern} BIT_BOR(a: int, b: int) : int;

function {:extern} BIT_BXOR(a: int, b: int) : int;

function {:extern} BIT_BNOT(a: int) : int;

function {:extern} choose(a: bool, b: int, c: int) : int;

axiom (forall a: bool, b: int, c: int :: { choose(a, b, c) } a ==> choose(a, b, c) == b);

axiom (forall a: bool, b: int, c: int :: { choose(a, b, c) } !a ==> choose(a, b, c) == c);

function {:extern} LIFT(a: bool) : int;

axiom (forall a: bool :: { LIFT(a) } a <==> LIFT(a) != 0);

function {:extern} PTR_NOT(a: int) : int;

axiom (forall a: int :: { PTR_NOT(a) } a == 0 ==> PTR_NOT(a) != 0);

axiom (forall a: int :: { PTR_NOT(a) } a != 0 ==> PTR_NOT(a) == 0);

function {:extern} NULL_CHECK(a: int) : int;

axiom (forall a: int :: { NULL_CHECK(a) } a == 0 ==> NULL_CHECK(a) != 0);

axiom (forall a: int :: { NULL_CHECK(a) } a != 0 ==> NULL_CHECK(a) == 0);

procedure {:extern} havoc_assert(i: int);
  requires i != 0;



procedure {:extern} havoc_assume(i: int);
  ensures i != 0;



procedure {:extern} __HAVOC_free(a: int);



function {:extern} NewAlloc(x: int, y: int) : int;

procedure {:extern} __HAVOC_malloc(obj_size: int) returns (new: int);
  free requires INT_GEQ(obj_size, 0);
  modifies alloc;
  ensures new == old(alloc);
  ensures INT_GT(alloc, INT_ADD(new, obj_size));
  ensures Base(new) == new;



procedure {:extern} __HAVOC_det_malloc(obj_size: int) returns (new: int);
  free requires INT_GEQ(obj_size, 0);
  modifies alloc;
  ensures new == old(alloc);
  ensures INT_GT(alloc, INT_ADD(new, obj_size));
  ensures Base(new) == new;
  ensures alloc == NewAlloc(old(alloc), obj_size);



procedure {:extern} __HAVOC_memset_split_1(A: [int]int, p: int, c: int, n: int) returns (ret: [int]int);
  ensures Subset(Empty(), Array(p, 1, n)) && (forall i: int :: { ret[i] } Array(p, 1, n)[i] || ret[i] == A[i]);
  ensures Subset(Empty(), Array(p, 1, n)) && (forall i: int :: { ret[i] } Array(p, 1, n)[i] ==> ret[i] == c);



procedure {:extern} __HAVOC_memset_split_2(A: [int]int, p: int, c: int, n: int) returns (ret: [int]int);
  ensures Subset(Empty(), Array(p, 2, n)) && (forall i: int :: { ret[i] } Array(p, 2, n)[i] || ret[i] == A[i]);
  ensures Subset(Empty(), Array(p, 2, n)) && (forall i: int :: { ret[i] } Array(p, 2, n)[i] ==> ret[i] == c);



procedure {:extern} __HAVOC_memset_split_4(A: [int]int, p: int, c: int, n: int) returns (ret: [int]int);
  ensures Subset(Empty(), Array(p, 4, n)) && (forall i: int :: { ret[i] } Array(p, 4, n)[i] || ret[i] == A[i]);
  ensures Subset(Empty(), Array(p, 4, n)) && (forall i: int :: { ret[i] } Array(p, 4, n)[i] ==> ret[i] == c);



procedure {:extern} nondet_intrinsic() returns (x: int);



procedure {:extern} nondet_choice() returns (x: int);



var {:extern} detChoiceCnt: int;

function {:extern} DetChoiceFunc(a: int) : int;

procedure {:extern} det_choice() returns (x: int);
  ensures detChoiceCnt == INT_ADD(old(detChoiceCnt), 1);
  ensures x == DetChoiceFunc(old(detChoiceCnt));



procedure {:extern} _strdup(str: int) returns (new: int);



procedure {:extern} _xstrcasecmp(a0: int, a1: int) returns (ret: int);



procedure {:extern} _xstrcmp(a0: int, a1: int) returns (ret: int);



function {:extern} Equal([int]bool, [int]bool) : bool;

function {:extern} Subset([int]bool, [int]bool) : bool;

function {:extern} Disjoint([int]bool, [int]bool) : bool;

function {:extern} Empty() : [int]bool;

function {:extern} SetTrue() : [int]bool;

function {:extern} Singleton(int) : [int]bool;

function {:extern} Reachable([int,int]bool, int) : [int]bool;

function {:extern} Union([int]bool, [int]bool) : [int]bool;

function {:extern} Intersection([int]bool, [int]bool) : [int]bool;

function {:extern} Difference([int]bool, [int]bool) : [int]bool;

function {:extern} Dereference([int]bool, [int]int) : [int]bool;

function {:extern} Inverse(f: [int]int, x: int) : [int]bool;

function {:extern} AtLeast(int, int) : [int]bool;

function {:extern} Rep(int, int) : int;

axiom (forall n: int, x: int, y: int :: { AtLeast(n, x)[y] } AtLeast(n, x)[y] ==> INT_LEQ(x, y) && Rep(n, x) == Rep(n, y));

axiom (forall n: int, x: int, y: int :: { AtLeast(n, x), Rep(n, x), Rep(n, y) } INT_LEQ(x, y) && Rep(n, x) == Rep(n, y) ==> AtLeast(n, x)[y]);

axiom (forall n: int, x: int :: { AtLeast(n, x) } AtLeast(n, x)[x]);

axiom (forall n: int, x: int, z: int :: { PLUS(x, n, z) } Rep(n, x) == Rep(n, PLUS(x, n, z)));

axiom (forall n: int, x: int :: { Rep(n, x) } (exists k: int :: INT_SUB(Rep(n, x), x) == INT_MULT(n, k)));

function {:extern} Array(int, int, int) : [int]bool;

axiom (forall x: int, n: int, z: int :: { Array(x, n, z) } INT_LEQ(z, 0) ==> Equal(Array(x, n, z), Empty()));

axiom (forall x: int, n: int, z: int :: { Array(x, n, z) } INT_GT(z, 0) ==> Equal(Array(x, n, z), Difference(AtLeast(n, x), AtLeast(n, PLUS(x, n, z)))));

axiom (forall x: int :: !Empty()[x]);

axiom (forall x: int :: SetTrue()[x]);

axiom (forall x: int, y: int :: { Singleton(y)[x] } Singleton(y)[x] <==> x == y);

axiom (forall y: int :: { Singleton(y) } Singleton(y)[y]);

axiom (forall x: int, S: [int]bool, T: [int]bool :: { Union(S, T)[x] } { Union(S, T), S[x] } { Union(S, T), T[x] } Union(S, T)[x] <==> S[x] || T[x]);

axiom (forall x: int, S: [int]bool, T: [int]bool :: { Intersection(S, T)[x] } { Intersection(S, T), S[x] } { Intersection(S, T), T[x] } Intersection(S, T)[x] <==> S[x] && T[x]);

axiom (forall x: int, S: [int]bool, T: [int]bool :: { Difference(S, T)[x] } { Difference(S, T), S[x] } { Difference(S, T), T[x] } Difference(S, T)[x] <==> S[x] && !T[x]);

axiom (forall S: [int]bool, T: [int]bool :: { Equal(S, T) } Equal(S, T) <==> Subset(S, T) && Subset(T, S));

axiom (forall x: int, S: [int]bool, T: [int]bool :: { S[x], Subset(S, T) } { T[x], Subset(S, T) } S[x] && Subset(S, T) ==> T[x]);

axiom (forall S: [int]bool, T: [int]bool :: { Subset(S, T) } Subset(S, T) || (exists x: int :: S[x] && !T[x]));

axiom (forall x: int, S: [int]bool, T: [int]bool :: { S[x], Disjoint(S, T) } { T[x], Disjoint(S, T) } !(S[x] && Disjoint(S, T) && T[x]));

axiom (forall S: [int]bool, T: [int]bool :: { Disjoint(S, T) } Disjoint(S, T) || (exists x: int :: S[x] && T[x]));

axiom (forall f: [int]int, x: int :: { Inverse(f, f[x]) } Inverse(f, f[x])[x]);

axiom (forall f: [int]int, x: int, y: int :: { Inverse(f, y), f[x] } Inverse(f, y)[x] ==> f[x] == y);

axiom (forall f: [int]int, x: int, y: int :: { Inverse(f[x := y], y) } Equal(Inverse(f[x := y], y), Union(Inverse(f, y), Singleton(x))));

axiom (forall f: [int]int, x: int, y: int, z: int :: { Inverse(f[x := y], z) } y == z || Equal(Inverse(f[x := y], z), Difference(Inverse(f, z), Singleton(x))));

axiom (forall x: int, S: [int]bool, M: [int]int :: { Dereference(S, M)[x] } Dereference(S, M)[x] ==> (exists y: int :: x == M[y] && S[y]));

axiom (forall x: int, S: [int]bool, M: [int]int :: { M[x], S[x], Dereference(S, M) } S[x] ==> Dereference(S, M)[M[x]]);

axiom (forall x: int, y: int, S: [int]bool, M: [int]int :: { Dereference(S, M[x := y]) } !S[x] ==> Equal(Dereference(S, M[x := y]), Dereference(S, M)));

axiom (forall x: int, y: int, S: [int]bool, M: [int]int :: { Dereference(S, M[x := y]) } S[x] && Equal(Intersection(Inverse(M, M[x]), S), Singleton(x)) ==> Equal(Dereference(S, M[x := y]), Union(Difference(Dereference(S, M), Singleton(M[x])), Singleton(y))));

axiom (forall x: int, y: int, S: [int]bool, M: [int]int :: { Dereference(S, M[x := y]) } S[x] && !Equal(Intersection(Inverse(M, M[x]), S), Singleton(x)) ==> Equal(Dereference(S, M[x := y]), Union(Dereference(S, M), Singleton(y))));

function {:extern} Unified([name][int]int) : [int]int;

axiom (forall M: [name][int]int, x: int :: { Unified(M)[x] } Unified(M)[x] == M[Field(x)][x]);

axiom (forall M: [name][int]int, x: int, y: int :: { Unified(M[Field(x) := M[Field(x)][x := y]]) } Unified(M[Field(x) := M[Field(x)][x := y]]) == Unified(M)[x := y]);

const {:extern} unique c: int;

axiom c != 0;

axiom Base(c) == c;

const {:extern} unique cof: int;

axiom cof != 0;

axiom Base(cof) == cof;

const {:extern} unique f: int;

axiom f != 0;

axiom Base(f) == f;

const {:extern} unique line: int;

axiom line != 0;

axiom Base(line) == line;

const {:extern} unique r: int;

axiom r != 0;

axiom Base(r) == r;

const {:extern} unique BOOGIE_FLOAT_CONST___4: int;

const {:extern} unique BOOGIE_FLOAT_CONST___3.5: int;

const {:extern} unique BOOGIE_FLOAT_CONST___3: int;

const {:extern} unique BOOGIE_FLOAT_CONST___2.5: int;

const {:extern} unique BOOGIE_FLOAT_CONST___2: int;

const {:extern} unique BOOGIE_FLOAT_CONST___1.5: int;

const {:extern} unique BOOGIE_FLOAT_CONST___1: int;

const {:extern} unique BOOGIE_FLOAT_CONST_0: int;

const {:extern} unique BOOGIE_FLOAT_CONST_3e__007: int;

const {:extern} unique BOOGIE_FLOAT_CONST_0.5: int;

const {:extern} unique BOOGIE_FLOAT_CONST_1: int;

const {:extern} unique BOOGIE_FLOAT_CONST_2: int;

const {:extern} unique BOOGIE_FLOAT_CONST_2.50663: int;

const {:extern} unique BOOGIE_FLOAT_CONST_3.14159: int;

const {:extern} unique BOOGIE_FLOAT_CONST_5.5: int;

function {:extern} value_is(c: int, e: int) : bool;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 801} unique __ctobpl_const_240: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_248: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_220: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 639} unique __ctobpl_const_227: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_249: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 644} unique __ctobpl_const_235: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_221: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 794} unique __ctobpl_const_230: int;

const {:extern} {:model_const "result.acos"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 794} unique __ctobpl_const_233: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 644} unique __ctobpl_const_236: int;

const {:extern} {:model_const "result.asin"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 644} unique __ctobpl_const_238: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 801} unique __ctobpl_const_239: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 801} unique __ctobpl_const_241: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 801} unique __ctobpl_const_242: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 639} unique __ctobpl_const_225: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 794} unique __ctobpl_const_231: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 794} unique __ctobpl_const_232: int;

const {:extern} {:model_const "result.asin"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 801} unique __ctobpl_const_243: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_244: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 639} unique __ctobpl_const_226: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_245: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_247: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_222: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 644} unique __ctobpl_const_237: int;

const {:extern} {:model_const "asin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 644} unique __ctobpl_const_234: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_246: int;

const {:extern} {:model_const "result.acos"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 639} unique __ctobpl_const_228: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 639} unique __ctobpl_const_224: int;

const {:extern} {:model_const "result._hypot"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_223: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 687} unique __ctobpl_const_313: int;

const {:extern} {:model_const "acos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 794} unique __ctobpl_const_229: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_13: int;

const {:extern} {:model_const "pix"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_156: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 305} unique __ctobpl_const_2: int;

const {:extern} {:model_const "result.malloc"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_18: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 318} unique __ctobpl_const_20: int;

const {:extern} {:model_const "rdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 305} unique __ctobpl_const_1: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 306} unique __ctobpl_const_4: int;

const {:extern} {:model_const "* pdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 314} unique __ctobpl_const_9: int;

const {:extern} {:model_const "cdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 308} unique __ctobpl_const_7: int;

const {:extern} {:model_const "rdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 314} unique __ctobpl_const_10: int;

const {:extern} {:model_const "cdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 314} unique __ctobpl_const_11: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_12: int;

const {:extern} {:model_const "pdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 314} unique __ctobpl_const_8: int;

const {:extern} {:model_const "cdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 306} unique __ctobpl_const_3: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_14: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_15: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_16: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_21: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_23: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_22: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_24: int;

const {:extern} {:model_const "rdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 308} unique __ctobpl_const_6: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_17: int;

const {:extern} {:model_const "malloc.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_25: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 316} unique __ctobpl_const_19: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_26: int;

const {:extern} {:model_const "result.malloc"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_27: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 322} unique __ctobpl_const_28: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 307} unique __ctobpl_const_5: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 324} unique __ctobpl_const_29: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 330} unique __ctobpl_const_30: int;

const {:extern} {:model_const "pi"} {:sourceFile "source\tot_info.c"} {:sourceLine 379} unique __ctobpl_const_69: int;

const {:extern} {:model_const "pij"} {:sourceFile "source\tot_info.c"} {:sourceLine 386} unique __ctobpl_const_85: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 364} unique __ctobpl_const_89: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 376} unique __ctobpl_const_62: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 386} unique __ctobpl_const_86: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 364} unique __ctobpl_const_90: int;

const {:extern} {:model_const "pi"} {:sourceFile "source\tot_info.c"} {:sourceLine 378} unique __ctobpl_const_65: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 367} unique __ctobpl_const_93: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 379} unique __ctobpl_const_70: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 381} unique __ctobpl_const_73: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_78: int;

const {:extern} {:model_const "pij"} {:sourceFile "source\tot_info.c"} {:sourceLine 385} unique __ctobpl_const_81: int;

const {:extern} {:model_const "pij"} {:sourceFile "source\tot_info.c"} {:sourceLine 386} unique __ctobpl_const_82: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 381} unique __ctobpl_const_72: int;

const {:extern} {:model_const "pi"} {:sourceFile "source\tot_info.c"} {:sourceLine 379} unique __ctobpl_const_66: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_79: int;

const {:extern} {:model_const "f[i * c + j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_80: int;

const {:extern} {:model_const "pij"} {:sourceFile "source\tot_info.c"} {:sourceLine 386} unique __ctobpl_const_83: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 386} unique __ctobpl_const_84: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_87: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 364} unique __ctobpl_const_91: int;

const {:extern} {:model_const "xi[i]"} {:sourceFile "source\tot_info.c"} {:sourceLine 376} unique __ctobpl_const_64: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 376} unique __ctobpl_const_63: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 379} unique __ctobpl_const_68: int;

const {:extern} {:model_const "pi"} {:sourceFile "source\tot_info.c"} {:sourceLine 379} unique __ctobpl_const_67: int;

const {:extern} {:model_const "i"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_74: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 362} unique __ctobpl_const_88: int;

const {:extern} {:model_const "f"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_76: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 367} unique __ctobpl_const_92: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 381} unique __ctobpl_const_71: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_77: int;

const {:extern} {:model_const "pij"} {:sourceFile "source\tot_info.c"} {:sourceLine 383} unique __ctobpl_const_75: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 374} unique __ctobpl_const_45: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 352} unique __ctobpl_const_34: int;

const {:extern} {:model_const "pj"} {:sourceFile "source\tot_info.c"} {:sourceLine 392} unique __ctobpl_const_50: int;

const {:extern} {:model_const "pj"} {:sourceFile "source\tot_info.c"} {:sourceLine 394} unique __ctobpl_const_54: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 372} unique __ctobpl_const_39: int;

const {:extern} {:model_const "pj"} {:sourceFile "source\tot_info.c"} {:sourceLine 395} unique __ctobpl_const_55: int;

const {:extern} {:model_const "pj"} {:sourceFile "source\tot_info.c"} {:sourceLine 395} unique __ctobpl_const_56: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 372} unique __ctobpl_const_41: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 390} unique __ctobpl_const_47: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 392} unique __ctobpl_const_51: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 374} unique __ctobpl_const_44: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 392} unique __ctobpl_const_52: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 395} unique __ctobpl_const_57: int;

const {:extern} {:model_const "pj"} {:sourceFile "source\tot_info.c"} {:sourceLine 395} unique __ctobpl_const_58: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 395} unique __ctobpl_const_59: int;

const {:extern} {:model_const "xj[j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 392} unique __ctobpl_const_53: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 390} unique __ctobpl_const_46: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_60: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 360} unique __ctobpl_const_35: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 398} unique __ctobpl_const_49: int;

const {:extern} {:model_const "pi"} {:sourceFile "source\tot_info.c"} {:sourceLine 376} unique __ctobpl_const_61: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 372} unique __ctobpl_const_40: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 374} unique __ctobpl_const_43: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 360} unique __ctobpl_const_37: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 390} unique __ctobpl_const_48: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 332} unique __ctobpl_const_31: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 332} unique __ctobpl_const_33: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 332} unique __ctobpl_const_32: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 360} unique __ctobpl_const_36: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 372} unique __ctobpl_const_38: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 372} unique __ctobpl_const_42: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 334} unique __ctobpl_const_105: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 336} unique __ctobpl_const_107: int;

const {:extern} {:model_const "xj[j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 367} unique __ctobpl_const_94: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_96: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 342} unique __ctobpl_const_125: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_100: int;

const {:extern} {:model_const "xi[i]"} {:sourceFile "source\tot_info.c"} {:sourceLine 349} unique __ctobpl_const_112: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_117: int;

const {:extern} {:model_const "f"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_98: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_101: int;

const {:extern} {:model_const "i"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_103: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 354} unique __ctobpl_const_104: int;

const {:extern} {:model_const "N"} {:sourceFile "source\tot_info.c"} {:sourceLine 349} unique __ctobpl_const_109: int;

const {:extern} {:model_const "f[i * c + j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_120: int;

const {:extern} {:model_const "k"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_115: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_119: int;

const {:extern} {:model_const "k"} {:sourceFile "source\tot_info.c"} {:sourceLine 340} unique __ctobpl_const_121: int;

const {:extern} {:model_const "i"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_114: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_97: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 346} unique __ctobpl_const_122: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 336} unique __ctobpl_const_108: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 349} unique __ctobpl_const_110: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 336} unique __ctobpl_const_106: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 367} unique __ctobpl_const_95: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 349} unique __ctobpl_const_111: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 349} unique __ctobpl_const_113: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_99: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_118: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_124: int;

const {:extern} {:model_const "f"} {:sourceFile "source\tot_info.c"} {:sourceLine 338} unique __ctobpl_const_116: int;

const {:extern} {:model_const "k"} {:sourceFile "source\tot_info.c"} {:sourceLine 346} unique __ctobpl_const_123: int;

const {:extern} {:model_const "f[i * c + j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 365} unique __ctobpl_const_102: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 170} unique __ctobpl_const_139: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 174} unique __ctobpl_const_141: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 169} unique __ctobpl_const_134: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_145: int;

const {:extern} {:model_const "ser"} {:sourceFile "source\tot_info.c"} {:sourceLine 172} unique __ctobpl_const_140: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 174} unique __ctobpl_const_142: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 162} unique __ctobpl_const_132: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_146: int;

const {:extern} {:model_const "tmp"} {:sourceFile "source\tot_info.c"} {:sourceLine 170} unique __ctobpl_const_135: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 405} unique __ctobpl_const_131: int;

const {:extern} {:model_const "tmp"} {:sourceFile "source\tot_info.c"} {:sourceLine 170} unique __ctobpl_const_136: int;

const {:extern} {:model_const "tmp"} {:sourceFile "source\tot_info.c"} {:sourceLine 170} unique __ctobpl_const_137: int;

const {:extern} {:model_const "ser"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_144: int;

const {:extern} {:model_const "tmp"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_147: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_148: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 310} unique __ctobpl_const_130: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 175} unique __ctobpl_const_150: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 170} unique __ctobpl_const_138: int;

const {:extern} {:model_const "cof[j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 175} unique __ctobpl_const_151: int;

const {:extern} {:model_const "ser"} {:sourceFile "source\tot_info.c"} {:sourceLine 175} unique __ctobpl_const_149: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 175} unique __ctobpl_const_152: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 403} unique __ctobpl_const_129: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 401} unique __ctobpl_const_127: int;

const {:extern} {:model_const "xi"} {:sourceFile "source\tot_info.c"} {:sourceLine 403} unique __ctobpl_const_128: int;

const {:extern} {:model_const "pix"} {:sourceFile "source\tot_info.c"} {:sourceLine 164} unique __ctobpl_const_154: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_153: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 164} unique __ctobpl_const_155: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 177} unique __ctobpl_const_143: int;

const {:extern} {:model_const "xj"} {:sourceFile "source\tot_info.c"} {:sourceLine 401} unique __ctobpl_const_126: int;

const {:extern} {:model_const "tmp"} {:sourceFile "source\tot_info.c"} {:sourceLine 169} unique __ctobpl_const_133: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_219: int;

const {:extern} {:model_const "result.ceil"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 820} unique __ctobpl_const_281: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 659} unique __ctobpl_const_272: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_251: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_253: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_256: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 813} unique __ctobpl_const_269: int;

const {:extern} {:model_const "result.atan2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_261: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_257: int;

const {:extern} {:model_const "result.atan2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_252: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 654} unique __ctobpl_const_263: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 659} unique __ctobpl_const_273: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_258: int;

const {:extern} {:model_const "result.atan"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 813} unique __ctobpl_const_271: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 654} unique __ctobpl_const_265: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 654} unique __ctobpl_const_262: int;

const {:extern} {:model_const "result.atan"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 654} unique __ctobpl_const_266: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 813} unique __ctobpl_const_270: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 659} unique __ctobpl_const_274: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_259: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 813} unique __ctobpl_const_268: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 659} unique __ctobpl_const_275: int;

const {:extern} {:model_const "result.ceil"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 659} unique __ctobpl_const_276: int;

const {:extern} {:model_const "an"} {:sourceFile "source\tot_info.c"} {:sourceLine 219} unique __ctobpl_const_376: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 820} unique __ctobpl_const_277: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 654} unique __ctobpl_const_264: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 820} unique __ctobpl_const_278: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 820} unique __ctobpl_const_279: int;

const {:extern} {:model_const "ceil.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 820} unique __ctobpl_const_280: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_254: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_255: int;

const {:extern} {:model_const "atan2.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 806} unique __ctobpl_const_260: int;

const {:extern} {:model_const "atan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 813} unique __ctobpl_const_267: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 674} unique __ctobpl_const_304: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 674} unique __ctobpl_const_305: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 669} unique __ctobpl_const_288: int;

const {:extern} {:model_const "result.exp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 674} unique __ctobpl_const_306: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 842} unique __ctobpl_const_300: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 850} unique __ctobpl_const_307: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 850} unique __ctobpl_const_308: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 837} unique __ctobpl_const_294: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 669} unique __ctobpl_const_289: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 850} unique __ctobpl_const_310: int;

const {:extern} {:model_const "result.exp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 850} unique __ctobpl_const_311: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 842} unique __ctobpl_const_298: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 687} unique __ctobpl_const_312: int;

const {:extern} {:model_const "result.cos"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 664} unique __ctobpl_const_286: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 850} unique __ctobpl_const_309: int;

const {:extern} {:model_const "result.cosh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 669} unique __ctobpl_const_291: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 669} unique __ctobpl_const_290: int;

const {:extern} {:model_const "result.cosh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 837} unique __ctobpl_const_296: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 664} unique __ctobpl_const_282: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 837} unique __ctobpl_const_293: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 837} unique __ctobpl_const_295: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 842} unique __ctobpl_const_297: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 664} unique __ctobpl_const_283: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 837} unique __ctobpl_const_292: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 664} unique __ctobpl_const_284: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 664} unique __ctobpl_const_285: int;

const {:extern} {:model_const "cosh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 669} unique __ctobpl_const_287: int;

const {:extern} {:model_const "cos.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 842} unique __ctobpl_const_299: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 674} unique __ctobpl_const_302: int;

const {:extern} {:model_const "result.cos"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 842} unique __ctobpl_const_301: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 674} unique __ctobpl_const_303: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_217: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_191: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_218: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_188: int;

const {:extern} {:model_const "gser.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_190: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_198: int;

const {:extern} {:model_const "result.gser"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_199: int;

const {:extern} {:model_const "gser.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_196: int;

const {:extern} {:model_const "result._chgsign"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 825} unique __ctobpl_const_205: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_207: int;

const {:extern} {:model_const "_copysign.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_211: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_216: int;

const {:extern} {:model_const "result.gcf"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_189: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_209: int;

const {:extern} {:model_const "_chgsign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 825} unique __ctobpl_const_201: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_193: int;

const {:extern} {:model_const "gser.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_195: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 825} unique __ctobpl_const_202: int;

const {:extern} {:model_const "_chgsign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 825} unique __ctobpl_const_204: int;

const {:extern} {:model_const "_copysign.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_213: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 886} unique __ctobpl_const_215: int;

const {:extern} {:model_const "gcf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_187: int;

const {:extern} {:model_const "gser.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_192: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_200: int;

const {:extern} {:model_const "_chgsign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 825} unique __ctobpl_const_203: int;

const {:extern} {:model_const "_copysign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_208: int;

const {:extern} {:model_const "_copysign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_210: int;

const {:extern} {:model_const "_copysign.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_212: int;

const {:extern} {:model_const "gser.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_197: int;

const {:extern} {:model_const "gser.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_194: int;

const {:extern} {:model_const "_copysign.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_206: int;

const {:extern} {:model_const "result._copysign"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 832} unique __ctobpl_const_214: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_162: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_165: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_166: int;

const {:extern} {:model_const "QGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_175: int;

const {:extern} {:model_const "atan2.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 649} unique __ctobpl_const_250: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_179: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_181: int;

const {:extern} {:model_const "result.LGamma"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_168: int;

const {:extern} {:model_const "result.sin"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_160: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_164: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_167: int;

const {:extern} {:model_const "gcf.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_182: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_183: int;

const {:extern} {:model_const "result.QGamma"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_177: int;

const {:extern} {:model_const "gcf.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_184: int;

const {:extern} {:model_const "pix"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_157: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_158: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_161: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_163: int;

const {:extern} {:model_const "QGamma.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_169: int;

const {:extern} {:model_const "pix"} {:sourceFile "source\tot_info.c"} {:sourceLine 166} unique __ctobpl_const_159: int;

const {:extern} {:model_const "QGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_173: int;

const {:extern} {:model_const "QGamma.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_174: int;

const {:extern} {:model_const "gcf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_180: int;

const {:extern} {:model_const "gcf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_185: int;

const {:extern} {:model_const "gcf.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_186: int;

const {:extern} {:model_const "QGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_171: int;

const {:extern} {:model_const "QGamma.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_176: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 248} unique __ctobpl_const_178: int;

const {:extern} {:model_const "df"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_172: int;

const {:extern} {:model_const "chisq"} {:sourceFile "source\tot_info.c"} {:sourceLine 256} unique __ctobpl_const_170: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_434: int;

const {:extern} {:model_const "result.LGamma"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_435: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_419: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_412: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_421: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 236} unique __ctobpl_const_423: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_436: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_437: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 231} unique __ctobpl_const_408: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_411: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_414: int;

const {:extern} {:model_const "n"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_424: int;

const {:extern} {:model_const "result.exp"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_438: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_439: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_410: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_431: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 231} unique __ctobpl_const_409: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 236} unique __ctobpl_const_422: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_426: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_433: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_416: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_413: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_420: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_425: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_428: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_418: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_429: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_415: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_427: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 233} unique __ctobpl_const_417: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_430: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 234} unique __ctobpl_const_432: int;

const {:extern} {:model_const "ap"} {:sourceFile "source\tot_info.c"} {:sourceLine 198} unique __ctobpl_const_452: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_501: int;

const {:extern} {:model_const "ap"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_441: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_458: int;

const {:extern} {:model_const "del"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_445: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_459: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_460: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_461: int;

const {:extern} {:model_const "n"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_465: int;

const {:extern} {:model_const "del"} {:sourceFile "source\tot_info.c"} {:sourceLine 198} unique __ctobpl_const_450: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_456: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 191} unique __ctobpl_const_440: int;

const {:extern} {:model_const "ap"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_444: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_454: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_466: int;

const {:extern} {:model_const "n"} {:sourceFile "source\tot_info.c"} {:sourceLine 196} unique __ctobpl_const_447: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_467: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_443: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_442: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 198} unique __ctobpl_const_449: int;

const {:extern} {:model_const "del"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_457: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_462: int;

const {:extern} {:model_const "result.question.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_463: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_468: int;

const {:extern} {:model_const "del"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_455: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_469: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 198} unique __ctobpl_const_451: int;

const {:extern} {:model_const "del"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_453: int;

const {:extern} {:model_const "result.question.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 200} unique __ctobpl_const_464: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 194} unique __ctobpl_const_446: int;

const {:extern} {:model_const "n"} {:sourceFile "source\tot_info.c"} {:sourceLine 196} unique __ctobpl_const_448: int;

const {:extern} {:model_const "n"} {:sourceFile "source\tot_info.c"} {:sourceLine 218} unique __ctobpl_const_374: int;

const {:extern} {:model_const "ana"} {:sourceFile "source\tot_info.c"} {:sourceLine 219} unique __ctobpl_const_375: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_352: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_351: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_358: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_362: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_344: int;

const {:extern} {:model_const "a0"} {:sourceFile "source\tot_info.c"} {:sourceLine 213} unique __ctobpl_const_368: int;

const {:extern} {:model_const "n"} {:sourceFile "source\tot_info.c"} {:sourceLine 215} unique __ctobpl_const_371: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_345: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_347: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_350: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_346: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_355: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_353: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_354: int;

const {:extern} {:model_const "result.frexp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 713} unique __ctobpl_const_356: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_357: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_359: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_348: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_360: int;

const {:extern} {:model_const "frexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_361: int;

const {:extern} {:model_const "result.frexp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 879} unique __ctobpl_const_363: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 212} unique __ctobpl_const_364: int;

const {:extern} {:model_const "b1"} {:sourceFile "source\tot_info.c"} {:sourceLine 212} unique __ctobpl_const_366: int;

const {:extern} {:model_const "b0"} {:sourceFile "source\tot_info.c"} {:sourceLine 213} unique __ctobpl_const_367: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 213} unique __ctobpl_const_369: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 213} unique __ctobpl_const_370: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 212} unique __ctobpl_const_365: int;

const {:extern} {:model_const "n"} {:sourceFile "source\tot_info.c"} {:sourceLine 215} unique __ctobpl_const_372: int;

const {:extern} {:model_const "result.fmod"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_349: int;

const {:extern} {:model_const "an"} {:sourceFile "source\tot_info.c"} {:sourceLine 218} unique __ctobpl_const_373: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 865} unique __ctobpl_const_330: int;

const {:extern} {:model_const "result.fmod"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_340: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_470: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_342: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_343: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 687} unique __ctobpl_const_314: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 687} unique __ctobpl_const_315: int;

const {:extern} {:model_const "result.fabs"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 687} unique __ctobpl_const_316: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 858} unique __ctobpl_const_319: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 858} unique __ctobpl_const_317: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 865} unique __ctobpl_const_327: int;

const {:extern} {:model_const "result.fabs"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 858} unique __ctobpl_const_321: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 701} unique __ctobpl_const_323: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 701} unique __ctobpl_const_325: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 874} unique __ctobpl_const_341: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_332: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_333: int;

const {:extern} {:model_const "result.floor"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 701} unique __ctobpl_const_326: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 701} unique __ctobpl_const_322: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_334: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 865} unique __ctobpl_const_329: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 858} unique __ctobpl_const_318: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_336: int;

const {:extern} {:model_const "fmod.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_338: int;

const {:extern} {:model_const "fabs.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 858} unique __ctobpl_const_320: int;

const {:extern} {:model_const "floor.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 701} unique __ctobpl_const_324: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 865} unique __ctobpl_const_328: int;

const {:extern} {:model_const "result.floor"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 865} unique __ctobpl_const_331: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_339: int;

const {:extern} {:model_const "fmod.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_337: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 706} unique __ctobpl_const_335: int;

const {:extern} {:model_const "b1"} {:sourceFile "source\tot_info.c"} {:sourceLine 224} unique __ctobpl_const_395: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 225} unique __ctobpl_const_396: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 225} unique __ctobpl_const_397: int;

const {:extern} {:model_const "a0"} {:sourceFile "source\tot_info.c"} {:sourceLine 225} unique __ctobpl_const_398: int;

const {:extern} {:model_const "a0"} {:sourceFile "source\tot_info.c"} {:sourceLine 221} unique __ctobpl_const_378: int;

const {:extern} {:model_const "an"} {:sourceFile "source\tot_info.c"} {:sourceLine 223} unique __ctobpl_const_389: int;

const {:extern} {:model_const "anf"} {:sourceFile "source\tot_info.c"} {:sourceLine 225} unique __ctobpl_const_399: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 227} unique __ctobpl_const_401: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 229} unique __ctobpl_const_403: int;

const {:extern} {:model_const "g"} {:sourceFile "source\tot_info.c"} {:sourceLine 229} unique __ctobpl_const_404: int;

const {:extern} {:model_const "b1"} {:sourceFile "source\tot_info.c"} {:sourceLine 229} unique __ctobpl_const_405: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 229} unique __ctobpl_const_402: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 221} unique __ctobpl_const_382: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 229} unique __ctobpl_const_406: int;

const {:extern} {:model_const "gold"} {:sourceFile "source\tot_info.c"} {:sourceLine 231} unique __ctobpl_const_407: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 225} unique __ctobpl_const_400: int;

const {:extern} {:model_const "ana"} {:sourceFile "source\tot_info.c"} {:sourceLine 222} unique __ctobpl_const_386: int;

const {:extern} {:model_const "a1"} {:sourceFile "source\tot_info.c"} {:sourceLine 221} unique __ctobpl_const_379: int;

const {:extern} {:model_const "anf"} {:sourceFile "source\tot_info.c"} {:sourceLine 223} unique __ctobpl_const_388: int;

const {:extern} {:model_const "b0"} {:sourceFile "source\tot_info.c"} {:sourceLine 222} unique __ctobpl_const_383: int;

const {:extern} {:model_const "b1"} {:sourceFile "source\tot_info.c"} {:sourceLine 224} unique __ctobpl_const_391: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 222} unique __ctobpl_const_387: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 219} unique __ctobpl_const_377: int;

const {:extern} {:model_const "a0"} {:sourceFile "source\tot_info.c"} {:sourceLine 221} unique __ctobpl_const_380: int;

const {:extern} {:model_const "b0"} {:sourceFile "source\tot_info.c"} {:sourceLine 222} unique __ctobpl_const_385: int;

const {:extern} {:model_const "b0"} {:sourceFile "source\tot_info.c"} {:sourceLine 224} unique __ctobpl_const_393: int;

const {:extern} {:model_const "fac"} {:sourceFile "source\tot_info.c"} {:sourceLine 223} unique __ctobpl_const_390: int;

const {:extern} {:model_const "anf"} {:sourceFile "source\tot_info.c"} {:sourceLine 224} unique __ctobpl_const_394: int;

const {:extern} {:model_const "ana"} {:sourceFile "source\tot_info.c"} {:sourceLine 221} unique __ctobpl_const_381: int;

const {:extern} {:model_const "b1"} {:sourceFile "source\tot_info.c"} {:sourceLine 222} unique __ctobpl_const_384: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 224} unique __ctobpl_const_392: int;

const {:extern} {:model_const "x"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_473: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_472: int;

const {:extern} {:model_const "result._hypot"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 557} unique __ctobpl_const_485: int;

const {:extern} {:model_const "result.log"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_475: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 718} unique __ctobpl_const_487: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_491: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_478: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_498: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 557} unique __ctobpl_const_484: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 557} unique __ctobpl_const_481: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_493: int;

const {:extern} {:model_const "_hypot.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_496: int;

const {:extern} {:model_const "LGamma.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_471: int;

const {:extern} {:model_const "result.isspace"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_564: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_497: int;

const {:extern} {:model_const "result._hypot"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_499: int;

const {:extern} {:model_const "a"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_474: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 718} unique __ctobpl_const_486: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_492: int;

const {:extern} {:model_const "_hypot.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_495: int;

const {:extern} {:model_const "exp.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_477: int;

const {:extern} {:model_const "sum"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_479: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_500: int;

const {:extern} {:model_const "result._hypotf"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 718} unique __ctobpl_const_490: int;

const {:extern} {:model_const "result.exp"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_480: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 557} unique __ctobpl_const_483: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 718} unique __ctobpl_const_489: int;

const {:extern} {:model_const "result.LGamma"} {:sourceFile "source\tot_info.c"} {:sourceLine 201} unique __ctobpl_const_476: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 891} unique __ctobpl_const_494: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 718} unique __ctobpl_const_488: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 557} unique __ctobpl_const_482: int;

const {:extern} {:model_const "isspace.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_562: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_544: int;

const {:extern} {:model_const "fgets.arg.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 55} unique __ctobpl_const_538: int;

const {:extern} {:model_const "totinfo"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_543: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 905} unique __ctobpl_const_532: int;

const {:extern} {:model_const "result.fgets"} {:sourceFile "source\tot_info.c"} {:sourceLine 55} unique __ctobpl_const_540: int;

const {:extern} {:model_const "* p"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_558: int;

const {:extern} {:model_const "* p"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_561: int;

const {:extern} {:model_const "result.QChiSq"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_549: int;

const {:extern} {:model_const "totdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_547: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 119} unique __ctobpl_const_553: int;

const {:extern} {:model_const "isspace.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_559: int;

const {:extern} {:model_const "fgets.arg.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 55} unique __ctobpl_const_536: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 55} unique __ctobpl_const_537: int;

const {:extern} {:model_const "fgets.arg.3"} {:sourceFile "source\tot_info.c"} {:sourceLine 55} unique __ctobpl_const_539: int;

const {:extern} {:model_const "totdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_545: int;

const {:extern} {:model_const "isspace.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_563: int;

const {:extern} {:model_const "p"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_556: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_546: int;

const {:extern} {:model_const "totinfo"} {:sourceFile "source\tot_info.c"} {:sourceLine 50} unique __ctobpl_const_534: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_542: int;

const {:extern} {:model_const "printf.arg.4"} {:sourceFile "source\tot_info.c"} {:sourceLine 125} unique __ctobpl_const_548: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 119} unique __ctobpl_const_554: int;

const {:extern} {:model_const "totdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 117} unique __ctobpl_const_541: int;

const {:extern} {:model_const "result.log"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 905} unique __ctobpl_const_533: int;

const {:extern} {:model_const "totdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 53} unique __ctobpl_const_535: int;

const {:extern} {:model_const "totinfo"} {:sourceFile "source\tot_info.c"} {:sourceLine 124} unique __ctobpl_const_551: int;

const {:extern} {:model_const "printf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 124} unique __ctobpl_const_550: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 119} unique __ctobpl_const_552: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 119} unique __ctobpl_const_555: int;

const {:extern} {:model_const "p"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_557: int;

const {:extern} {:model_const "p"} {:sourceFile "source\tot_info.c"} {:sourceLine 57} unique __ctobpl_const_560: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 905} unique __ctobpl_const_529: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 742} unique __ctobpl_const_517: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_507: int;

const {:extern} {:model_const "result.log"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 747} unique __ctobpl_const_528: int;

const {:extern} {:model_const "result.log10"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 742} unique __ctobpl_const_518: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_504: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 910} unique __ctobpl_const_519: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 910} unique __ctobpl_const_520: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_509: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 910} unique __ctobpl_const_521: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_511: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 910} unique __ctobpl_const_522: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_503: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_508: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_510: int;

const {:extern} {:model_const "ldexp.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_502: int;

const {:extern} {:model_const "result.ldexp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_513: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 742} unique __ctobpl_const_516: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_505: int;

const {:extern} {:model_const "result.log10"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 910} unique __ctobpl_const_523: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 747} unique __ctobpl_const_524: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 747} unique __ctobpl_const_525: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 747} unique __ctobpl_const_526: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 905} unique __ctobpl_const_530: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 747} unique __ctobpl_const_527: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 765} unique __ctobpl_const_691: int;

const {:extern} {:model_const "log.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 905} unique __ctobpl_const_531: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 742} unique __ctobpl_const_515: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 896} unique __ctobpl_const_512: int;

const {:extern} {:model_const "result.ldexp"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 723} unique __ctobpl_const_506: int;

const {:extern} {:model_const "log10.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 742} unique __ctobpl_const_514: int;

const {:extern} {:model_const "result.sinh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 770} unique __ctobpl_const_697: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 955} unique __ctobpl_const_715: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 770} unique __ctobpl_const_693: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 955} unique __ctobpl_const_713: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 955} unique __ctobpl_const_714: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 780} unique __ctobpl_const_719: int;

const {:extern} {:model_const "result.sin"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 950} unique __ctobpl_const_707: int;

const {:extern} {:model_const "result.sinh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 945} unique __ctobpl_const_702: int;

const {:extern} {:model_const "result.tan"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 780} unique __ctobpl_const_722: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 770} unique __ctobpl_const_695: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 950} unique __ctobpl_const_703: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 945} unique __ctobpl_const_698: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 950} unique __ctobpl_const_706: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 955} unique __ctobpl_const_716: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 780} unique __ctobpl_const_718: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 780} unique __ctobpl_const_721: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 770} unique __ctobpl_const_696: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 945} unique __ctobpl_const_699: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 945} unique __ctobpl_const_701: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 950} unique __ctobpl_const_704: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 775} unique __ctobpl_const_708: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 775} unique __ctobpl_const_710: int;

const {:extern} {:model_const "sqrt.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 775} unique __ctobpl_const_711: int;

const {:extern} {:model_const "result.sin"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 765} unique __ctobpl_const_692: int;

const {:extern} {:model_const "result.sqrt"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 955} unique __ctobpl_const_717: int;

const {:extern} {:model_const "result.sqrt"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 775} unique __ctobpl_const_712: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 950} unique __ctobpl_const_705: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 775} unique __ctobpl_const_709: int;

const {:extern} {:model_const "sinh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 945} unique __ctobpl_const_700: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 780} unique __ctobpl_const_720: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 770} unique __ctobpl_const_694: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 960} unique __ctobpl_const_730: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 785} unique __ctobpl_const_724: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 965} unique __ctobpl_const_735: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 785} unique __ctobpl_const_723: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 965} unique __ctobpl_const_736: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 965} unique __ctobpl_const_734: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 785} unique __ctobpl_const_725: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 960} unique __ctobpl_const_731: int;

const {:extern} {:model_const "tan.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 965} unique __ctobpl_const_733: int;

const {:extern} {:model_const "result.tan"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 965} unique __ctobpl_const_737: int;

const {:extern} {:model_const "result.tanh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 785} unique __ctobpl_const_727: int;

const {:extern} {:model_const "result.tanh"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 960} unique __ctobpl_const_732: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 960} unique __ctobpl_const_728: int;

const {:extern} {:model_const "tanh.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 785} unique __ctobpl_const_726: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 960} unique __ctobpl_const_729: int;

const {:extern} {:model_const "infodf"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_579: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 113} unique __ctobpl_const_587: int;

const {:extern} {:model_const "infodf"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_582: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 113} unique __ctobpl_const_586: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 111} unique __ctobpl_const_590: int;

const {:extern} {:model_const "result.question.33"} {:sourceFile "source\tot_info.c"} {:sourceLine 110} unique __ctobpl_const_593: int;

const {:extern} {:model_const "result.question.34"} {:sourceFile "source\tot_info.c"} {:sourceLine 110} unique __ctobpl_const_594: int;

const {:extern} {:model_const "result.question.32"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_596: int;

const {:extern} {:model_const "* p"} {:sourceFile "source\tot_info.c"} {:sourceLine 63} unique __ctobpl_const_568: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 69} unique __ctobpl_const_569: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 75} unique __ctobpl_const_573: int;

const {:extern} {:model_const "* p"} {:sourceFile "source\tot_info.c"} {:sourceLine 60} unique __ctobpl_const_566: int;

const {:extern} {:model_const "p"} {:sourceFile "source\tot_info.c"} {:sourceLine 63} unique __ctobpl_const_567: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 69} unique __ctobpl_const_570: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 75} unique __ctobpl_const_572: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_581: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_583: int;

const {:extern} {:model_const "p"} {:sourceFile "source\tot_info.c"} {:sourceLine 60} unique __ctobpl_const_565: int;

const {:extern} {:model_const "result.InfoTbl"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_584: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_578: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 83} unique __ctobpl_const_575: int;

const {:extern} {:model_const "result.sscanf"} {:sourceFile "source\tot_info.c"} {:sourceLine 69} unique __ctobpl_const_571: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 110} unique __ctobpl_const_589: int;

const {:extern} {:model_const "result.question.34"} {:sourceFile "source\tot_info.c"} {:sourceLine 111} unique __ctobpl_const_591: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_580: int;

const {:extern} {:model_const "result.question.34"} {:sourceFile "source\tot_info.c"} {:sourceLine 111} unique __ctobpl_const_592: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 83} unique __ctobpl_const_576: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 83} unique __ctobpl_const_574: int;

const {:extern} {:model_const "r"} {:sourceFile "source\tot_info.c"} {:sourceLine 95} unique __ctobpl_const_577: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 99} unique __ctobpl_const_585: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_588: int;

const {:extern} {:model_const "result.question.33"} {:sourceFile "source\tot_info.c"} {:sourceLine 110} unique __ctobpl_const_595: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_602: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 105} unique __ctobpl_const_614: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_604: int;

const {:extern} {:model_const "printf.arg.4"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_609: int;

const {:extern} {:model_const "result.QChiSq"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_610: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 84} unique __ctobpl_const_618: int;

const {:extern} {:model_const "i"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_622: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_623: int;

const {:extern} {:model_const "totdf"} {:sourceFile "source\tot_info.c"} {:sourceLine 106} unique __ctobpl_const_615: int;

const {:extern} {:model_const "f[i * c + j]"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_625: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_605: int;

const {:extern} {:model_const "scanf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_626: int;

const {:extern} {:model_const "c"} {:sourceFile "source\tot_info.c"} {:sourceLine 84} unique __ctobpl_const_619: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_624: int;

const {:extern} {:model_const "j"} {:sourceFile "source\tot_info.c"} {:sourceLine 84} unique __ctobpl_const_617: int;

const {:extern} {:model_const "result.scanf"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_627: int;

const {:extern} {:model_const "printf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 102} unique __ctobpl_const_611: int;

const {:extern} {:model_const "j"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_628: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_600: int;

const {:extern} {:model_const "infodf"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_608: int;

const {:extern} {:model_const "infodf"} {:sourceFile "source\tot_info.c"} {:sourceLine 106} unique __ctobpl_const_616: int;

const {:extern} {:model_const "result.question.32"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_599: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_603: int;

const {:extern} {:model_const "QChiSq.arg.1"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_607: int;

const {:extern} {:model_const "info"} {:sourceFile "source\tot_info.c"} {:sourceLine 102} unique __ctobpl_const_612: int;

const {:extern} {:model_const "i"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_620: int;

const {:extern} {:model_const "infodf"} {:sourceFile "source\tot_info.c"} {:sourceLine 103} unique __ctobpl_const_606: int;

const {:extern} {:model_const "scanf.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 85} unique __ctobpl_const_621: int;

const {:extern} {:model_const "result.question.32"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_598: int;

const {:extern} {:model_const "totinfo"} {:sourceFile "source\tot_info.c"} {:sourceLine 105} unique __ctobpl_const_613: int;

const {:extern} {:model_const "result.question.33"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_597: int;

const {:extern} {:model_const "result.question.32"} {:sourceFile "source\tot_info.c"} {:sourceLine 109} unique __ctobpl_const_601: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_647: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 88} unique __ctobpl_const_630: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_650: int;

const {:extern} {:model_const "result.modf"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_653: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 77} unique __ctobpl_const_634: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 77} unique __ctobpl_const_633: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 65} unique __ctobpl_const_644: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_648: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_651: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 754} unique __ctobpl_const_654: int;

const {:extern} {:model_const "* _Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 754} unique __ctobpl_const_655: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 754} unique __ctobpl_const_656: int;

const {:extern} {:model_const "_F"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 755} unique __ctobpl_const_657: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_658: int;

const {:extern} {:model_const "p"} {:sourceFile "unknown"} {:sourceLine 0} unique __ctobpl_const_645: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 71} unique __ctobpl_const_640: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_646: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_649: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 71} unique __ctobpl_const_639: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 65} unique __ctobpl_const_641: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 65} unique __ctobpl_const_643: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_659: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 88} unique __ctobpl_const_629: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 87} unique __ctobpl_const_631: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 87} unique __ctobpl_const_632: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 77} unique __ctobpl_const_636: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 71} unique __ctobpl_const_637: int;

const {:extern} {:model_const "fputs.arg.2"} {:sourceFile "source\tot_info.c"} {:sourceLine 77} unique __ctobpl_const_635: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 71} unique __ctobpl_const_638: int;

const {:extern} {:model_const "result.__iob_func"} {:sourceFile "source\tot_info.c"} {:sourceLine 65} unique __ctobpl_const_642: int;

const {:extern} {:model_const "_F"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 753} unique __ctobpl_const_652: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_670: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_674: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_676: int;

const {:extern} {:model_const "result.pow"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_678: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_681: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_660: int;

const {:extern} {:model_const "* _Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 923} unique __ctobpl_const_667: int;

const {:extern} {:model_const "_F"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 924} unique __ctobpl_const_669: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_683: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_680: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_677: int;

const {:extern} {:model_const "_F"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_664: int;

const {:extern} {:model_const "result.modf"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_665: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_671: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_679: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 923} unique __ctobpl_const_668: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_684: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_685: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_686: int;

const {:extern} {:model_const "result.pow"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_687: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 933} unique __ctobpl_const_682: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_673: int;

const {:extern} {:model_const "pow.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_672: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 765} unique __ctobpl_const_688: int;

const {:extern} {:model_const "sin.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 765} unique __ctobpl_const_690: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_661: int;

const {:extern} {:model_const "_Y"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 923} unique __ctobpl_const_666: int;

const {:extern} {:model_const "_X"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 765} unique __ctobpl_const_689: int;

const {:extern} {:model_const "modf.arg.1"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_662: int;

const {:extern} {:model_const "pow.arg.2"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 760} unique __ctobpl_const_675: int;

const {:extern} {:model_const "_I"} {:sourceFile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceLine 922} unique __ctobpl_const_663: int;

procedure {:extern} __iob_func() returns (__dummy_ret__iob_func: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} _chgsign(__dummy_formal__chgsign_0.__1: int) returns (__dummy_ret_chgsign: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} _copysign(__dummy_formal__copysign_0.__1: int, __dummy_formal__copysign_1.__1: int) returns (__dummy_ret_copysign: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} _hypot(__dummy_formal__hypot_0.__1: int, __dummy_formal__hypot_1.__1: int) returns (__dummy_ret_hypot: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} _hypotf(__dummy_formal__hypotf_0.__1: int, __dummy_formal__hypotf_1.__1: int) returns (__dummy_ret_hypotf: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} acos(__dummy_formal_acos_0.__1: int) returns (__dummy_retacos: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} asin(__dummy_formal_asin_0.__1: int) returns (__dummy_retasin: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} atan(__dummy_formal_atan_0.__1: int) returns (__dummy_retatan: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} atan2(__dummy_formal_atan2_0.__1: int, __dummy_formal_atan2_1.__1: int) returns (__dummy_retatan2: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} ceil(__dummy_formal_ceil_0.__1: int) returns (__dummy_retceil: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} cos(__dummy_formal_cos_0.__1: int) returns (__dummy_retcos: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} cosh(__dummy_formal_cosh_0.__1: int) returns (__dummy_retcosh: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} exp(__dummy_formal_exp_0.__1: int) returns (__dummy_retexp: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} fabs(__dummy_formal_fabs_0.__1: int) returns (__dummy_retfabs: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} fgets(__dummy_formal_fgets_0.__1: int, __dummy_formal_fgets_1.__1: int, __dummy_formal_fgets_2.__1: int) returns (__dummy_retfgets: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} floor(__dummy_formal_floor_0.__1: int) returns (__dummy_retfloor: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} fmod(__dummy_formal_fmod_0.__1: int, __dummy_formal_fmod_1.__1: int) returns (__dummy_retfmod: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} fputs(__dummy_formal_fputs_0.__1: int, __dummy_formal_fputs_1.__1: int) returns (__dummy_retfputs: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} frexp(__dummy_formal_frexp_0.__1: int, __dummy_formal_frexp_1.__1: int) returns (__dummy_retfrexp: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} isspace(__dummy_formal_isspace_0.__1: int) returns (__dummy_retisspace: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} ldexp(__dummy_formal_ldexp_0.__1: int, __dummy_formal_ldexp_1.__1: int) returns (__dummy_retldexp: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} log(__dummy_formal_log_0.__1: int) returns (__dummy_retlog: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} log10(__dummy_formal_log10_0.__1: int) returns (__dummy_retlog10: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} modf(__dummy_formal_modf_0.__1: int, __dummy_formal_modf_1.__1: int) returns (__dummy_retmodf: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} pow(__dummy_formal_pow_0.__1: int, __dummy_formal_pow_1.__1: int) returns (__dummy_retpow: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} sin(__dummy_formal_sin_0.__1: int) returns (__dummy_retsin: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} sinh(__dummy_formal_sinh_0.__1: int) returns (__dummy_retsinh: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} sqrt(__dummy_formal_sqrt_0.__1: int) returns (__dummy_retsqrt: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} tan(__dummy_formal_tan_0.__1: int) returns (__dummy_rettan: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} tanh(__dummy_formal_tanh_0.__1: int) returns (__dummy_rettanh: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



procedure {:extern} InfoTbl(r.__1: int, c.__1: int, f.__1: int, pdf.__1: int) returns (result.InfoTbl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} InfoTbl(r.__1: int, c.__1: int, f.__1: int, pdf.__1: int) returns (result.InfoTbl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} N: int;
  var {:extern} c: int;
  var {:extern} cdf: int;
  var {:extern} f: int;
  var {:extern} i: int;
  var {:extern} info: int;
  var {:extern} j: int;
  var {:extern} k: int;
  var {:extern} $malloc.arg.1$3$: int;
  var {:extern} $malloc.arg.1$5$: int;
  var {:extern} pdf: int;
  var {:extern} pi: int;
  var {:extern} pij: int;
  var {:extern} pj: int;
  var {:extern} r: int;
  var {:extern} rdf: int;
  var {:extern} result.log$6: int;
  var {:extern} result.log$7: int;
  var {:extern} result.log$8: int;
  var {:extern} result.log$9: int;
  var {:extern} result.malloc$2: int;
  var {:extern} result.malloc$4: int;
  var {:extern} sum: int;
  var {:extern} xi: int;
  var {:extern} xj: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(f.__1, alloc);
    assume INT_LT(pdf.__1, alloc);
    N := 0;
    c := 0;
    cdf := 0;
    f := 0;
    i := 0;
    info := 0;
    j := 0;
    k := 0;
    $malloc.arg.1$3$ := 0;
    $malloc.arg.1$5$ := 0;
    pdf := 0;
    pi := 0;
    pij := 0;
    pj := 0;
    r := 0;
    rdf := 0;
    result.InfoTbl$1 := 0;
    result.log$6 := 0;
    result.log$7 := 0;
    result.log$8 := 0;
    result.log$9 := 0;
    result.malloc$2 := 0;
    result.malloc$4 := 0;
    sum := 0;
    xi := 0;
    xj := 0;
    r := r.__1;
    c := c.__1;
    f := f.__1;
    pdf := pdf.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 299} true;
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 300} true;
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 301} true;
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 302} true;
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 303} true;
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 304} true;
    goto label_9;

  label_9:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 305} true;
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 305} true;
    rdf := MINUS_BOTH_PTR_OR_BOTH_INT(r, 1, 1);
    assume value_is(__ctobpl_const_1, rdf);
    assume value_is(__ctobpl_const_2, r);
    goto label_11;

  label_11:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 306} true;
    goto label_12;

  label_12:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 306} true;
    cdf := MINUS_BOTH_PTR_OR_BOTH_INT(c, 1, 1);
    assume value_is(__ctobpl_const_3, cdf);
    assume value_is(__ctobpl_const_4, c);
    goto label_13;

  label_13:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 307} true;
    goto label_14;

  label_14:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 307} true;
    sum := 0;
    assume value_is(__ctobpl_const_5, sum);
    goto label_15;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 308} true;
    goto label_15_true, label_15_false;

  label_15_false:
    assume !INT_LEQ(rdf, 0);
    assume value_is(__ctobpl_const_6, rdf);
    goto label_16;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 308} true;
    goto label_16_true, label_16_false;

  label_16_false:
    assume !INT_LEQ(cdf, 0);
    assume value_is(__ctobpl_const_7, cdf);
    goto label_20;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 314} true;
    assert pdf != 0;
    Mem_T.INT4 := Mem_T.INT4[pdf := MULT(rdf, cdf)];
    assume value_is(__ctobpl_const_8, pdf);
    assume value_is(__ctobpl_const_9, Mem_T.INT4[pdf]);
    assume value_is(__ctobpl_const_10, rdf);
    assume value_is(__ctobpl_const_11, cdf);
    goto label_21;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 316} true;
    $malloc.arg.1$3$ := MULT(r, 8);
    assume value_is(__ctobpl_const_12, $malloc.arg.1$3$);
    assume value_is(__ctobpl_const_13, r);
    goto label_22;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 316} true;
    call result.malloc$2 := __HAVOC_malloc($malloc.arg.1$3$);
    assume value_is(__ctobpl_const_14, $malloc.arg.1$3$);
    assume value_is(__ctobpl_const_15, $malloc.arg.1$3$);
    assume value_is(__ctobpl_const_16, $malloc.arg.1$3$);
    goto label_25;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 316} true;
    xi := result.malloc$2;
    assume value_is(__ctobpl_const_17, xi);
    assume value_is(__ctobpl_const_18, result.malloc$2);
    goto label_26;

  label_26:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 316} true;
    goto label_26_true, label_26_false;

  label_26_false:
    assume xi == 0;
    assume value_is(__ctobpl_const_19, xi);
    goto label_27;

  label_27:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 318} true;
    info := -4;
    assume value_is(__ctobpl_const_20, info);
    goto label_104;

  label_104:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 319} true;
    goto label_19;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 405} true;
    result.InfoTbl$1 := info;
    assume value_is(__ctobpl_const_131, info);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 406} true;
    return;

  label_26_true:
    assume xi != 0;
    assume value_is(__ctobpl_const_19, xi);
    goto label_28;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 322} true;
    $malloc.arg.1$5$ := MULT(c, 8);
    assume value_is(__ctobpl_const_21, $malloc.arg.1$5$);
    assume value_is(__ctobpl_const_22, c);
    goto label_29;

  label_29:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 322} true;
    call result.malloc$4 := __HAVOC_malloc($malloc.arg.1$5$);
    assume value_is(__ctobpl_const_23, $malloc.arg.1$5$);
    assume value_is(__ctobpl_const_24, $malloc.arg.1$5$);
    assume value_is(__ctobpl_const_25, $malloc.arg.1$5$);
    goto label_32;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 322} true;
    xj := result.malloc$4;
    assume value_is(__ctobpl_const_26, xj);
    assume value_is(__ctobpl_const_27, result.malloc$4);
    goto label_33;

  label_33:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 322} true;
    goto label_33_true, label_33_false;

  label_33_false:
    assume xj == 0;
    assume value_is(__ctobpl_const_28, xj);
    goto label_34;

  label_34:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 324} true;
    info := -4;
    assume value_is(__ctobpl_const_29, info);
    goto label_103;

  label_103:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 325} true;
    goto label_52;

  label_52:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 403} true;
    call __HAVOC_free(xi);
    assume value_is(__ctobpl_const_128, xi);
    assume value_is(__ctobpl_const_129, xi);
    goto label_19;

  label_33_true:
    assume xj != 0;
    assume value_is(__ctobpl_const_28, xj);
    goto label_35;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 330} true;
    N := 0;
    assume value_is(__ctobpl_const_30, N);
    goto label_36;

  label_36:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 332} true;
    i := 0;
    assume value_is(__ctobpl_const_31, i);
    goto label_37;

  label_37:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 332} true;
    goto label_37_head;

  label_37_head:
    call N, i, j, k, sum, tempBoogie0 := InfoTbl_loop_label_37_head(N, c, f, i, j, k, r, sum, xi, tempBoogie0);
    goto label_37_head_last;

  label_37_false:
    assume !INT_LT(i, r);
    assume value_is(__ctobpl_const_32, i);
    assume value_is(__ctobpl_const_33, r);
    goto label_38;

  label_38:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 352} true;
    goto label_38_true, label_38_false;

  label_38_false:
    assume !INT_LEQ(N, 0);
    assume value_is(__ctobpl_const_34, N);
    goto label_57;

  label_57:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 360} true;
    j := 0;
    assume value_is(__ctobpl_const_35, j);
    goto label_60;

  label_60:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 360} true;
    goto label_60_head;

  label_60_head:
    call i, j, sum, tempBoogie0 := InfoTbl_loop_label_60_head(c, f, i, j, r, sum, xj, tempBoogie0);
    goto label_60_head_last;

  label_60_false:
    assume !INT_LT(j, c);
    assume value_is(__ctobpl_const_36, j);
    assume value_is(__ctobpl_const_37, c);
    goto label_61;

  label_61:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 372} true;
    call result.log$6 := log(N);
    assume value_is(__ctobpl_const_38, N);
    assume value_is(__ctobpl_const_39, N);
    goto label_71;

  label_71:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 372} true;
    info := MULT(N, result.log$6);
    assume value_is(__ctobpl_const_40, info);
    assume value_is(__ctobpl_const_41, N);
    assume value_is(__ctobpl_const_42, result.log$6);
    goto label_72;

  label_72:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 374} true;
    i := 0;
    assume value_is(__ctobpl_const_43, i);
    goto label_73;

  label_73:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 374} true;
    goto label_73_head;

  label_73_head:
    call i, info, j, pi, pij, result.log$7, result.log$8, tempBoogie0 := InfoTbl_loop_label_73_head(c, f, i, info, j, pi, pij, r, result.log$7, result.log$8, xi, tempBoogie0);
    goto label_73_head_last;

  label_73_false:
    assume !INT_LT(i, r);
    assume value_is(__ctobpl_const_44, i);
    assume value_is(__ctobpl_const_45, r);
    goto label_74;

  label_74:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 390} true;
    j := 0;
    assume value_is(__ctobpl_const_46, j);
    goto label_93;

  label_93:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 390} true;
    goto label_93_head;

  label_93_head:
    call info, j, pj, result.log$9, tempBoogie0 := InfoTbl_loop_label_93_head(c, info, j, pj, result.log$9, xj, tempBoogie0);
    goto label_93_head_last;

  label_93_false:
    assume !INT_LT(j, c);
    assume value_is(__ctobpl_const_47, j);
    assume value_is(__ctobpl_const_48, c);
    goto label_94;

  label_94:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 398} true;
    tempBoogie0 := INT_MULT(info, 2);
    info := tempBoogie0;
    assume value_is(__ctobpl_const_49, info);
    goto label_49;

  label_49:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 401} true;
    call __HAVOC_free(xj);
    assume value_is(__ctobpl_const_126, xj);
    assume value_is(__ctobpl_const_127, xj);
    goto label_52;

  label_93_true:
    assume INT_LT(j, c);
    assume value_is(__ctobpl_const_47, j);
    assume value_is(__ctobpl_const_48, c);
    goto label_95;

  label_95:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 392} true;
    goto label_96;

  label_96:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 392} true;
    assert xj != 0;
    pj := Mem_T.FLOAT[PLUS(xj, 8, j)];
    assume value_is(__ctobpl_const_50, pj);
    assume value_is(__ctobpl_const_51, xj);
    assume value_is(__ctobpl_const_52, j);
    assume value_is(__ctobpl_const_53, Mem_T.FLOAT[PLUS(xj, 8, j)]);
    goto label_97;

  label_97:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 394} true;
    goto label_97_true, label_97_false;

  label_97_false:
    assume !INT_LT(0, pj);
    assume value_is(__ctobpl_const_54, pj);
    goto label_98;

  label_98:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_60, j);
    goto label_98_dummy;

  label_97_true:
    assume INT_LT(0, pj);
    assume value_is(__ctobpl_const_54, pj);
    goto label_99;

  label_99:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 395} true;
    call result.log$9 := log(pj);
    assume value_is(__ctobpl_const_55, pj);
    assume value_is(__ctobpl_const_56, pj);
    goto label_102;

  label_102:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 395} true;
    tempBoogie0 := MINUS_BOTH_PTR_OR_BOTH_INT(info, MULT(pj, result.log$9), 1);
    info := tempBoogie0;
    assume value_is(__ctobpl_const_57, info);
    assume value_is(__ctobpl_const_58, pj);
    assume value_is(__ctobpl_const_59, result.log$9);
    goto label_98;

  label_73_true:
    assume INT_LT(i, r);
    assume value_is(__ctobpl_const_44, i);
    assume value_is(__ctobpl_const_45, r);
    goto label_75;

  label_75:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 376} true;
    goto label_76;

  label_76:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 376} true;
    assert xi != 0;
    pi := Mem_T.FLOAT[PLUS(xi, 8, i)];
    assume value_is(__ctobpl_const_61, pi);
    assume value_is(__ctobpl_const_62, xi);
    assume value_is(__ctobpl_const_63, i);
    assume value_is(__ctobpl_const_64, Mem_T.FLOAT[PLUS(xi, 8, i)]);
    goto label_77;

  label_77:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 378} true;
    goto label_77_true, label_77_false;

  label_77_false:
    assume !INT_LT(0, pi);
    assume value_is(__ctobpl_const_65, pi);
    goto label_78;

  label_78:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 381} true;
    j := 0;
    assume value_is(__ctobpl_const_71, j);
    goto label_83;

  label_83:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 381} true;
    goto label_83_head;

  label_83_head:
    call info, j, pij, result.log$8, tempBoogie0 := InfoTbl_loop_label_83_head(c, f, i, info, j, pij, result.log$8, tempBoogie0);
    goto label_83_head_last;

  label_83_false:
    assume !INT_LT(j, c);
    assume value_is(__ctobpl_const_72, j);
    assume value_is(__ctobpl_const_73, c);
    goto label_84;

  label_84:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    i := PLUS(i, 1, 1);
    assume value_is(__ctobpl_const_74, i);
    goto label_84_dummy;

  label_83_true:
    assume INT_LT(j, c);
    assume value_is(__ctobpl_const_72, j);
    assume value_is(__ctobpl_const_73, c);
    goto label_85;

  label_85:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    goto label_86;

  label_86:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    assert f != 0;
    pij := Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))];
    assume value_is(__ctobpl_const_75, pij);
    assume value_is(__ctobpl_const_76, f);
    assume value_is(__ctobpl_const_77, i);
    assume value_is(__ctobpl_const_78, c);
    assume value_is(__ctobpl_const_79, j);
    assume value_is(__ctobpl_const_80, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))]);
    goto label_87;

  label_87:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 385} true;
    goto label_87_true, label_87_false;

  label_87_false:
    assume !INT_LT(0, pij);
    assume value_is(__ctobpl_const_81, pij);
    goto label_88;

  label_88:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_87, j);
    goto label_88_dummy;

  label_87_true:
    assume INT_LT(0, pij);
    assume value_is(__ctobpl_const_81, pij);
    goto label_89;

  label_89:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    call result.log$8 := log(pij);
    assume value_is(__ctobpl_const_82, pij);
    assume value_is(__ctobpl_const_83, pij);
    goto label_92;

  label_92:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    tempBoogie0 := PLUS(info, 1, MULT(pij, result.log$8));
    info := tempBoogie0;
    assume value_is(__ctobpl_const_84, info);
    assume value_is(__ctobpl_const_85, pij);
    assume value_is(__ctobpl_const_86, result.log$8);
    goto label_88;

  label_77_true:
    assume INT_LT(0, pi);
    assume value_is(__ctobpl_const_65, pi);
    goto label_79;

  label_79:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 379} true;
    call result.log$7 := log(pi);
    assume value_is(__ctobpl_const_66, pi);
    assume value_is(__ctobpl_const_67, pi);
    goto label_82;

  label_82:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 379} true;
    tempBoogie0 := MINUS_BOTH_PTR_OR_BOTH_INT(info, MULT(pi, result.log$7), 1);
    info := tempBoogie0;
    assume value_is(__ctobpl_const_68, info);
    assume value_is(__ctobpl_const_69, pi);
    assume value_is(__ctobpl_const_70, result.log$7);
    goto label_78;

  label_60_true:
    assume INT_LT(j, c);
    assume value_is(__ctobpl_const_36, j);
    assume value_is(__ctobpl_const_37, c);
    goto label_64;

  label_64:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 362} true;
    sum := 0;
    assume value_is(__ctobpl_const_88, sum);
    goto label_65;

  label_65:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 364} true;
    i := 0;
    assume value_is(__ctobpl_const_89, i);
    goto label_66;

  label_66:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 364} true;
    goto label_66_head;

  label_66_head:
    call i, sum, tempBoogie0 := InfoTbl_loop_label_66_head(c, f, i, j, r, sum, tempBoogie0);
    goto label_66_head_last;

  label_66_false:
    assume !INT_LT(i, r);
    assume value_is(__ctobpl_const_90, i);
    assume value_is(__ctobpl_const_91, r);
    goto label_67;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 367} true;
    assert xj != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[PLUS(xj, 8, j) := sum];
    assume value_is(__ctobpl_const_92, xj);
    assume value_is(__ctobpl_const_93, j);
    assume value_is(__ctobpl_const_94, Mem_T.FLOAT[PLUS(xj, 8, j)]);
    assume value_is(__ctobpl_const_95, sum);
    goto label_70;

  label_70:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_96, j);
    goto label_70_dummy;

  label_66_true:
    assume INT_LT(i, r);
    assume value_is(__ctobpl_const_90, i);
    assume value_is(__ctobpl_const_91, r);
    goto label_68;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 365} true;
    assert f != 0;
    tempBoogie0 := PLUS(sum, 1, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))]);
    sum := tempBoogie0;
    assume value_is(__ctobpl_const_97, sum);
    assume value_is(__ctobpl_const_98, f);
    assume value_is(__ctobpl_const_99, i);
    assume value_is(__ctobpl_const_100, c);
    assume value_is(__ctobpl_const_101, j);
    assume value_is(__ctobpl_const_102, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))]);
    goto label_69;

  label_69:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    i := PLUS(i, 1, 1);
    assume value_is(__ctobpl_const_103, i);
    goto label_69_dummy;

  label_38_true:
    assume INT_LEQ(N, 0);
    assume value_is(__ctobpl_const_34, N);
    goto label_58;

  label_58:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 354} true;
    info := -1;
    assume value_is(__ctobpl_const_104, info);
    goto label_59;

  label_59:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 355} true;
    goto label_49;

  label_37_true:
    assume INT_LT(i, r);
    assume value_is(__ctobpl_const_32, i);
    assume value_is(__ctobpl_const_33, r);
    goto label_39;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 334} true;
    sum := 0;
    assume value_is(__ctobpl_const_105, sum);
    goto label_40;

  label_40:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 336} true;
    j := 0;
    assume value_is(__ctobpl_const_106, j);
    goto label_41;

  label_41:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 336} true;
    goto label_41_head;

  label_41_head:
    call j, k, sum, tempBoogie0 := InfoTbl_loop_label_41_head(c, f, i, j, k, sum, tempBoogie0);
    goto label_41_head_last;

  label_41_false:
    assume !INT_LT(j, c);
    assume value_is(__ctobpl_const_107, j);
    assume value_is(__ctobpl_const_108, c);
    goto label_42;

  label_42:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 349} true;
    assert xi != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[PLUS(xi, 8, i) := sum];
    tempBoogie0 := PLUS(N, 1, Mem_T.FLOAT[PLUS(xi, 8, i)]);
    N := tempBoogie0;
    assume value_is(__ctobpl_const_109, N);
    assume value_is(__ctobpl_const_110, xi);
    assume value_is(__ctobpl_const_111, i);
    assume value_is(__ctobpl_const_112, Mem_T.FLOAT[PLUS(xi, 8, i)]);
    assume value_is(__ctobpl_const_113, sum);
    goto label_56;

  label_56:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    i := PLUS(i, 1, 1);
    assume value_is(__ctobpl_const_114, i);
    goto label_56_dummy;

  label_41_true:
    assume INT_LT(j, c);
    assume value_is(__ctobpl_const_107, j);
    assume value_is(__ctobpl_const_108, c);
    goto label_43;

  label_43:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    goto label_44;

  label_44:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    assert f != 0;
    k := Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))];
    assume value_is(__ctobpl_const_115, k);
    assume value_is(__ctobpl_const_116, f);
    assume value_is(__ctobpl_const_117, i);
    assume value_is(__ctobpl_const_118, c);
    assume value_is(__ctobpl_const_119, j);
    assume value_is(__ctobpl_const_120, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, c), 1, j))]);
    goto label_45;

  label_45:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 340} true;
    goto label_45_true, label_45_false;

  label_45_false:
    assume !INT_LT(k, 0);
    assume value_is(__ctobpl_const_121, k);
    goto label_46;

  label_46:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 346} true;
    tempBoogie0 := PLUS(sum, 1, k);
    sum := tempBoogie0;
    assume value_is(__ctobpl_const_122, sum);
    assume value_is(__ctobpl_const_123, k);
    goto label_55;

  label_55:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_124, j);
    goto label_55_dummy;

  label_45_true:
    assume INT_LT(k, 0);
    assume value_is(__ctobpl_const_121, k);
    goto label_47;

  label_47:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 342} true;
    info := -2;
    assume value_is(__ctobpl_const_125, info);
    goto label_48;

  label_48:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 343} true;
    goto label_49;

  label_16_true:
    assume INT_LEQ(cdf, 0);
    assume value_is(__ctobpl_const_7, cdf);
    goto label_17;

  label_17:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 310} true;
    info := -3;
    assume value_is(__ctobpl_const_130, info);
    goto label_18;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 311} true;
    goto label_19;

  label_15_true:
    assume INT_LEQ(rdf, 0);
    assume value_is(__ctobpl_const_6, rdf);
    goto label_17;

  label_98_dummy:
    assume false;
    return;

  label_93_head_last:
    goto label_93_true, label_93_false;

  label_88_dummy:
    assume false;
    return;

  label_83_head_last:
    goto label_83_true, label_83_false;

  label_84_dummy:
    assume false;
    return;

  label_73_head_last:
    goto label_73_true, label_73_false;

  label_69_dummy:
    assume false;
    return;

  label_66_head_last:
    goto label_66_true, label_66_false;

  label_70_dummy:
    assume false;
    return;

  label_60_head_last:
    goto label_60_true, label_60_false;

  label_55_dummy:
    assume false;
    return;

  label_41_head_last:
    goto label_41_true, label_41_false;

  label_56_dummy:
    assume false;
    return;

  label_37_head_last:
    goto label_37_true, label_37_false;
}



procedure {:extern} LGamma(x.__1: int) returns (result.LGamma$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} LGamma(x.__1: int) returns (result.LGamma$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} $LGamma.arg.1$6$: int;
  var {:extern} j: int;
  var {:extern} $log.arg.1$4$: int;
  var {:extern} $log.arg.1$9$: int;
  var {:extern} pix: int;
  var {:extern} result.LGamma$5: int;
  var {:extern} result.log$2: int;
  var {:extern} result.log$7: int;
  var {:extern} result.log$8: int;
  var {:extern} result.sin$3: int;
  var {:extern} ser: int;
  var {:extern} tmp: int;
  var {:extern} x: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    $LGamma.arg.1$6$ := 0;
    j := 0;
    $log.arg.1$4$ := 0;
    $log.arg.1$9$ := 0;
    pix := 0;
    result.LGamma$1 := 0;
    result.LGamma$5 := 0;
    result.log$2 := 0;
    result.log$7 := 0;
    result.log$8 := 0;
    result.sin$3 := 0;
    ser := 0;
    tmp := 0;
    x := 0;
    x := x.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 158} true;
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 158} true;
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 159} true;
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 162} true;
    x := MINUS_BOTH_PTR_OR_BOTH_INT(x, 1, 1);
    goto label_6_true, label_6_false;

  label_6_false:
    assume !INT_LT(x, 0);
    assume value_is(__ctobpl_const_132, x);
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 169} true;
    tmp := PLUS(x, 1, BOOGIE_FLOAT_CONST_5.5);
    assume value_is(__ctobpl_const_133, tmp);
    assume value_is(__ctobpl_const_134, x);
    goto label_22;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 170} true;
    call result.log$7 := log(tmp);
    assume value_is(__ctobpl_const_135, tmp);
    assume value_is(__ctobpl_const_136, tmp);
    goto label_25;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 170} true;
    tempBoogie0 := MINUS_BOTH_PTR_OR_BOTH_INT(tmp, MULT(PLUS(x, 1, BOOGIE_FLOAT_CONST_0.5), result.log$7), 1);
    tmp := tempBoogie0;
    assume value_is(__ctobpl_const_137, tmp);
    assume value_is(__ctobpl_const_138, x);
    assume value_is(__ctobpl_const_139, result.log$7);
    goto label_26;

  label_26:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 172} true;
    ser := 1;
    assume value_is(__ctobpl_const_140, ser);
    goto label_27;

  label_27:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 174} true;
    j := 0;
    assume value_is(__ctobpl_const_141, j);
    goto label_28;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 174} true;
    goto label_28_head;

  label_28_head:
    call j, ser, x, tempBoogie0 := LGamma_loop_label_28_head(j, ser, x, tempBoogie0);
    goto label_28_head_last;

  label_28_false:
    assume !INT_LT(j, 6);
    assume value_is(__ctobpl_const_142, j);
    goto label_29;

  label_29:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 177} true;
    $log.arg.1$9$ := MULT(BOOGIE_FLOAT_CONST_2.50663, ser);
    assume value_is(__ctobpl_const_143, $log.arg.1$9$);
    assume value_is(__ctobpl_const_144, ser);
    goto label_32;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 177} true;
    call result.log$8 := log($log.arg.1$9$);
    assume value_is(__ctobpl_const_145, $log.arg.1$9$);
    assume value_is(__ctobpl_const_146, $log.arg.1$9$);
    goto label_35;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 177} true;
    result.LGamma$1 := PLUS(-tmp, 1, result.log$8);
    assume value_is(__ctobpl_const_147, tmp);
    assume value_is(__ctobpl_const_148, result.log$8);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 178} true;
    return;

  label_28_true:
    assume INT_LT(j, 6);
    assume value_is(__ctobpl_const_142, j);
    goto label_30;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 175} true;
    assert cof != 0;
    x := PLUS(x, 1, 1);
    tempBoogie0 := PLUS(ser, 1, BINARY_BOTH_INT(Mem_T.FLOAT[PLUS(cof, 8, j)], x));
    ser := tempBoogie0;
    assume value_is(__ctobpl_const_149, ser);
    assume value_is(__ctobpl_const_150, j);
    assume value_is(__ctobpl_const_151, Mem_T.FLOAT[PLUS(cof, 8, j)]);
    assume value_is(__ctobpl_const_152, x);
    goto label_31;

  label_31:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_153, j);
    goto label_31_dummy;

  label_6_true:
    assume INT_LT(x, 0);
    assume value_is(__ctobpl_const_132, x);
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 164} true;
    goto label_9;

  label_9:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 164} true;
    pix := MULT(BOOGIE_FLOAT_CONST_3.14159, x);
    assume value_is(__ctobpl_const_154, pix);
    assume value_is(__ctobpl_const_155, x);
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    call result.sin$3 := sin(pix);
    assume value_is(__ctobpl_const_156, pix);
    assume value_is(__ctobpl_const_157, pix);
    goto label_13;

  label_13:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    $log.arg.1$4$ := BINARY_BOTH_INT(pix, result.sin$3);
    assume value_is(__ctobpl_const_158, $log.arg.1$4$);
    assume value_is(__ctobpl_const_159, pix);
    assume value_is(__ctobpl_const_160, result.sin$3);
    goto label_14;

  label_14:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    call result.log$2 := log($log.arg.1$4$);
    assume value_is(__ctobpl_const_161, $log.arg.1$4$);
    assume value_is(__ctobpl_const_162, $log.arg.1$4$);
    goto label_17;

  label_17:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    $LGamma.arg.1$6$ := MINUS_BOTH_PTR_OR_BOTH_INT(1, x, 1);
    assume value_is(__ctobpl_const_163, $LGamma.arg.1$6$);
    assume value_is(__ctobpl_const_164, x);
    goto label_18;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    call result.LGamma$5 := LGamma($LGamma.arg.1$6$);
    assume value_is(__ctobpl_const_165, $LGamma.arg.1$6$);
    assume value_is(__ctobpl_const_166, $LGamma.arg.1$6$);
    goto label_21;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 166} true;
    result.LGamma$1 := MINUS_BOTH_PTR_OR_BOTH_INT(result.log$2, result.LGamma$5, 1);
    assume value_is(__ctobpl_const_167, result.log$2);
    assume value_is(__ctobpl_const_168, result.LGamma$5);
    goto label_1;

  label_31_dummy:
    assume false;
    return;

  label_28_head_last:
    goto label_28_true, label_28_false;
}



procedure {:extern} QChiSq(chisq.__1: int, df.__1: int) returns (result.QChiSq$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} QChiSq(chisq.__1: int, df.__1: int) returns (result.QChiSq$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} $QGamma.arg.1$4$: int;
  var {:extern} $QGamma.arg.2$3$: int;
  var {:extern} chisq: int;
  var {:extern} df: int;
  var {:extern} result.QGamma$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    $QGamma.arg.1$4$ := 0;
    $QGamma.arg.2$3$ := 0;
    chisq := 0;
    df := 0;
    result.QChiSq$1 := 0;
    result.QGamma$2 := 0;
    chisq := chisq.__1;
    df := df.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 256} true;
    $QGamma.arg.2$3$ := BINARY_BOTH_INT(chisq, 2);
    assume value_is(__ctobpl_const_169, $QGamma.arg.2$3$);
    assume value_is(__ctobpl_const_170, chisq);
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 256} true;
    $QGamma.arg.1$4$ := BINARY_BOTH_INT(df, 2);
    assume value_is(__ctobpl_const_171, $QGamma.arg.1$4$);
    assume value_is(__ctobpl_const_172, df);
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 256} true;
    call result.QGamma$2 := QGamma($QGamma.arg.1$4$, $QGamma.arg.2$3$);
    assume value_is(__ctobpl_const_173, $QGamma.arg.1$4$);
    assume value_is(__ctobpl_const_174, $QGamma.arg.2$3$);
    assume value_is(__ctobpl_const_175, $QGamma.arg.1$4$);
    assume value_is(__ctobpl_const_176, $QGamma.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 256} true;
    result.QChiSq$1 := result.QGamma$2;
    assume value_is(__ctobpl_const_177, result.QGamma$2);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 257} true;
    return;
}



procedure {:extern} QGamma(a.__1: int, x.__1: int) returns (result.QGamma$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} QGamma(a.__1: int, x.__1: int) returns (result.QGamma$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} a: int;
  var {:extern} $gcf.arg.1$8$: int;
  var {:extern} $gcf.arg.2$7$: int;
  var {:extern} $gser.arg.1$5$: int;
  var {:extern} $gser.arg.2$4$: int;
  var {:extern} result.gcf$6: int;
  var {:extern} result.gser$3: int;
  var {:extern} $result.question.2$: int;
  var {:extern} x: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    a := 0;
    $gcf.arg.1$8$ := 0;
    $gcf.arg.2$7$ := 0;
    $gser.arg.1$5$ := 0;
    $gser.arg.2$4$ := 0;
    result.QGamma$1 := 0;
    result.gcf$6 := 0;
    result.gser$3 := 0;
    $result.question.2$ := 0;
    x := 0;
    a := a.__1;
    x := x.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    goto label_3_true, label_3_false;

  label_3_false:
    assume !INT_LT(x, PLUS(a, 1, 1));
    assume value_is(__ctobpl_const_178, x);
    assume value_is(__ctobpl_const_179, a);
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $gcf.arg.2$7$ := x;
    assume value_is(__ctobpl_const_180, $gcf.arg.2$7$);
    assume value_is(__ctobpl_const_181, x);
    goto label_12;

  label_12:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $gcf.arg.1$8$ := a;
    assume value_is(__ctobpl_const_182, $gcf.arg.1$8$);
    assume value_is(__ctobpl_const_183, a);
    goto label_13;

  label_13:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    call result.gcf$6 := gcf($gcf.arg.1$8$, $gcf.arg.2$7$);
    assume value_is(__ctobpl_const_184, $gcf.arg.1$8$);
    assume value_is(__ctobpl_const_185, $gcf.arg.2$7$);
    assume value_is(__ctobpl_const_186, $gcf.arg.1$8$);
    assume value_is(__ctobpl_const_187, $gcf.arg.2$7$);
    goto label_16;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $result.question.2$ := result.gcf$6;
    assume value_is(__ctobpl_const_188, $result.question.2$);
    assume value_is(__ctobpl_const_189, result.gcf$6);
    goto label_11;

  label_11:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    result.QGamma$1 := $result.question.2$;
    assume value_is(__ctobpl_const_200, $result.question.2$);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 249} true;
    return;

  label_3_true:
    assume INT_LT(x, PLUS(a, 1, 1));
    assume value_is(__ctobpl_const_178, x);
    assume value_is(__ctobpl_const_179, a);
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $gser.arg.2$4$ := x;
    assume value_is(__ctobpl_const_190, $gser.arg.2$4$);
    assume value_is(__ctobpl_const_191, x);
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $gser.arg.1$5$ := a;
    assume value_is(__ctobpl_const_192, $gser.arg.1$5$);
    assume value_is(__ctobpl_const_193, a);
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    call result.gser$3 := gser($gser.arg.1$5$, $gser.arg.2$4$);
    assume value_is(__ctobpl_const_194, $gser.arg.1$5$);
    assume value_is(__ctobpl_const_195, $gser.arg.2$4$);
    assume value_is(__ctobpl_const_196, $gser.arg.1$5$);
    assume value_is(__ctobpl_const_197, $gser.arg.2$4$);
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 248} true;
    $result.question.2$ := MINUS_BOTH_PTR_OR_BOTH_INT(1, result.gser$3, 1);
    assume value_is(__ctobpl_const_198, $result.question.2$);
    assume value_is(__ctobpl_const_199, result.gser$3);
    goto label_11;
}



procedure {:extern} _chgsignl(_X.__1: int) returns (result._chgsignl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} _chgsignl(_X.__1: int) returns (result._chgsignl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $_chgsign.arg.1$3$: int;
  var {:extern} result._chgsign$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $_chgsign.arg.1$3$ := 0;
    result._chgsign$2 := 0;
    result._chgsignl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 825} true;
    $_chgsign.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_201, $_chgsign.arg.1$3$);
    assume value_is(__ctobpl_const_202, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 825} true;
    call result._chgsign$2 := _chgsign($_chgsign.arg.1$3$);
    assume value_is(__ctobpl_const_203, $_chgsign.arg.1$3$);
    assume value_is(__ctobpl_const_204, $_chgsign.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 825} true;
    result._chgsignl$1 := result._chgsign$2;
    assume value_is(__ctobpl_const_205, result._chgsign$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 826} true;
    return;
}



procedure {:extern} _copysignl(_X.__1: int, _Y.__1: int) returns (result._copysignl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} _copysignl(_X.__1: int, _Y.__1: int) returns (result._copysignl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $_copysign.arg.1$4$: int;
  var {:extern} $_copysign.arg.2$3$: int;
  var {:extern} result._copysign$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $_copysign.arg.1$4$ := 0;
    $_copysign.arg.2$3$ := 0;
    result._copysign$2 := 0;
    result._copysignl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 832} true;
    $_copysign.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_206, $_copysign.arg.2$3$);
    assume value_is(__ctobpl_const_207, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 832} true;
    $_copysign.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_208, $_copysign.arg.1$4$);
    assume value_is(__ctobpl_const_209, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 832} true;
    call result._copysign$2 := _copysign($_copysign.arg.1$4$, $_copysign.arg.2$3$);
    assume value_is(__ctobpl_const_210, $_copysign.arg.1$4$);
    assume value_is(__ctobpl_const_211, $_copysign.arg.2$3$);
    assume value_is(__ctobpl_const_212, $_copysign.arg.1$4$);
    assume value_is(__ctobpl_const_213, $_copysign.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 832} true;
    result._copysignl$1 := result._copysign$2;
    assume value_is(__ctobpl_const_214, result._copysign$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 833} true;
    return;
}



procedure {:extern} _hypotl(_X.__1: int, _Y.__1: int) returns (result._hypotl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} _hypotl(_X.__1: int, _Y.__1: int) returns (result._hypotl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $_hypot.arg.1$4$: int;
  var {:extern} $_hypot.arg.2$3$: int;
  var {:extern} result._hypot$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $_hypot.arg.1$4$ := 0;
    $_hypot.arg.2$3$ := 0;
    result._hypot$2 := 0;
    result._hypotl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 886} true;
    $_hypot.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_215, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_216, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 886} true;
    $_hypot.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_217, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_218, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 886} true;
    call result._hypot$2 := _hypot($_hypot.arg.1$4$, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_219, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_220, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_221, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_222, $_hypot.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 886} true;
    result._hypotl$1 := result._hypot$2;
    assume value_is(__ctobpl_const_223, result._hypot$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 887} true;
    return;
}



procedure {:extern} acosf(_X.__1: int) returns (result.acosf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} acosf(_X.__1: int) returns (result.acosf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $acos.arg.1$3$: int;
  var {:extern} result.acos$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $acos.arg.1$3$ := 0;
    result.acos$2 := 0;
    result.acosf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 639} true;
    $acos.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_224, $acos.arg.1$3$);
    assume value_is(__ctobpl_const_225, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 639} true;
    call result.acos$2 := acos($acos.arg.1$3$);
    assume value_is(__ctobpl_const_226, $acos.arg.1$3$);
    assume value_is(__ctobpl_const_227, $acos.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 639} true;
    result.acosf$1 := result.acos$2;
    assume value_is(__ctobpl_const_228, result.acos$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 640} true;
    return;
}



procedure {:extern} acosl(_X.__1: int) returns (result.acosl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} acosl(_X.__1: int) returns (result.acosl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $acos.arg.1$3$: int;
  var {:extern} result.acos$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $acos.arg.1$3$ := 0;
    result.acos$2 := 0;
    result.acosl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 794} true;
    $acos.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_229, $acos.arg.1$3$);
    assume value_is(__ctobpl_const_230, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 794} true;
    call result.acos$2 := acos($acos.arg.1$3$);
    assume value_is(__ctobpl_const_231, $acos.arg.1$3$);
    assume value_is(__ctobpl_const_232, $acos.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 794} true;
    result.acosl$1 := result.acos$2;
    assume value_is(__ctobpl_const_233, result.acos$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 795} true;
    return;
}



procedure {:extern} asinf(_X.__1: int) returns (result.asinf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} asinf(_X.__1: int) returns (result.asinf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $asin.arg.1$3$: int;
  var {:extern} result.asin$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $asin.arg.1$3$ := 0;
    result.asin$2 := 0;
    result.asinf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 644} true;
    $asin.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_234, $asin.arg.1$3$);
    assume value_is(__ctobpl_const_235, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 644} true;
    call result.asin$2 := asin($asin.arg.1$3$);
    assume value_is(__ctobpl_const_236, $asin.arg.1$3$);
    assume value_is(__ctobpl_const_237, $asin.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 644} true;
    result.asinf$1 := result.asin$2;
    assume value_is(__ctobpl_const_238, result.asin$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 645} true;
    return;
}



procedure {:extern} asinl(_X.__1: int) returns (result.asinl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} asinl(_X.__1: int) returns (result.asinl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $asin.arg.1$3$: int;
  var {:extern} result.asin$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $asin.arg.1$3$ := 0;
    result.asin$2 := 0;
    result.asinl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 801} true;
    $asin.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_239, $asin.arg.1$3$);
    assume value_is(__ctobpl_const_240, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 801} true;
    call result.asin$2 := asin($asin.arg.1$3$);
    assume value_is(__ctobpl_const_241, $asin.arg.1$3$);
    assume value_is(__ctobpl_const_242, $asin.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 801} true;
    result.asinl$1 := result.asin$2;
    assume value_is(__ctobpl_const_243, result.asin$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 802} true;
    return;
}



procedure {:extern} atan2f(_Y.__1: int, _X.__1: int) returns (result.atan2f$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} atan2f(_Y.__1: int, _X.__1: int) returns (result.atan2f$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $atan2.arg.1$4$: int;
  var {:extern} $atan2.arg.2$3$: int;
  var {:extern} result.atan2$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _Y := 0;
    _X := 0;
    _X := 0;
    _Y := 0;
    $atan2.arg.1$4$ := 0;
    $atan2.arg.2$3$ := 0;
    result.atan2$2 := 0;
    result.atan2f$1 := 0;
    _Y := _Y.__1;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 649} true;
    $atan2.arg.2$3$ := _X;
    assume value_is(__ctobpl_const_244, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_245, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 649} true;
    $atan2.arg.1$4$ := _Y;
    assume value_is(__ctobpl_const_246, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_247, _Y);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 649} true;
    call result.atan2$2 := atan2($atan2.arg.1$4$, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_248, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_249, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_250, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_251, $atan2.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 649} true;
    result.atan2f$1 := result.atan2$2;
    assume value_is(__ctobpl_const_252, result.atan2$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 650} true;
    return;
}



procedure {:extern} atan2l(_Y.__1: int, _X.__1: int) returns (result.atan2l$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} atan2l(_Y.__1: int, _X.__1: int) returns (result.atan2l$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $atan2.arg.1$4$: int;
  var {:extern} $atan2.arg.2$3$: int;
  var {:extern} result.atan2$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _Y := 0;
    _X := 0;
    _X := 0;
    _Y := 0;
    $atan2.arg.1$4$ := 0;
    $atan2.arg.2$3$ := 0;
    result.atan2$2 := 0;
    result.atan2l$1 := 0;
    _Y := _Y.__1;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 806} true;
    $atan2.arg.2$3$ := _X;
    assume value_is(__ctobpl_const_253, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_254, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 806} true;
    $atan2.arg.1$4$ := _Y;
    assume value_is(__ctobpl_const_255, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_256, _Y);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 806} true;
    call result.atan2$2 := atan2($atan2.arg.1$4$, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_257, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_258, $atan2.arg.2$3$);
    assume value_is(__ctobpl_const_259, $atan2.arg.1$4$);
    assume value_is(__ctobpl_const_260, $atan2.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 806} true;
    result.atan2l$1 := result.atan2$2;
    assume value_is(__ctobpl_const_261, result.atan2$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 807} true;
    return;
}



procedure {:extern} atanf(_X.__1: int) returns (result.atanf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} atanf(_X.__1: int) returns (result.atanf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $atan.arg.1$3$: int;
  var {:extern} result.atan$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $atan.arg.1$3$ := 0;
    result.atan$2 := 0;
    result.atanf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 654} true;
    $atan.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_262, $atan.arg.1$3$);
    assume value_is(__ctobpl_const_263, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 654} true;
    call result.atan$2 := atan($atan.arg.1$3$);
    assume value_is(__ctobpl_const_264, $atan.arg.1$3$);
    assume value_is(__ctobpl_const_265, $atan.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 654} true;
    result.atanf$1 := result.atan$2;
    assume value_is(__ctobpl_const_266, result.atan$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 655} true;
    return;
}



procedure {:extern} atanl(_X.__1: int) returns (result.atanl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} atanl(_X.__1: int) returns (result.atanl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $atan.arg.1$3$: int;
  var {:extern} result.atan$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $atan.arg.1$3$ := 0;
    result.atan$2 := 0;
    result.atanl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 813} true;
    $atan.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_267, $atan.arg.1$3$);
    assume value_is(__ctobpl_const_268, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 813} true;
    call result.atan$2 := atan($atan.arg.1$3$);
    assume value_is(__ctobpl_const_269, $atan.arg.1$3$);
    assume value_is(__ctobpl_const_270, $atan.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 813} true;
    result.atanl$1 := result.atan$2;
    assume value_is(__ctobpl_const_271, result.atan$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 814} true;
    return;
}



procedure {:extern} ceilf(_X.__1: int) returns (result.ceilf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} ceilf(_X.__1: int) returns (result.ceilf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $ceil.arg.1$3$: int;
  var {:extern} result.ceil$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $ceil.arg.1$3$ := 0;
    result.ceil$2 := 0;
    result.ceilf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 659} true;
    $ceil.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_272, $ceil.arg.1$3$);
    assume value_is(__ctobpl_const_273, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 659} true;
    call result.ceil$2 := ceil($ceil.arg.1$3$);
    assume value_is(__ctobpl_const_274, $ceil.arg.1$3$);
    assume value_is(__ctobpl_const_275, $ceil.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 659} true;
    result.ceilf$1 := result.ceil$2;
    assume value_is(__ctobpl_const_276, result.ceil$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 660} true;
    return;
}



procedure {:extern} ceill(_X.__1: int) returns (result.ceill$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} ceill(_X.__1: int) returns (result.ceill$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $ceil.arg.1$3$: int;
  var {:extern} result.ceil$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $ceil.arg.1$3$ := 0;
    result.ceil$2 := 0;
    result.ceill$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 820} true;
    $ceil.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_277, $ceil.arg.1$3$);
    assume value_is(__ctobpl_const_278, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 820} true;
    call result.ceil$2 := ceil($ceil.arg.1$3$);
    assume value_is(__ctobpl_const_279, $ceil.arg.1$3$);
    assume value_is(__ctobpl_const_280, $ceil.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 820} true;
    result.ceill$1 := result.ceil$2;
    assume value_is(__ctobpl_const_281, result.ceil$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 821} true;
    return;
}



procedure {:extern} cosf(_X.__1: int) returns (result.cosf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} cosf(_X.__1: int) returns (result.cosf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $cos.arg.1$3$: int;
  var {:extern} result.cos$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $cos.arg.1$3$ := 0;
    result.cos$2 := 0;
    result.cosf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 664} true;
    $cos.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_282, $cos.arg.1$3$);
    assume value_is(__ctobpl_const_283, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 664} true;
    call result.cos$2 := cos($cos.arg.1$3$);
    assume value_is(__ctobpl_const_284, $cos.arg.1$3$);
    assume value_is(__ctobpl_const_285, $cos.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 664} true;
    result.cosf$1 := result.cos$2;
    assume value_is(__ctobpl_const_286, result.cos$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 665} true;
    return;
}



procedure {:extern} coshf(_X.__1: int) returns (result.coshf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} coshf(_X.__1: int) returns (result.coshf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $cosh.arg.1$3$: int;
  var {:extern} result.cosh$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $cosh.arg.1$3$ := 0;
    result.cosh$2 := 0;
    result.coshf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 669} true;
    $cosh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_287, $cosh.arg.1$3$);
    assume value_is(__ctobpl_const_288, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 669} true;
    call result.cosh$2 := cosh($cosh.arg.1$3$);
    assume value_is(__ctobpl_const_289, $cosh.arg.1$3$);
    assume value_is(__ctobpl_const_290, $cosh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 669} true;
    result.coshf$1 := result.cosh$2;
    assume value_is(__ctobpl_const_291, result.cosh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 670} true;
    return;
}



procedure {:extern} coshl(_X.__1: int) returns (result.coshl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} coshl(_X.__1: int) returns (result.coshl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $cosh.arg.1$3$: int;
  var {:extern} result.cosh$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $cosh.arg.1$3$ := 0;
    result.cosh$2 := 0;
    result.coshl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 837} true;
    $cosh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_292, $cosh.arg.1$3$);
    assume value_is(__ctobpl_const_293, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 837} true;
    call result.cosh$2 := cosh($cosh.arg.1$3$);
    assume value_is(__ctobpl_const_294, $cosh.arg.1$3$);
    assume value_is(__ctobpl_const_295, $cosh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 837} true;
    result.coshl$1 := result.cosh$2;
    assume value_is(__ctobpl_const_296, result.cosh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 838} true;
    return;
}



procedure {:extern} cosl(_X.__1: int) returns (result.cosl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} cosl(_X.__1: int) returns (result.cosl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $cos.arg.1$3$: int;
  var {:extern} result.cos$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $cos.arg.1$3$ := 0;
    result.cos$2 := 0;
    result.cosl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 842} true;
    $cos.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_297, $cos.arg.1$3$);
    assume value_is(__ctobpl_const_298, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 842} true;
    call result.cos$2 := cos($cos.arg.1$3$);
    assume value_is(__ctobpl_const_299, $cos.arg.1$3$);
    assume value_is(__ctobpl_const_300, $cos.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 842} true;
    result.cosl$1 := result.cos$2;
    assume value_is(__ctobpl_const_301, result.cos$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 843} true;
    return;
}



procedure {:extern} expf(_X.__1: int) returns (result.expf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} expf(_X.__1: int) returns (result.expf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $exp.arg.1$3$: int;
  var {:extern} result.exp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $exp.arg.1$3$ := 0;
    result.exp$2 := 0;
    result.expf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 674} true;
    $exp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_302, $exp.arg.1$3$);
    assume value_is(__ctobpl_const_303, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 674} true;
    call result.exp$2 := exp($exp.arg.1$3$);
    assume value_is(__ctobpl_const_304, $exp.arg.1$3$);
    assume value_is(__ctobpl_const_305, $exp.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 674} true;
    result.expf$1 := result.exp$2;
    assume value_is(__ctobpl_const_306, result.exp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 675} true;
    return;
}



procedure {:extern} expl(_X.__1: int) returns (result.expl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} expl(_X.__1: int) returns (result.expl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $exp.arg.1$3$: int;
  var {:extern} result.exp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $exp.arg.1$3$ := 0;
    result.exp$2 := 0;
    result.expl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 850} true;
    $exp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_307, $exp.arg.1$3$);
    assume value_is(__ctobpl_const_308, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 850} true;
    call result.exp$2 := exp($exp.arg.1$3$);
    assume value_is(__ctobpl_const_309, $exp.arg.1$3$);
    assume value_is(__ctobpl_const_310, $exp.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 850} true;
    result.expl$1 := result.exp$2;
    assume value_is(__ctobpl_const_311, result.exp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 851} true;
    return;
}



procedure {:extern} fabsf(_X.__1: int) returns (result.fabsf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} fabsf(_X.__1: int) returns (result.fabsf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $fabs.arg.1$3$: int;
  var {:extern} result.fabs$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $fabs.arg.1$3$ := 0;
    result.fabs$2 := 0;
    result.fabsf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 687} true;
    $fabs.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_312, $fabs.arg.1$3$);
    assume value_is(__ctobpl_const_313, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 687} true;
    call result.fabs$2 := fabs($fabs.arg.1$3$);
    assume value_is(__ctobpl_const_314, $fabs.arg.1$3$);
    assume value_is(__ctobpl_const_315, $fabs.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 687} true;
    result.fabsf$1 := result.fabs$2;
    assume value_is(__ctobpl_const_316, result.fabs$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 688} true;
    return;
}



procedure {:extern} fabsl(_X.__1: int) returns (result.fabsl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} fabsl(_X.__1: int) returns (result.fabsl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $fabs.arg.1$3$: int;
  var {:extern} result.fabs$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $fabs.arg.1$3$ := 0;
    result.fabs$2 := 0;
    result.fabsl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 858} true;
    $fabs.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_317, $fabs.arg.1$3$);
    assume value_is(__ctobpl_const_318, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 858} true;
    call result.fabs$2 := fabs($fabs.arg.1$3$);
    assume value_is(__ctobpl_const_319, $fabs.arg.1$3$);
    assume value_is(__ctobpl_const_320, $fabs.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 858} true;
    result.fabsl$1 := result.fabs$2;
    assume value_is(__ctobpl_const_321, result.fabs$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 859} true;
    return;
}



procedure {:extern} floorf(_X.__1: int) returns (result.floorf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} floorf(_X.__1: int) returns (result.floorf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $floor.arg.1$3$: int;
  var {:extern} result.floor$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $floor.arg.1$3$ := 0;
    result.floor$2 := 0;
    result.floorf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 701} true;
    $floor.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_322, $floor.arg.1$3$);
    assume value_is(__ctobpl_const_323, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 701} true;
    call result.floor$2 := floor($floor.arg.1$3$);
    assume value_is(__ctobpl_const_324, $floor.arg.1$3$);
    assume value_is(__ctobpl_const_325, $floor.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 701} true;
    result.floorf$1 := result.floor$2;
    assume value_is(__ctobpl_const_326, result.floor$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 702} true;
    return;
}



procedure {:extern} floorl(_X.__1: int) returns (result.floorl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} floorl(_X.__1: int) returns (result.floorl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $floor.arg.1$3$: int;
  var {:extern} result.floor$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $floor.arg.1$3$ := 0;
    result.floor$2 := 0;
    result.floorl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 865} true;
    $floor.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_327, $floor.arg.1$3$);
    assume value_is(__ctobpl_const_328, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 865} true;
    call result.floor$2 := floor($floor.arg.1$3$);
    assume value_is(__ctobpl_const_329, $floor.arg.1$3$);
    assume value_is(__ctobpl_const_330, $floor.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 865} true;
    result.floorl$1 := result.floor$2;
    assume value_is(__ctobpl_const_331, result.floor$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 866} true;
    return;
}



procedure {:extern} fmodf(_X.__1: int, _Y.__1: int) returns (result.fmodf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} fmodf(_X.__1: int, _Y.__1: int) returns (result.fmodf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $fmod.arg.1$4$: int;
  var {:extern} $fmod.arg.2$3$: int;
  var {:extern} result.fmod$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $fmod.arg.1$4$ := 0;
    $fmod.arg.2$3$ := 0;
    result.fmod$2 := 0;
    result.fmodf$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 706} true;
    $fmod.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_332, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_333, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 706} true;
    $fmod.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_334, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_335, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 706} true;
    call result.fmod$2 := fmod($fmod.arg.1$4$, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_336, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_337, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_338, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_339, $fmod.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 706} true;
    result.fmodf$1 := result.fmod$2;
    assume value_is(__ctobpl_const_340, result.fmod$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 707} true;
    return;
}



procedure {:extern} fmodl(_X.__1: int, _Y.__1: int) returns (result.fmodl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} fmodl(_X.__1: int, _Y.__1: int) returns (result.fmodl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $fmod.arg.1$4$: int;
  var {:extern} $fmod.arg.2$3$: int;
  var {:extern} result.fmod$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $fmod.arg.1$4$ := 0;
    $fmod.arg.2$3$ := 0;
    result.fmod$2 := 0;
    result.fmodl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 874} true;
    $fmod.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_341, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_342, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 874} true;
    $fmod.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_343, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_344, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 874} true;
    call result.fmod$2 := fmod($fmod.arg.1$4$, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_345, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_346, $fmod.arg.2$3$);
    assume value_is(__ctobpl_const_347, $fmod.arg.1$4$);
    assume value_is(__ctobpl_const_348, $fmod.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 874} true;
    result.fmodl$1 := result.fmod$2;
    assume value_is(__ctobpl_const_349, result.fmod$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 875} true;
    return;
}



procedure {:extern} frexpf(_X.__1: int, _Y.__1: int) returns (result.frexpf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} frexpf(_X.__1: int, _Y.__1: int) returns (result.frexpf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $frexp.arg.1$3$: int;
  var {:extern} result.frexp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(_Y.__1, alloc);
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $frexp.arg.1$3$ := 0;
    result.frexp$2 := 0;
    result.frexpf$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 713} true;
    $frexp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_350, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_351, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 713} true;
    call result.frexp$2 := frexp($frexp.arg.1$3$, _Y);
    assume value_is(__ctobpl_const_352, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_353, _Y);
    assume value_is(__ctobpl_const_354, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_355, _Y);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 713} true;
    result.frexpf$1 := result.frexp$2;
    assume value_is(__ctobpl_const_356, result.frexp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 714} true;
    return;
}



procedure {:extern} frexpl(_X.__1: int, _Y.__1: int) returns (result.frexpl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} frexpl(_X.__1: int, _Y.__1: int) returns (result.frexpl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $frexp.arg.1$3$: int;
  var {:extern} result.frexp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(_Y.__1, alloc);
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $frexp.arg.1$3$ := 0;
    result.frexp$2 := 0;
    result.frexpl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 879} true;
    $frexp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_357, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_358, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 879} true;
    call result.frexp$2 := frexp($frexp.arg.1$3$, _Y);
    assume value_is(__ctobpl_const_359, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_360, _Y);
    assume value_is(__ctobpl_const_361, $frexp.arg.1$3$);
    assume value_is(__ctobpl_const_362, _Y);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 879} true;
    result.frexpl$1 := result.frexp$2;
    assume value_is(__ctobpl_const_363, result.frexp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 880} true;
    return;
}



procedure {:extern} gcf(a.__1: int, x.__1: int) returns (result.gcf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} gcf(a.__1: int, x.__1: int) returns (result.gcf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} $LGamma.arg.1$7$_123_$static$: int;
  var {:extern} a: int;
  var {:extern} a0: int;
  var {:extern} a1: int;
  var {:extern} an: int;
  var {:extern} ana: int;
  var {:extern} anf: int;
  var {:extern} b0: int;
  var {:extern} b1: int;
  var {:extern} $exp.arg.1$8$_123_$static$: int;
  var {:extern} fac: int;
  var {:extern} g: int;
  var {:extern} gold: int;
  var {:extern} n: int;
  var {:extern} result.LGamma$6: int;
  var {:extern} result.exp$4: int;
  var {:extern} result.log$5: int;
  var {:extern} $result.question.2$_123_$static$: int;
  var {:extern} $result.question.3$_123_$static$: int;
  var {:extern} x: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    $LGamma.arg.1$7$_123_$static$ := 0;
    a := 0;
    a0 := 0;
    a1 := 0;
    an := 0;
    ana := 0;
    anf := 0;
    b0 := 0;
    b1 := 0;
    $exp.arg.1$8$_123_$static$ := 0;
    fac := 0;
    g := 0;
    gold := 0;
    n := 0;
    result.LGamma$6 := 0;
    result.exp$4 := 0;
    result.gcf$1 := 0;
    result.log$5 := 0;
    $result.question.2$_123_$static$ := 0;
    $result.question.3$_123_$static$ := 0;
    x := 0;
    a := a.__1;
    x := x.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 211} true;
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    gold := 0;
    assume value_is(__ctobpl_const_364, gold);
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    fac := 1;
    assume value_is(__ctobpl_const_365, fac);
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    goto label_9;

  label_9:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 212} true;
    b1 := 1;
    assume value_is(__ctobpl_const_366, b1);
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    goto label_11;

  label_11:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    b0 := 0;
    assume value_is(__ctobpl_const_367, b0);
    goto label_12;

  label_12:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    goto label_13;

  label_13:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    a0 := 1;
    assume value_is(__ctobpl_const_368, a0);
    goto label_14;

  label_14:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    goto label_15;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 213} true;
    a1 := x;
    assume value_is(__ctobpl_const_369, a1);
    assume value_is(__ctobpl_const_370, x);
    goto label_16;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 215} true;
    n := 1;
    assume value_is(__ctobpl_const_371, n);
    goto label_17;

  label_17:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 215} true;
    goto label_17_head;

  label_17_head:
    call a0, a1, an, ana, anf, b0, b1, fac, g, gold, n, $result.question.2$_123_$static$, $result.question.3$_123_$static$ := gcf_loop_label_17_head(a, a0, a1, an, ana, anf, b0, b1, fac, g, gold, n, $result.question.2$_123_$static$, $result.question.3$_123_$static$, x);
    goto label_17_head_last;

  label_17_false:
    assume !INT_LEQ(n, 100);
    assume value_is(__ctobpl_const_372, n);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 241} true;
    return;

  label_17_true:
    assume INT_LEQ(n, 100);
    assume value_is(__ctobpl_const_372, n);
    goto label_18;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 217} true;
    goto label_19;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 218} true;
    goto label_20;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 218} true;
    an := n;
    assume value_is(__ctobpl_const_373, an);
    assume value_is(__ctobpl_const_374, n);
    goto label_21;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 219} true;
    goto label_22;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 219} true;
    ana := MINUS_BOTH_PTR_OR_BOTH_INT(an, a, 1);
    assume value_is(__ctobpl_const_375, ana);
    assume value_is(__ctobpl_const_376, an);
    assume value_is(__ctobpl_const_377, a);
    goto label_23;

  label_23:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 221} true;
    a0 := MULT(PLUS(a1, 1, MULT(a0, ana)), fac);
    assume value_is(__ctobpl_const_378, a0);
    assume value_is(__ctobpl_const_379, a1);
    assume value_is(__ctobpl_const_380, a0);
    assume value_is(__ctobpl_const_381, ana);
    assume value_is(__ctobpl_const_382, fac);
    goto label_24;

  label_24:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 222} true;
    b0 := MULT(PLUS(b1, 1, MULT(b0, ana)), fac);
    assume value_is(__ctobpl_const_383, b0);
    assume value_is(__ctobpl_const_384, b1);
    assume value_is(__ctobpl_const_385, b0);
    assume value_is(__ctobpl_const_386, ana);
    assume value_is(__ctobpl_const_387, fac);
    goto label_25;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 223} true;
    anf := MULT(an, fac);
    assume value_is(__ctobpl_const_388, anf);
    assume value_is(__ctobpl_const_389, an);
    assume value_is(__ctobpl_const_390, fac);
    goto label_26;

  label_26:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 224} true;
    b1 := PLUS(MULT(x, b0), 1, MULT(anf, b1));
    assume value_is(__ctobpl_const_391, b1);
    assume value_is(__ctobpl_const_392, x);
    assume value_is(__ctobpl_const_393, b0);
    assume value_is(__ctobpl_const_394, anf);
    assume value_is(__ctobpl_const_395, b1);
    goto label_27;

  label_27:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 225} true;
    a1 := PLUS(MULT(x, a0), 1, MULT(anf, a1));
    assume value_is(__ctobpl_const_396, a1);
    assume value_is(__ctobpl_const_397, x);
    assume value_is(__ctobpl_const_398, a0);
    assume value_is(__ctobpl_const_399, anf);
    assume value_is(__ctobpl_const_400, a1);
    goto label_28;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 227} true;
    goto label_28_true, label_28_false;

  label_28_false:
    assume !INT_NEQ(a1, 0);
    assume value_is(__ctobpl_const_401, a1);
    goto label_29;

  label_29:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    n := PLUS(n, 1, 1);
    assume value_is(__ctobpl_const_424, n);
    goto label_29_dummy;

  label_28_true:
    assume INT_NEQ(a1, 0);
    assume value_is(__ctobpl_const_401, a1);
    goto label_30;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    goto label_31;

  label_31:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    fac := BINARY_BOTH_INT(1, a1);
    assume value_is(__ctobpl_const_402, fac);
    assume value_is(__ctobpl_const_403, a1);
    goto label_32;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    g := MULT(b1, fac);
    assume value_is(__ctobpl_const_404, g);
    assume value_is(__ctobpl_const_405, b1);
    assume value_is(__ctobpl_const_406, fac);
    goto label_33;

  label_33:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 231} true;
    gold := MINUS_BOTH_PTR_OR_BOTH_INT(g, gold, 1);
    assume value_is(__ctobpl_const_407, gold);
    assume value_is(__ctobpl_const_408, g);
    assume value_is(__ctobpl_const_409, gold);
    goto label_34;

  label_34:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_34_true, label_34_false;

  label_34_false:
    assume !INT_LT(gold, 0);
    assume value_is(__ctobpl_const_410, gold);
    goto label_35;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    $result.question.2$_123_$static$ := gold;
    assume value_is(__ctobpl_const_411, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_412, gold);
    goto label_37;

  label_37:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_37_true, label_37_false;

  label_37_false:
    assume !INT_LT(g, 0);
    assume value_is(__ctobpl_const_415, g);
    goto label_38;

  label_38:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    $result.question.3$_123_$static$ := g;
    assume value_is(__ctobpl_const_416, $result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_417, g);
    goto label_40;

  label_40:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_40_true, label_40_false;

  label_40_false:
    assume !INT_LT($result.question.2$_123_$static$, MULT(BOOGIE_FLOAT_CONST_3e__007, $result.question.3$_123_$static$));
    assume value_is(__ctobpl_const_420, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_421, $result.question.3$_123_$static$);
    goto label_41;

  label_41:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 236} true;
    gold := g;
    assume value_is(__ctobpl_const_422, gold);
    assume value_is(__ctobpl_const_423, g);
    goto label_29;

  label_40_true:
    assume INT_LT($result.question.2$_123_$static$, MULT(BOOGIE_FLOAT_CONST_3e__007, $result.question.3$_123_$static$));
    assume value_is(__ctobpl_const_420, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_421, $result.question.3$_123_$static$);
    goto label_42;

  label_42:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    call result.log$5 := log(x);
    assume value_is(__ctobpl_const_425, x);
    assume value_is(__ctobpl_const_426, x);
    goto label_45;

  label_45:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    $LGamma.arg.1$7$_123_$static$ := a;
    assume value_is(__ctobpl_const_427, $LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_428, a);
    goto label_46;

  label_46:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    call result.LGamma$6 := LGamma($LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_429, $LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_430, $LGamma.arg.1$7$_123_$static$);
    goto label_49;

  label_49:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    $exp.arg.1$8$_123_$static$ := MINUS_BOTH_PTR_OR_BOTH_INT(PLUS(-x, 1, MULT(a, result.log$5)), result.LGamma$6, 1);
    assume value_is(__ctobpl_const_431, $exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_432, x);
    assume value_is(__ctobpl_const_433, a);
    assume value_is(__ctobpl_const_434, result.log$5);
    assume value_is(__ctobpl_const_435, result.LGamma$6);
    goto label_50;

  label_50:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    call result.exp$4 := exp($exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_436, $exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_437, $exp.arg.1$8$_123_$static$);
    goto label_53;

  label_53:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 234} true;
    result.gcf$1 := MULT(result.exp$4, g);
    assume value_is(__ctobpl_const_438, result.exp$4);
    assume value_is(__ctobpl_const_439, g);
    goto label_1;

  label_37_true:
    assume INT_LT(g, 0);
    assume value_is(__ctobpl_const_415, g);
    goto label_39;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    $result.question.3$_123_$static$ := -g;
    assume value_is(__ctobpl_const_418, $result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_419, g);
    goto label_40;

  label_34_true:
    assume INT_LT(gold, 0);
    assume value_is(__ctobpl_const_410, gold);
    goto label_36;

  label_36:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    $result.question.2$_123_$static$ := -gold;
    assume value_is(__ctobpl_const_413, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_414, gold);
    goto label_37;

  label_29_dummy:
    assume false;
    return;

  label_17_head_last:
    goto label_17_true, label_17_false;
}



procedure {:extern} gser(a.__1: int, x.__1: int) returns (result.gser$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} gser(a.__1: int, x.__1: int) returns (result.gser$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} $LGamma.arg.1$7$_123_$static$: int;
  var {:extern} a: int;
  var {:extern} ap: int;
  var {:extern} del: int;
  var {:extern} $exp.arg.1$8$_123_$static$: int;
  var {:extern} n: int;
  var {:extern} result.LGamma$6: int;
  var {:extern} result.exp$4: int;
  var {:extern} result.log$5: int;
  var {:extern} $result.question.2$_123_$static$: int;
  var {:extern} $result.question.3$_123_$static$: int;
  var {:extern} sum: int;
  var {:extern} x: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    $LGamma.arg.1$7$_123_$static$ := 0;
    a := 0;
    ap := 0;
    del := 0;
    $exp.arg.1$8$_123_$static$ := 0;
    n := 0;
    result.LGamma$6 := 0;
    result.exp$4 := 0;
    result.gser$1 := 0;
    result.log$5 := 0;
    $result.question.2$_123_$static$ := 0;
    $result.question.3$_123_$static$ := 0;
    sum := 0;
    x := 0;
    a := a.__1;
    x := x.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 187} true;
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 187} true;
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 187} true;
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 188} true;
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 191} true;
    goto label_7_true, label_7_false;

  label_7_false:
    assume !INT_LEQ(x, 0);
    assume value_is(__ctobpl_const_440, x);
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 194} true;
    ap := a;
    assume value_is(__ctobpl_const_441, ap);
    assume value_is(__ctobpl_const_442, a);
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 194} true;
    sum := BINARY_BOTH_INT(1, ap);
    assume value_is(__ctobpl_const_443, sum);
    assume value_is(__ctobpl_const_444, ap);
    goto label_11;

  label_11:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 194} true;
    del := sum;
    assume value_is(__ctobpl_const_445, del);
    assume value_is(__ctobpl_const_446, sum);
    goto label_12;

  label_12:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 196} true;
    n := 1;
    assume value_is(__ctobpl_const_447, n);
    goto label_13;

  label_13:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 196} true;
    goto label_13_head;

  label_13_head:
    call ap, del, n, $result.question.2$_123_$static$, $result.question.3$_123_$static$, sum, tempBoogie0, tempBoogie1 := gser_loop_label_13_head(ap, del, n, $result.question.2$_123_$static$, $result.question.3$_123_$static$, sum, x, tempBoogie0, tempBoogie1);
    goto label_13_head_last;

  label_13_false:
    assume !INT_LEQ(n, 100);
    assume value_is(__ctobpl_const_448, n);
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 205} true;
    return;

  label_13_true:
    assume INT_LEQ(n, 100);
    assume value_is(__ctobpl_const_448, n);
    goto label_14;

  label_14:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 198} true;
    ap := PLUS(ap, 1, 1);
    tempBoogie0 := INT_MULT(del, BINARY_BOTH_INT(x, ap));
    del := tempBoogie0;
    tempBoogie1 := PLUS(sum, 1, del);
    sum := tempBoogie1;
    assume value_is(__ctobpl_const_449, sum);
    assume value_is(__ctobpl_const_450, del);
    assume value_is(__ctobpl_const_451, x);
    assume value_is(__ctobpl_const_452, ap);
    goto label_15;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_15_true, label_15_false;

  label_15_false:
    assume !INT_LT(del, 0);
    assume value_is(__ctobpl_const_453, del);
    goto label_16;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    $result.question.2$_123_$static$ := del;
    assume value_is(__ctobpl_const_454, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_455, del);
    goto label_18;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_18_true, label_18_false;

  label_18_false:
    assume !INT_LT(sum, 0);
    assume value_is(__ctobpl_const_458, sum);
    goto label_19;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    $result.question.3$_123_$static$ := sum;
    assume value_is(__ctobpl_const_459, $result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_460, sum);
    goto label_21;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_21_true, label_21_false;

  label_21_false:
    assume !INT_LT($result.question.2$_123_$static$, MULT($result.question.3$_123_$static$, BOOGIE_FLOAT_CONST_3e__007));
    assume value_is(__ctobpl_const_463, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_464, $result.question.3$_123_$static$);
    goto label_22;

  label_22:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    n := PLUS(n, 1, 1);
    assume value_is(__ctobpl_const_465, n);
    goto label_22_dummy;

  label_21_true:
    assume INT_LT($result.question.2$_123_$static$, MULT($result.question.3$_123_$static$, BOOGIE_FLOAT_CONST_3e__007));
    assume value_is(__ctobpl_const_463, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_464, $result.question.3$_123_$static$);
    goto label_23;

  label_23:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    call result.log$5 := log(x);
    assume value_is(__ctobpl_const_466, x);
    assume value_is(__ctobpl_const_467, x);
    goto label_26;

  label_26:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    $LGamma.arg.1$7$_123_$static$ := a;
    assume value_is(__ctobpl_const_468, $LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_469, a);
    goto label_27;

  label_27:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    call result.LGamma$6 := LGamma($LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_470, $LGamma.arg.1$7$_123_$static$);
    assume value_is(__ctobpl_const_471, $LGamma.arg.1$7$_123_$static$);
    goto label_30;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    $exp.arg.1$8$_123_$static$ := MINUS_BOTH_PTR_OR_BOTH_INT(PLUS(-x, 1, MULT(a, result.log$5)), result.LGamma$6, 1);
    assume value_is(__ctobpl_const_472, $exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_473, x);
    assume value_is(__ctobpl_const_474, a);
    assume value_is(__ctobpl_const_475, result.log$5);
    assume value_is(__ctobpl_const_476, result.LGamma$6);
    goto label_31;

  label_31:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    call result.exp$4 := exp($exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_477, $exp.arg.1$8$_123_$static$);
    assume value_is(__ctobpl_const_478, $exp.arg.1$8$_123_$static$);
    goto label_34;

  label_34:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 201} true;
    result.gser$1 := MULT(sum, result.exp$4);
    assume value_is(__ctobpl_const_479, sum);
    assume value_is(__ctobpl_const_480, result.exp$4);
    goto label_1;

  label_18_true:
    assume INT_LT(sum, 0);
    assume value_is(__ctobpl_const_458, sum);
    goto label_20;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    $result.question.3$_123_$static$ := -sum;
    assume value_is(__ctobpl_const_461, $result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_462, sum);
    goto label_21;

  label_15_true:
    assume INT_LT(del, 0);
    assume value_is(__ctobpl_const_453, del);
    goto label_17;

  label_17:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    $result.question.2$_123_$static$ := -del;
    assume value_is(__ctobpl_const_456, $result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_457, del);
    goto label_18;

  label_7_true:
    assume INT_LEQ(x, 0);
    assume value_is(__ctobpl_const_440, x);
    goto label_9;

  label_9:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 192} true;
    result.gser$1 := 0;
    goto label_1;

  label_22_dummy:
    assume false;
    return;

  label_13_head_last:
    goto label_13_true, label_13_false;
}



procedure {:extern} hypot(_X.__1: int, _Y.__1: int) returns (result.hypot$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} hypot(_X.__1: int, _Y.__1: int) returns (result.hypot$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} result._hypot$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    result._hypot$2 := 0;
    result.hypot$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 557} true;
    call result._hypot$2 := _hypot(_X, _Y);
    assume value_is(__ctobpl_const_481, _X);
    assume value_is(__ctobpl_const_482, _Y);
    assume value_is(__ctobpl_const_483, _X);
    assume value_is(__ctobpl_const_484, _Y);
    goto label_6;

  label_6:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 557} true;
    result.hypot$1 := result._hypot$2;
    assume value_is(__ctobpl_const_485, result._hypot$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 558} true;
    return;
}



procedure {:extern} hypotf(_X.__1: int, _Y.__1: int) returns (result.hypotf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} hypotf(_X.__1: int, _Y.__1: int) returns (result.hypotf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} result._hypotf$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    result._hypotf$2 := 0;
    result.hypotf$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 718} true;
    call result._hypotf$2 := _hypotf(_X, _Y);
    assume value_is(__ctobpl_const_486, _X);
    assume value_is(__ctobpl_const_487, _Y);
    assume value_is(__ctobpl_const_488, _X);
    assume value_is(__ctobpl_const_489, _Y);
    goto label_6;

  label_6:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 718} true;
    result.hypotf$1 := result._hypotf$2;
    assume value_is(__ctobpl_const_490, result._hypotf$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 719} true;
    return;
}



procedure {:extern} hypotl(_X.__1: int, _Y.__1: int) returns (result.hypotl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} hypotl(_X.__1: int, _Y.__1: int) returns (result.hypotl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $_hypot.arg.1$4$: int;
  var {:extern} $_hypot.arg.2$3$: int;
  var {:extern} result._hypot$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $_hypot.arg.1$4$ := 0;
    $_hypot.arg.2$3$ := 0;
    result._hypot$2 := 0;
    result.hypotl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 891} true;
    $_hypot.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_491, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_492, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 891} true;
    $_hypot.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_493, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_494, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 891} true;
    call result._hypot$2 := _hypot($_hypot.arg.1$4$, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_495, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_496, $_hypot.arg.2$3$);
    assume value_is(__ctobpl_const_497, $_hypot.arg.1$4$);
    assume value_is(__ctobpl_const_498, $_hypot.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 891} true;
    result.hypotl$1 := result._hypot$2;
    assume value_is(__ctobpl_const_499, result._hypot$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 892} true;
    return;
}



procedure {:extern} ldexpf(_X.__1: int, _Y.__1: int) returns (result.ldexpf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} ldexpf(_X.__1: int, _Y.__1: int) returns (result.ldexpf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $ldexp.arg.1$3$: int;
  var {:extern} result.ldexp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $ldexp.arg.1$3$ := 0;
    result.ldexp$2 := 0;
    result.ldexpf$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 723} true;
    $ldexp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_500, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_501, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 723} true;
    call result.ldexp$2 := ldexp($ldexp.arg.1$3$, _Y);
    assume value_is(__ctobpl_const_502, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_503, _Y);
    assume value_is(__ctobpl_const_504, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_505, _Y);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 723} true;
    result.ldexpf$1 := result.ldexp$2;
    assume value_is(__ctobpl_const_506, result.ldexp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 724} true;
    return;
}



procedure {:extern} ldexpl(_X.__1: int, _Y.__1: int) returns (result.ldexpl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} ldexpl(_X.__1: int, _Y.__1: int) returns (result.ldexpl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $ldexp.arg.1$3$: int;
  var {:extern} result.ldexp$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $ldexp.arg.1$3$ := 0;
    result.ldexp$2 := 0;
    result.ldexpl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 896} true;
    $ldexp.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_507, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_508, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 896} true;
    call result.ldexp$2 := ldexp($ldexp.arg.1$3$, _Y);
    assume value_is(__ctobpl_const_509, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_510, _Y);
    assume value_is(__ctobpl_const_511, $ldexp.arg.1$3$);
    assume value_is(__ctobpl_const_512, _Y);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 896} true;
    result.ldexpl$1 := result.ldexp$2;
    assume value_is(__ctobpl_const_513, result.ldexp$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 897} true;
    return;
}



procedure {:extern} log10f(_X.__1: int) returns (result.log10f$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} log10f(_X.__1: int) returns (result.log10f$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $log10.arg.1$3$: int;
  var {:extern} result.log10$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $log10.arg.1$3$ := 0;
    result.log10$2 := 0;
    result.log10f$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 742} true;
    $log10.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_514, $log10.arg.1$3$);
    assume value_is(__ctobpl_const_515, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 742} true;
    call result.log10$2 := log10($log10.arg.1$3$);
    assume value_is(__ctobpl_const_516, $log10.arg.1$3$);
    assume value_is(__ctobpl_const_517, $log10.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 742} true;
    result.log10f$1 := result.log10$2;
    assume value_is(__ctobpl_const_518, result.log10$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 743} true;
    return;
}



procedure {:extern} log10l(_X.__1: int) returns (result.log10l$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} log10l(_X.__1: int) returns (result.log10l$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $log10.arg.1$3$: int;
  var {:extern} result.log10$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $log10.arg.1$3$ := 0;
    result.log10$2 := 0;
    result.log10l$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 910} true;
    $log10.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_519, $log10.arg.1$3$);
    assume value_is(__ctobpl_const_520, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 910} true;
    call result.log10$2 := log10($log10.arg.1$3$);
    assume value_is(__ctobpl_const_521, $log10.arg.1$3$);
    assume value_is(__ctobpl_const_522, $log10.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 910} true;
    result.log10l$1 := result.log10$2;
    assume value_is(__ctobpl_const_523, result.log10$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 911} true;
    return;
}



procedure {:extern} logf(_X.__1: int) returns (result.logf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} logf(_X.__1: int) returns (result.logf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $log.arg.1$3$: int;
  var {:extern} result.log$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $log.arg.1$3$ := 0;
    result.log$2 := 0;
    result.logf$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 747} true;
    $log.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_524, $log.arg.1$3$);
    assume value_is(__ctobpl_const_525, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 747} true;
    call result.log$2 := log($log.arg.1$3$);
    assume value_is(__ctobpl_const_526, $log.arg.1$3$);
    assume value_is(__ctobpl_const_527, $log.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 747} true;
    result.logf$1 := result.log$2;
    assume value_is(__ctobpl_const_528, result.log$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 748} true;
    return;
}



procedure {:extern} logl(_X.__1: int) returns (result.logl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} logl(_X.__1: int) returns (result.logl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} $log.arg.1$3$: int;
  var {:extern} result.log$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    $log.arg.1$3$ := 0;
    result.log$2 := 0;
    result.logl$1 := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 905} true;
    $log.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_529, $log.arg.1$3$);
    assume value_is(__ctobpl_const_530, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 905} true;
    call result.log$2 := log($log.arg.1$3$);
    assume value_is(__ctobpl_const_531, $log.arg.1$3$);
    assume value_is(__ctobpl_const_532, $log.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 905} true;
    result.logl$1 := result.log$2;
    assume value_is(__ctobpl_const_533, result.log$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 906} true;
    return;
}



procedure {:extern} main(argc.__1: int, argv.__1: int) returns (result.main$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} main(argc.__1: int, argv.__1: int) returns (result.main$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} $InfoTbl.arg.3$23$: int;
  var {:extern} $QChiSq.arg.1$26$: int;
  var {:extern} $QChiSq.arg.1$40$: int;
  var {:extern} argc: int;
  var {:extern} argv: int;
  var {:extern} $fgets.arg.3$4$: int;
  var {:extern} $fputs.arg.2$13$: int;
  var {:extern} $fputs.arg.2$16$: int;
  var {:extern} $fputs.arg.2$21$: int;
  var {:extern} $fputs.arg.2$31$: int;
  var {:extern} $fputs.arg.2$37$: int;
  var {:extern} $fputs.arg.2$9$: int;
  var {:extern} i: int;
  var {:extern} info: int;
  var {:extern} infodf: int;
  var {:extern} $isspace.arg.1$6$: int;
  var {:extern} j: int;
  var {:extern} p: int;
  var {:extern} $printf.arg.2$28$: int;
  var {:extern} $printf.arg.2$42$: int;
  var {:extern} $printf.arg.4$27$: int;
  var {:extern} $printf.arg.4$41$: int;
  var {:extern} result.InfoTbl$22: int;
  var {:extern} result.QChiSq$25: int;
  var {:extern} result.QChiSq$39: int;
  var {:extern} result.__iob_func$30: int;
  var {:extern} result.__iob_func$36: int;
  var {:extern} result.__iob_func$3: int;
  var {:extern} result.__iob_func$8: int;
  var {:extern} result.__iob_func$12: int;
  var {:extern} result.__iob_func$15: int;
  var {:extern} result.__iob_func$20: int;
  var {:extern} result.fgets$2: int;
  var {:extern} result.fputs$29: int;
  var {:extern} result.fputs$35: int;
  var {:extern} result.fputs$7: int;
  var {:extern} result.fputs$11: int;
  var {:extern} result.fputs$14: int;
  var {:extern} result.fputs$19: int;
  var {:extern} result.isspace$5: int;
  var {:extern} result.printf$24: int;
  var {:extern} result.printf$38: int;
  var {:extern} $result.question.32$: int;
  var {:extern} $result.question.33$: int;
  var {:extern} $result.question.34$: int;
  var {:extern} result.scanf$17: int;
  var {:extern} result.sscanf$10: int;
  var {:extern} $scanf.arg.2$18$: int;
  var {:extern} totdf: int;
  var {:extern} totinfo: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(argv.__1, alloc);
    $InfoTbl.arg.3$23$ := 0;
    $QChiSq.arg.1$26$ := 0;
    $QChiSq.arg.1$40$ := 0;
    argc := 0;
    argv := 0;
    $fgets.arg.3$4$ := 0;
    $fputs.arg.2$13$ := 0;
    $fputs.arg.2$16$ := 0;
    $fputs.arg.2$21$ := 0;
    $fputs.arg.2$31$ := 0;
    $fputs.arg.2$37$ := 0;
    $fputs.arg.2$9$ := 0;
    i := 0;
    info := 0;
    call infodf := __HAVOC_det_malloc(4);
    $isspace.arg.1$6$ := 0;
    j := 0;
    p := 0;
    $printf.arg.2$28$ := 0;
    $printf.arg.2$42$ := 0;
    $printf.arg.4$27$ := 0;
    $printf.arg.4$41$ := 0;
    result.InfoTbl$22 := 0;
    result.QChiSq$25 := 0;
    result.QChiSq$39 := 0;
    result.__iob_func$30 := 0;
    result.__iob_func$36 := 0;
    result.__iob_func$3 := 0;
    result.__iob_func$8 := 0;
    result.__iob_func$12 := 0;
    result.__iob_func$15 := 0;
    result.__iob_func$20 := 0;
    result.fgets$2 := 0;
    result.fputs$29 := 0;
    result.fputs$35 := 0;
    result.fputs$7 := 0;
    result.fputs$11 := 0;
    result.fputs$14 := 0;
    result.fputs$19 := 0;
    result.isspace$5 := 0;
    result.main$1 := 0;
    result.printf$24 := 0;
    result.printf$38 := 0;
    $result.question.32$ := 0;
    $result.question.33$ := 0;
    $result.question.34$ := 0;
    result.scanf$17 := 0;
    result.sscanf$10 := 0;
    $scanf.arg.2$18$ := 0;
    totdf := 0;
    totinfo := 0;
    argc := argc.__1;
    argv := argv.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 45} true;
    goto label_4;

  label_4:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 46} true;
    goto label_5;

  label_5:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 47} true;
    goto label_6;

  label_6:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 48} true;
    goto label_7;

  label_7:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 49} true;
    goto label_8;

  label_8:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 50} true;
    goto label_9;

  label_9:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 50} true;
    totinfo := 0;
    assume value_is(__ctobpl_const_534, totinfo);
    goto label_10;

  label_10:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 51} true;
    goto label_11;

  label_11:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 53} true;
    totdf := 0;
    assume value_is(__ctobpl_const_535, totdf);
    goto label_12;

  label_12:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    goto label_12_head;

  label_12_head:
    call $QChiSq.arg.1$26$, $fgets.arg.3$4$, $fputs.arg.2$31$, $fputs.arg.2$9$, i, info, $isspace.arg.1$6$, j, p, $printf.arg.2$28$, $printf.arg.4$27$, result.InfoTbl$22, result.QChiSq$25, result.__iob_func$30, result.__iob_func$3, result.__iob_func$8, result.fgets$2, result.fputs$29, result.fputs$7, result.isspace$5, result.printf$24, $result.question.32$, $result.question.33$, $result.question.34$, result.scanf$17, result.sscanf$10, $scanf.arg.2$18$, totdf, totinfo, tempBoogie0, tempBoogie1 := main_loop_label_12_head(havoc_stringTemp, $InfoTbl.arg.3$23$, $QChiSq.arg.1$26$, $fgets.arg.3$4$, $fputs.arg.2$31$, $fputs.arg.2$9$, i, info, infodf, $isspace.arg.1$6$, j, p, $printf.arg.2$28$, $printf.arg.4$27$, result.InfoTbl$22, result.QChiSq$25, result.__iob_func$30, result.__iob_func$3, result.__iob_func$8, result.fgets$2, result.fputs$29, result.fputs$7, result.isspace$5, result.printf$24, $result.question.32$, $result.question.33$, $result.question.34$, result.scanf$17, result.sscanf$10, $scanf.arg.2$18$, totdf, totinfo, tempBoogie0, tempBoogie1);
    goto label_12_head_last;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    assert result.__iob_func$3 != 0;
    $fgets.arg.3$4$ := PLUS(result.__iob_func$3, 32, 0);
    assume value_is(__ctobpl_const_536, $fgets.arg.3$4$);
    assume value_is(__ctobpl_const_537, result.__iob_func$3);
    goto label_16;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    call result.fgets$2 := fgets(line, 256, $fgets.arg.3$4$);
    assume value_is(__ctobpl_const_538, $fgets.arg.3$4$);
    assume value_is(__ctobpl_const_539, $fgets.arg.3$4$);
    goto label_19;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    goto label_19_true, label_19_false;

  label_19_false:
    assume result.fgets$2 == 0;
    assume value_is(__ctobpl_const_540, result.fgets$2);
    goto label_20;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 117} true;
    goto label_20_true, label_20_false;

  label_20_false:
    assume !INT_LEQ(totdf, 0);
    assume value_is(__ctobpl_const_541, totdf);
    goto label_113;

  label_113:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 125} true;
    $QChiSq.arg.1$40$ := totinfo;
    assume value_is(__ctobpl_const_542, $QChiSq.arg.1$40$);
    assume value_is(__ctobpl_const_543, totinfo);
    goto label_122;

  label_122:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 125} true;
    call result.QChiSq$39 := QChiSq($QChiSq.arg.1$40$, totdf);
    assume value_is(__ctobpl_const_544, $QChiSq.arg.1$40$);
    assume value_is(__ctobpl_const_545, totdf);
    assume value_is(__ctobpl_const_546, $QChiSq.arg.1$40$);
    assume value_is(__ctobpl_const_547, totdf);
    goto label_125;

  label_125:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 125} true;
    $printf.arg.4$41$ := result.QChiSq$39;
    assume value_is(__ctobpl_const_548, $printf.arg.4$41$);
    assume value_is(__ctobpl_const_549, result.QChiSq$39);
    goto label_126;

  label_126:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 124} true;
    $printf.arg.2$42$ := totinfo;
    assume value_is(__ctobpl_const_550, $printf.arg.2$42$);
    assume value_is(__ctobpl_const_551, totinfo);
    goto label_127;

  label_127:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 123} true;
    call result.printf$38 := det_choice();
    goto label_130;

  label_130:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 127} true;
    result.main$1 := 0;
    goto label_1;

  label_1:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 128} true;
    call __HAVOC_free(infodf);
    return;

  label_20_true:
    assume INT_LEQ(totdf, 0);
    assume value_is(__ctobpl_const_541, totdf);
    goto label_114;

  label_114:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 119} true;
    call result.__iob_func$36 := __iob_func();
    goto label_117;

  label_117:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 119} true;
    assert result.__iob_func$36 != 0;
    $fputs.arg.2$37$ := PLUS(result.__iob_func$36, 32, 1);
    assume value_is(__ctobpl_const_552, $fputs.arg.2$37$);
    assume value_is(__ctobpl_const_553, result.__iob_func$36);
    goto label_118;

  label_118:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 119} true;
    call result.fputs$35 := fputs(havoc_stringTemp, $fputs.arg.2$37$);
    assume value_is(__ctobpl_const_554, $fputs.arg.2$37$);
    assume value_is(__ctobpl_const_555, $fputs.arg.2$37$);
    goto label_121;

  label_121:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 120} true;
    result.main$1 := 1;
    goto label_1;

  label_19_true:
    assume result.fgets$2 != 0;
    assume value_is(__ctobpl_const_540, result.fgets$2);
    goto label_21;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    p := line;
    assume value_is(__ctobpl_const_556, p);
    goto label_22;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    goto label_22_head;

  label_22_head:
    call $isspace.arg.1$6$, p, result.isspace$5 := main_loop_label_22_head($isspace.arg.1$6$, p, result.isspace$5);
    goto label_22_head_last;

  label_22_false:
    assume Mem_T.CHAR[p] == 0;
    assume value_is(__ctobpl_const_557, p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[p]);
    goto label_23;

  label_23:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 60} true;
    assert p != 0;
    goto label_23_true, label_23_false;

  label_23_false:
    assume Mem_T.CHAR[p] == 0;
    assume value_is(__ctobpl_const_565, p);
    assume value_is(__ctobpl_const_566, Mem_T.CHAR[p]);
    goto label_30;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 61} true;
    goto label_30_dummy;

  label_23_true:
    assume Mem_T.CHAR[p] != 0;
    assume value_is(__ctobpl_const_565, p);
    assume value_is(__ctobpl_const_566, Mem_T.CHAR[p]);
    goto label_31;

  label_31:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 63} true;
    assert p != 0;
    goto label_31_true, label_31_false;

  label_31_false:
    assume !INT_EQ(Mem_T.CHAR[p], 35);
    assume value_is(__ctobpl_const_567, p);
    assume value_is(__ctobpl_const_568, Mem_T.CHAR[p]);
    goto label_32;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 69} true;
    call result.sscanf$10 := det_choice();
    call tempBoogie0 := det_choice();
    Mem_T.INT4[r] := tempBoogie0;
    call tempBoogie1 := det_choice();
    Mem_T.INT4[c] := tempBoogie1;
    assume value_is(__ctobpl_const_569, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_570, Mem_T.INT4[c]);
    goto label_43;

  label_43:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 69} true;
    goto label_43_true, label_43_false;

  label_43_false:
    assume !INT_NEQ(result.sscanf$10, 2);
    assume value_is(__ctobpl_const_571, result.sscanf$10);
    goto label_44;

  label_44:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 75} true;
    goto label_44_true, label_44_false;

  label_44_false:
    assume !INT_LT(1000, MULT(Mem_T.INT4[r], Mem_T.INT4[c]));
    assume value_is(__ctobpl_const_572, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_573, Mem_T.INT4[c]);
    goto label_53;

  label_53:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 83} true;
    i := 0;
    assume value_is(__ctobpl_const_574, i);
    goto label_62;

  label_62:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 83} true;
    goto label_62_head;

  label_62_head:
    call i, j, result.scanf$17, $scanf.arg.2$18$, tempBoogie0 := main_loop_label_62_head(i, j, result.scanf$17, $scanf.arg.2$18$, tempBoogie0);
    goto label_62_head_last;

  label_62_false:
    assume !INT_LT(i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    goto label_63;

  label_63:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    goto label_81;

  label_81:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    call result.InfoTbl$22 := InfoTbl(Mem_T.INT4[r], Mem_T.INT4[c], $InfoTbl.arg.3$23$, infodf);
    assume value_is(__ctobpl_const_577, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_578, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_579, Mem_T.INT4[infodf]);
    assume value_is(__ctobpl_const_580, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_581, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_582, Mem_T.INT4[infodf]);
    goto label_84;

  label_84:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    info := result.InfoTbl$22;
    assume value_is(__ctobpl_const_583, info);
    assume value_is(__ctobpl_const_584, result.InfoTbl$22);
    goto label_85;

  label_85:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 99} true;
    goto label_85_true, label_85_false;

  label_85_false:
    assume !INT_LEQ(0, info);
    assume value_is(__ctobpl_const_585, info);
    goto label_86;

  label_86:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 113} true;
    call result.__iob_func$30 := __iob_func();
    goto label_100;

  label_100:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 113} true;
    assert result.__iob_func$30 != 0;
    $fputs.arg.2$31$ := PLUS(result.__iob_func$30, 32, 1);
    assume value_is(__ctobpl_const_586, $fputs.arg.2$31$);
    assume value_is(__ctobpl_const_587, result.__iob_func$30);
    goto label_101;

  label_101:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    goto label_101_true, label_101_false;

  label_101_false:
    assume !INT_LT(info, BOOGIE_FLOAT_CONST___3.5);
    assume value_is(__ctobpl_const_588, info);
    goto label_102;

  label_102:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    goto label_102_true, label_102_false;

  label_102_false:
    assume !INT_LT(info, BOOGIE_FLOAT_CONST___2.5);
    assume value_is(__ctobpl_const_589, info);
    goto label_107;

  label_107:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    goto label_107_true, label_107_false;

  label_107_false:
    assume !INT_LT(info, BOOGIE_FLOAT_CONST___1.5);
    assume value_is(__ctobpl_const_590, info);
    goto label_110;

  label_110:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    $result.question.34$ := havoc_stringTemp;
    assume value_is(__ctobpl_const_591, $result.question.34$);
    goto label_112;

  label_112:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    $result.question.33$ := $result.question.34$;
    assume value_is(__ctobpl_const_593, $result.question.33$);
    assume value_is(__ctobpl_const_594, $result.question.34$);
    goto label_109;

  label_109:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    $result.question.32$ := $result.question.33$;
    assume value_is(__ctobpl_const_596, $result.question.32$);
    assume value_is(__ctobpl_const_597, $result.question.33$);
    goto label_104;

  label_104:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    call result.fputs$29 := fputs($result.question.32$, $fputs.arg.2$31$);
    assume value_is(__ctobpl_const_599, $result.question.32$);
    assume value_is(__ctobpl_const_600, $fputs.arg.2$31$);
    assume value_is(__ctobpl_const_601, $result.question.32$);
    assume value_is(__ctobpl_const_602, $fputs.arg.2$31$);
    goto label_104_dummy;

  label_107_true:
    assume INT_LT(info, BOOGIE_FLOAT_CONST___1.5);
    assume value_is(__ctobpl_const_590, info);
    goto label_111;

  label_111:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    $result.question.34$ := havoc_stringTemp;
    assume value_is(__ctobpl_const_592, $result.question.34$);
    goto label_112;

  label_102_true:
    assume INT_LT(info, BOOGIE_FLOAT_CONST___2.5);
    assume value_is(__ctobpl_const_589, info);
    goto label_108;

  label_108:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    $result.question.33$ := havoc_stringTemp;
    assume value_is(__ctobpl_const_595, $result.question.33$);
    goto label_109;

  label_101_true:
    assume INT_LT(info, BOOGIE_FLOAT_CONST___3.5);
    assume value_is(__ctobpl_const_588, info);
    goto label_103;

  label_103:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    $result.question.32$ := havoc_stringTemp;
    assume value_is(__ctobpl_const_598, $result.question.32$);
    goto label_104;

  label_85_true:
    assume INT_LEQ(0, info);
    assume value_is(__ctobpl_const_585, info);
    goto label_89;

  label_89:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    $QChiSq.arg.1$26$ := info;
    assume value_is(__ctobpl_const_603, $QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_604, info);
    goto label_90;

  label_90:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    call result.QChiSq$25 := QChiSq($QChiSq.arg.1$26$, Mem_T.INT4[infodf]);
    assume value_is(__ctobpl_const_605, $QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_606, Mem_T.INT4[infodf]);
    assume value_is(__ctobpl_const_607, $QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_608, Mem_T.INT4[infodf]);
    goto label_93;

  label_93:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    $printf.arg.4$27$ := result.QChiSq$25;
    assume value_is(__ctobpl_const_609, $printf.arg.4$27$);
    assume value_is(__ctobpl_const_610, result.QChiSq$25);
    goto label_94;

  label_94:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 102} true;
    $printf.arg.2$28$ := info;
    assume value_is(__ctobpl_const_611, $printf.arg.2$28$);
    assume value_is(__ctobpl_const_612, info);
    goto label_95;

  label_95:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 101} true;
    call result.printf$24 := det_choice();
    goto label_98;

  label_98:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 105} true;
    tempBoogie0 := PLUS(totinfo, 1, info);
    totinfo := tempBoogie0;
    assume value_is(__ctobpl_const_613, totinfo);
    assume value_is(__ctobpl_const_614, info);
    goto label_99;

  label_99:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 106} true;
    tempBoogie0 := PLUS(totdf, 1, Mem_T.INT4[infodf]);
    totdf := tempBoogie0;
    assume value_is(__ctobpl_const_615, totdf);
    assume value_is(__ctobpl_const_616, Mem_T.INT4[infodf]);
    goto label_99_dummy;

  label_62_true:
    assume INT_LT(i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    goto label_64;

  label_64:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    j := 0;
    assume value_is(__ctobpl_const_617, j);
    goto label_65;

  label_65:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    goto label_65_head;

  label_65_head:
    call j, result.scanf$17, $scanf.arg.2$18$, tempBoogie0 := main_loop_label_65_head(i, j, result.scanf$17, $scanf.arg.2$18$, tempBoogie0);
    goto label_65_head_last;

  label_65_false:
    assume !INT_LT(j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_66;

  label_66:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    i := PLUS(i, 1, 1);
    assume value_is(__ctobpl_const_620, i);
    goto label_66_dummy;

  label_65_true:
    assume INT_LT(j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_67;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    assert f != 0;
    $scanf.arg.2$18$ := PLUS(f, 4, PLUS(MULT(i, Mem_T.INT4[c]), 1, j));
    assume value_is(__ctobpl_const_621, $scanf.arg.2$18$);
    assume value_is(__ctobpl_const_622, i);
    assume value_is(__ctobpl_const_623, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_624, j);
    assume value_is(__ctobpl_const_625, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(i, Mem_T.INT4[c]), 1, j))]);
    goto label_68;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    call result.scanf$17 := det_choice();
    call tempBoogie0 := det_choice();
    Mem_T.INT4[$scanf.arg.2$18$] := tempBoogie0;
    assume value_is(__ctobpl_const_626, $scanf.arg.2$18$);
    goto label_71;

  label_71:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    goto label_71_true, label_71_false;

  label_71_false:
    assume !INT_NEQ(result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, result.scanf$17);
    goto label_72;

  label_72:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    j := PLUS(j, 1, 1);
    assume value_is(__ctobpl_const_628, j);
    goto label_72_dummy;

  label_71_true:
    assume INT_NEQ(result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, result.scanf$17);
    goto label_73;

  label_73:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 88} true;
    call result.__iob_func$20 := __iob_func();
    goto label_76;

  label_76:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 88} true;
    assert result.__iob_func$20 != 0;
    $fputs.arg.2$21$ := PLUS(result.__iob_func$20, 32, 1);
    assume value_is(__ctobpl_const_629, $fputs.arg.2$21$);
    assume value_is(__ctobpl_const_630, result.__iob_func$20);
    goto label_77;

  label_77:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 87} true;
    call result.fputs$19 := fputs(havoc_stringTemp, $fputs.arg.2$21$);
    assume value_is(__ctobpl_const_631, $fputs.arg.2$21$);
    assume value_is(__ctobpl_const_632, $fputs.arg.2$21$);
    goto label_80;

  label_80:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 90} true;
    result.main$1 := 1;
    goto label_1;

  label_44_true:
    assume INT_LT(1000, MULT(Mem_T.INT4[r], Mem_T.INT4[c]));
    assume value_is(__ctobpl_const_572, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_573, Mem_T.INT4[c]);
    goto label_54;

  label_54:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 77} true;
    call result.__iob_func$15 := __iob_func();
    goto label_57;

  label_57:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 77} true;
    assert result.__iob_func$15 != 0;
    $fputs.arg.2$16$ := PLUS(result.__iob_func$15, 32, 1);
    assume value_is(__ctobpl_const_633, $fputs.arg.2$16$);
    assume value_is(__ctobpl_const_634, result.__iob_func$15);
    goto label_58;

  label_58:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 77} true;
    call result.fputs$14 := fputs(havoc_stringTemp, $fputs.arg.2$16$);
    assume value_is(__ctobpl_const_635, $fputs.arg.2$16$);
    assume value_is(__ctobpl_const_636, $fputs.arg.2$16$);
    goto label_61;

  label_61:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 78} true;
    result.main$1 := 1;
    goto label_1;

  label_43_true:
    assume INT_NEQ(result.sscanf$10, 2);
    assume value_is(__ctobpl_const_571, result.sscanf$10);
    goto label_45;

  label_45:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 71} true;
    call result.__iob_func$12 := __iob_func();
    goto label_48;

  label_48:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 71} true;
    assert result.__iob_func$12 != 0;
    $fputs.arg.2$13$ := PLUS(result.__iob_func$12, 32, 1);
    assume value_is(__ctobpl_const_637, $fputs.arg.2$13$);
    assume value_is(__ctobpl_const_638, result.__iob_func$12);
    goto label_49;

  label_49:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 71} true;
    call result.fputs$11 := fputs(havoc_stringTemp, $fputs.arg.2$13$);
    assume value_is(__ctobpl_const_639, $fputs.arg.2$13$);
    assume value_is(__ctobpl_const_640, $fputs.arg.2$13$);
    goto label_52;

  label_52:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 72} true;
    result.main$1 := 1;
    goto label_1;

  label_31_true:
    assume INT_EQ(Mem_T.CHAR[p], 35);
    assume value_is(__ctobpl_const_567, p);
    assume value_is(__ctobpl_const_568, Mem_T.CHAR[p]);
    goto label_35;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    call result.__iob_func$8 := __iob_func();
    goto label_38;

  label_38:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    assert result.__iob_func$8 != 0;
    $fputs.arg.2$9$ := PLUS(result.__iob_func$8, 32, 1);
    assume value_is(__ctobpl_const_641, $fputs.arg.2$9$);
    assume value_is(__ctobpl_const_642, result.__iob_func$8);
    goto label_39;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    call result.fputs$7 := fputs(line, $fputs.arg.2$9$);
    assume value_is(__ctobpl_const_643, $fputs.arg.2$9$);
    assume value_is(__ctobpl_const_644, $fputs.arg.2$9$);
    goto label_42;

  label_42:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 66} true;
    goto label_42_dummy;

  label_22_true:
    assume Mem_T.CHAR[p] != 0;
    assume value_is(__ctobpl_const_557, p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[p]);
    goto label_24;

  label_24:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    assert p != 0;
    $isspace.arg.1$6$ := Mem_T.CHAR[p];
    assume value_is(__ctobpl_const_559, $isspace.arg.1$6$);
    assume value_is(__ctobpl_const_560, p);
    assume value_is(__ctobpl_const_561, Mem_T.CHAR[p]);
    goto label_25;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    call result.isspace$5 := isspace($isspace.arg.1$6$);
    assume value_is(__ctobpl_const_562, $isspace.arg.1$6$);
    assume value_is(__ctobpl_const_563, $isspace.arg.1$6$);
    goto label_28;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    goto label_28_true, label_28_false;

  label_28_false:
    assume result.isspace$5 == 0;
    assume value_is(__ctobpl_const_564, result.isspace$5);
    goto label_23;

  label_28_true:
    assume result.isspace$5 != 0;
    assume value_is(__ctobpl_const_564, result.isspace$5);
    goto label_29;

  label_29:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    p := PLUS(p, 1, 1);
    assume value_is(__ctobpl_const_645, p);
    goto label_29_dummy;

  label_72_dummy:
    assume false;
    return;

  label_65_head_last:
    goto label_65_true, label_65_false;

  label_66_dummy:
    assume false;
    return;

  label_62_head_last:
    goto label_62_true, label_62_false;

  label_29_dummy:
    assume false;
    return;

  label_22_head_last:
    assert p != 0;
    goto label_22_true, label_22_false;

  label_30_dummy:
    assume false;
    return;

  label_104_dummy:
    assume false;
    return;

  label_99_dummy:
    assume false;
    return;

  label_42_dummy:
    assume false;
    return;

  label_12_head_last:
    call result.__iob_func$3 := __iob_func();
    goto label_15;
}



procedure {:extern} modff(_X.__1: int, _Y.__1: int) returns (result.modff$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} modff(_X.__1: int, _Y.__1: int) returns (result.modff$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _F: int;
  var {:extern} _I: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $modf.arg.1$3$: int;
  var {:extern} result.modf$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(_Y.__1, alloc);
    _F := 0;
    call _I := __HAVOC_det_malloc(8);
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $modf.arg.1$3$ := 0;
    result.modf$2 := 0;
    result.modff$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 752} true;
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 752} true;
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 753} true;
    $modf.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_646, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_647, _X);
    goto label_6;

  label_6:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 753} true;
    call result.modf$2 := modf($modf.arg.1$3$, _I);
    assume value_is(__ctobpl_const_648, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_649, Mem_T.FLOAT[_I]);
    assume value_is(__ctobpl_const_650, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_651, Mem_T.FLOAT[_I]);
    goto label_9;

  label_9:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 753} true;
    _F := result.modf$2;
    assume value_is(__ctobpl_const_652, _F);
    assume value_is(__ctobpl_const_653, result.modf$2);
    goto label_10;

  label_10:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 754} true;
    assert _Y != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[_Y := Mem_T.FLOAT[_I]];
    assume value_is(__ctobpl_const_654, _Y);
    assume value_is(__ctobpl_const_655, Mem_T.FLOAT[_Y]);
    assume value_is(__ctobpl_const_656, Mem_T.FLOAT[_I]);
    goto label_11;

  label_11:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 755} true;
    result.modff$1 := _F;
    assume value_is(__ctobpl_const_657, _F);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 756} true;
    call __HAVOC_free(_I);
    return;
}



procedure {:extern} modfl(_X.__1: int, _Y.__1: int) returns (result.modfl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} modfl(_X.__1: int, _Y.__1: int) returns (result.modfl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _F: int;
  var {:extern} _I: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $modf.arg.1$3$: int;
  var {:extern} result.modf$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    assume INT_LT(_Y.__1, alloc);
    _F := 0;
    call _I := __HAVOC_det_malloc(8);
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $modf.arg.1$3$ := 0;
    result.modf$2 := 0;
    result.modfl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 921} true;
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 921} true;
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 922} true;
    $modf.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_658, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_659, _X);
    goto label_6;

  label_6:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 922} true;
    call result.modf$2 := modf($modf.arg.1$3$, _I);
    assume value_is(__ctobpl_const_660, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_661, Mem_T.FLOAT[_I]);
    assume value_is(__ctobpl_const_662, $modf.arg.1$3$);
    assume value_is(__ctobpl_const_663, Mem_T.FLOAT[_I]);
    goto label_9;

  label_9:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 922} true;
    _F := result.modf$2;
    assume value_is(__ctobpl_const_664, _F);
    assume value_is(__ctobpl_const_665, result.modf$2);
    goto label_10;

  label_10:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 923} true;
    assert _Y != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[_Y := Mem_T.FLOAT[_I]];
    assume value_is(__ctobpl_const_666, _Y);
    assume value_is(__ctobpl_const_667, Mem_T.FLOAT[_Y]);
    assume value_is(__ctobpl_const_668, Mem_T.FLOAT[_I]);
    goto label_11;

  label_11:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 924} true;
    result.modfl$1 := _F;
    assume value_is(__ctobpl_const_669, _F);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 925} true;
    call __HAVOC_free(_I);
    return;
}



procedure {:extern} powf(_X.__1: int, _Y.__1: int) returns (result.powf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} powf(_X.__1: int, _Y.__1: int) returns (result.powf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $pow.arg.1$4$: int;
  var {:extern} $pow.arg.2$3$: int;
  var {:extern} result.pow$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $pow.arg.1$4$ := 0;
    $pow.arg.2$3$ := 0;
    result.pow$2 := 0;
    result.powf$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 760} true;
    $pow.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_670, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_671, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 760} true;
    $pow.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_672, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_673, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 760} true;
    call result.pow$2 := pow($pow.arg.1$4$, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_674, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_675, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_676, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_677, $pow.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 760} true;
    result.powf$1 := result.pow$2;
    assume value_is(__ctobpl_const_678, result.pow$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 761} true;
    return;
}



procedure {:extern} powl(_X.__1: int, _Y.__1: int) returns (result.powl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} powl(_X.__1: int, _Y.__1: int) returns (result.powl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} _Y: int;
  var {:extern} $pow.arg.1$4$: int;
  var {:extern} $pow.arg.2$3$: int;
  var {:extern} result.pow$2: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _Y := 0;
    _X := 0;
    _Y := 0;
    $pow.arg.1$4$ := 0;
    $pow.arg.2$3$ := 0;
    result.pow$2 := 0;
    result.powl$1 := 0;
    _X := _X.__1;
    _Y := _Y.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 933} true;
    $pow.arg.2$3$ := _Y;
    assume value_is(__ctobpl_const_679, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_680, _Y);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 933} true;
    $pow.arg.1$4$ := _X;
    assume value_is(__ctobpl_const_681, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_682, _X);
    goto label_5;

  label_5:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 933} true;
    call result.pow$2 := pow($pow.arg.1$4$, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_683, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_684, $pow.arg.2$3$);
    assume value_is(__ctobpl_const_685, $pow.arg.1$4$);
    assume value_is(__ctobpl_const_686, $pow.arg.2$3$);
    goto label_8;

  label_8:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 933} true;
    result.powl$1 := result.pow$2;
    assume value_is(__ctobpl_const_687, result.pow$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 934} true;
    return;
}



procedure {:extern} sinf(_X.__1: int) returns (result.sinf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sinf(_X.__1: int) returns (result.sinf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sin$2: int;
  var {:extern} $sin.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sin$2 := 0;
    result.sinf$1 := 0;
    $sin.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 765} true;
    $sin.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_688, $sin.arg.1$3$);
    assume value_is(__ctobpl_const_689, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 765} true;
    call result.sin$2 := sin($sin.arg.1$3$);
    assume value_is(__ctobpl_const_690, $sin.arg.1$3$);
    assume value_is(__ctobpl_const_691, $sin.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 765} true;
    result.sinf$1 := result.sin$2;
    assume value_is(__ctobpl_const_692, result.sin$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 766} true;
    return;
}



procedure {:extern} sinhf(_X.__1: int) returns (result.sinhf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sinhf(_X.__1: int) returns (result.sinhf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sinh$2: int;
  var {:extern} $sinh.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sinh$2 := 0;
    result.sinhf$1 := 0;
    $sinh.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 770} true;
    $sinh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_693, $sinh.arg.1$3$);
    assume value_is(__ctobpl_const_694, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 770} true;
    call result.sinh$2 := sinh($sinh.arg.1$3$);
    assume value_is(__ctobpl_const_695, $sinh.arg.1$3$);
    assume value_is(__ctobpl_const_696, $sinh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 770} true;
    result.sinhf$1 := result.sinh$2;
    assume value_is(__ctobpl_const_697, result.sinh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 771} true;
    return;
}



procedure {:extern} sinhl(_X.__1: int) returns (result.sinhl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sinhl(_X.__1: int) returns (result.sinhl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sinh$2: int;
  var {:extern} $sinh.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sinh$2 := 0;
    result.sinhl$1 := 0;
    $sinh.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 945} true;
    $sinh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_698, $sinh.arg.1$3$);
    assume value_is(__ctobpl_const_699, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 945} true;
    call result.sinh$2 := sinh($sinh.arg.1$3$);
    assume value_is(__ctobpl_const_700, $sinh.arg.1$3$);
    assume value_is(__ctobpl_const_701, $sinh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 945} true;
    result.sinhl$1 := result.sinh$2;
    assume value_is(__ctobpl_const_702, result.sinh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 946} true;
    return;
}



procedure {:extern} sinl(_X.__1: int) returns (result.sinl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sinl(_X.__1: int) returns (result.sinl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sin$2: int;
  var {:extern} $sin.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sin$2 := 0;
    result.sinl$1 := 0;
    $sin.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 950} true;
    $sin.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_703, $sin.arg.1$3$);
    assume value_is(__ctobpl_const_704, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 950} true;
    call result.sin$2 := sin($sin.arg.1$3$);
    assume value_is(__ctobpl_const_705, $sin.arg.1$3$);
    assume value_is(__ctobpl_const_706, $sin.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 950} true;
    result.sinl$1 := result.sin$2;
    assume value_is(__ctobpl_const_707, result.sin$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 951} true;
    return;
}



procedure {:extern} sqrtf(_X.__1: int) returns (result.sqrtf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sqrtf(_X.__1: int) returns (result.sqrtf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sqrt$2: int;
  var {:extern} $sqrt.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sqrt$2 := 0;
    result.sqrtf$1 := 0;
    $sqrt.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 775} true;
    $sqrt.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_708, $sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_709, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 775} true;
    call result.sqrt$2 := sqrt($sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_710, $sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_711, $sqrt.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 775} true;
    result.sqrtf$1 := result.sqrt$2;
    assume value_is(__ctobpl_const_712, result.sqrt$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 776} true;
    return;
}



procedure {:extern} sqrtl(_X.__1: int) returns (result.sqrtl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} sqrtl(_X.__1: int) returns (result.sqrtl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.sqrt$2: int;
  var {:extern} $sqrt.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.sqrt$2 := 0;
    result.sqrtl$1 := 0;
    $sqrt.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 955} true;
    $sqrt.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_713, $sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_714, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 955} true;
    call result.sqrt$2 := sqrt($sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_715, $sqrt.arg.1$3$);
    assume value_is(__ctobpl_const_716, $sqrt.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 955} true;
    result.sqrtl$1 := result.sqrt$2;
    assume value_is(__ctobpl_const_717, result.sqrt$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 956} true;
    return;
}



procedure {:extern} tanf(_X.__1: int) returns (result.tanf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} tanf(_X.__1: int) returns (result.tanf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.tan$2: int;
  var {:extern} $tan.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.tan$2 := 0;
    result.tanf$1 := 0;
    $tan.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 780} true;
    $tan.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_718, $tan.arg.1$3$);
    assume value_is(__ctobpl_const_719, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 780} true;
    call result.tan$2 := tan($tan.arg.1$3$);
    assume value_is(__ctobpl_const_720, $tan.arg.1$3$);
    assume value_is(__ctobpl_const_721, $tan.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 780} true;
    result.tanf$1 := result.tan$2;
    assume value_is(__ctobpl_const_722, result.tan$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 781} true;
    return;
}



procedure {:extern} tanhf(_X.__1: int) returns (result.tanhf$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} tanhf(_X.__1: int) returns (result.tanhf$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.tanh$2: int;
  var {:extern} $tanh.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.tanh$2 := 0;
    result.tanhf$1 := 0;
    $tanh.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 785} true;
    $tanh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_723, $tanh.arg.1$3$);
    assume value_is(__ctobpl_const_724, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 785} true;
    call result.tanh$2 := tanh($tanh.arg.1$3$);
    assume value_is(__ctobpl_const_725, $tanh.arg.1$3$);
    assume value_is(__ctobpl_const_726, $tanh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 785} true;
    result.tanhf$1 := result.tanh$2;
    assume value_is(__ctobpl_const_727, result.tanh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 786} true;
    return;
}



procedure {:extern} tanhl(_X.__1: int) returns (result.tanhl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} tanhl(_X.__1: int) returns (result.tanhl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.tanh$2: int;
  var {:extern} $tanh.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.tanh$2 := 0;
    result.tanhl$1 := 0;
    $tanh.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 960} true;
    $tanh.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_728, $tanh.arg.1$3$);
    assume value_is(__ctobpl_const_729, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 960} true;
    call result.tanh$2 := tanh($tanh.arg.1$3$);
    assume value_is(__ctobpl_const_730, $tanh.arg.1$3$);
    assume value_is(__ctobpl_const_731, $tanh.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 960} true;
    result.tanhl$1 := result.tanh$2;
    assume value_is(__ctobpl_const_732, result.tanh$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 961} true;
    return;
}



procedure {:extern} tanl(_X.__1: int) returns (result.tanl$1: int);
  free requires INT_LT(0, alloc);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;
  free ensures INT_LEQ(old(alloc), alloc);
  free ensures Mem_T.A1000INT4 == old(Mem_T.A1000INT4);
  free ensures Mem_T.A15CHAR == old(Mem_T.A15CHAR);
  free ensures Mem_T.A17CHAR == old(Mem_T.A17CHAR);
  free ensures Mem_T.A18CHAR == old(Mem_T.A18CHAR);
  free ensures Mem_T.A21CHAR == old(Mem_T.A21CHAR);
  free ensures Mem_T.A256CHAR == old(Mem_T.A256CHAR);
  free ensures Mem_T.A29CHAR == old(Mem_T.A29CHAR);
  free ensures Mem_T.A34CHAR == old(Mem_T.A34CHAR);
  free ensures Mem_T.A37CHAR == old(Mem_T.A37CHAR);
  free ensures Mem_T.A41CHAR == old(Mem_T.A41CHAR);
  free ensures Mem_T.A5CHAR == old(Mem_T.A5CHAR);
  free ensures Mem_T.A6FLOAT == old(Mem_T.A6FLOAT);
  free ensures Mem_T.A7CHAR == old(Mem_T.A7CHAR);
  free ensures Mem_T.CHAR == old(Mem_T.CHAR);
  free ensures Mem_T.FLOAT == old(Mem_T.FLOAT);
  free ensures Mem_T.INT4 == old(Mem_T.INT4);
  free ensures Mem_T.PCHAR == old(Mem_T.PCHAR);
  free ensures Mem_T.PFLOAT == old(Mem_T.PFLOAT);
  free ensures Mem_T.PINT4 == old(Mem_T.PINT4);
  free ensures Mem_T.P_iobuf == old(Mem_T.P_iobuf);
  free ensures Mem_T.UINT4 == old(Mem_T.UINT4);



implementation {:extern} tanl(_X.__1: int) returns (result.tanl$1: int)
{
  var {:extern} havoc_stringTemp: int;
  var {:extern} condVal: int;
  var {:extern} _X: int;
  var {:extern} result.tan$2: int;
  var {:extern} $tan.arg.1$3$: int;
  var {:extern} tempBoogie0: int;
  var {:extern} tempBoogie1: int;
  var {:extern} tempBoogie2: int;
  var {:extern} tempBoogie3: int;
  var {:extern} tempBoogie4: int;
  var {:extern} tempBoogie5: int;
  var {:extern} tempBoogie6: int;
  var {:extern} tempBoogie7: int;
  var {:extern} tempBoogie8: int;
  var {:extern} tempBoogie9: int;
  var {:extern} tempBoogie10: int;
  var {:extern} tempBoogie11: int;
  var {:extern} tempBoogie12: int;
  var {:extern} tempBoogie13: int;
  var {:extern} tempBoogie14: int;
  var {:extern} tempBoogie15: int;
  var {:extern} tempBoogie16: int;
  var {:extern} tempBoogie17: int;
  var {:extern} tempBoogie18: int;
  var {:extern} tempBoogie19: int;

  anon0:
    havoc_stringTemp := 0;
    goto start;

  start:
    _X := 0;
    _X := 0;
    result.tan$2 := 0;
    result.tanl$1 := 0;
    $tan.arg.1$3$ := 0;
    _X := _X.__1;
    goto label_3;

  label_3:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 965} true;
    $tan.arg.1$3$ := _X;
    assume value_is(__ctobpl_const_733, $tan.arg.1$3$);
    assume value_is(__ctobpl_const_734, _X);
    goto label_4;

  label_4:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 965} true;
    call result.tan$2 := tan($tan.arg.1$3$);
    assume value_is(__ctobpl_const_735, $tan.arg.1$3$);
    assume value_is(__ctobpl_const_736, $tan.arg.1$3$);
    goto label_7;

  label_7:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 965} true;
    result.tanl$1 := result.tan$2;
    assume value_is(__ctobpl_const_737, result.tan$2);
    goto label_1;

  label_1:
    assert {:sourcefile "c:\program files (x86)\microsoft visual studio 12.0\vc\include\math.h"} {:sourceline 966} true;
    return;
}



implementation InfoTbl_loop_label_93_head(in_c: int, in_info: int, in_j: int, in_pj: int, in_result.log$9: int, in_xj: int, in_tempBoogie0: int) returns (out_info: int, out_j: int, out_pj: int, out_result.log$9: int, out_tempBoogie0: int)
{

  entry:
    out_info, out_j, out_pj, out_result.log$9, out_tempBoogie0 := in_info, in_j, in_pj, in_result.log$9, in_tempBoogie0;
    goto label_93_head;

  label_93_head:
    goto label_93_true, label_93_false;

  label_93_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_47, out_j);
    assume value_is(__ctobpl_const_48, in_c);
    out_info, out_j, out_pj, out_result.log$9, out_tempBoogie0 := in_info, in_j, in_pj, in_result.log$9, in_tempBoogie0;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_98:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_60, out_j);
    goto label_98_dummy;

  label_97_false:
    assume !INT_LT(0, out_pj);
    assume value_is(__ctobpl_const_54, out_pj);
    goto label_98;

  label_102:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 395} true;
    out_tempBoogie0 := MINUS_BOTH_PTR_OR_BOTH_INT(out_info, MULT(out_pj, out_result.log$9), 1);
    out_info := out_tempBoogie0;
    assume value_is(__ctobpl_const_57, out_info);
    assume value_is(__ctobpl_const_58, out_pj);
    assume value_is(__ctobpl_const_59, out_result.log$9);
    goto label_98;

  label_99:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 395} true;
    call out_result.log$9 := log(out_pj);
    assume value_is(__ctobpl_const_55, out_pj);
    assume value_is(__ctobpl_const_56, out_pj);
    goto label_102;

  label_97_true:
    assume INT_LT(0, out_pj);
    assume value_is(__ctobpl_const_54, out_pj);
    goto label_99;

  label_97:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 394} true;
    goto label_97_true, label_97_false;

  label_96:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 392} true;
    assert in_xj != 0;
    out_pj := Mem_T.FLOAT[PLUS(in_xj, 8, out_j)];
    assume value_is(__ctobpl_const_50, out_pj);
    assume value_is(__ctobpl_const_51, in_xj);
    assume value_is(__ctobpl_const_52, out_j);
    assume value_is(__ctobpl_const_53, Mem_T.FLOAT[PLUS(in_xj, 8, out_j)]);
    goto label_97;

  label_95:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 392} true;
    goto label_96;

  label_93_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_47, out_j);
    assume value_is(__ctobpl_const_48, in_c);
    goto label_95;

  label_98_dummy:
    call {:si_unique_call 1} out_info, out_j, out_pj, out_result.log$9, out_tempBoogie0 := InfoTbl_loop_label_93_head(in_c, out_info, out_j, out_pj, out_result.log$9, in_xj, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_93_head(in_c: int, in_info: int, in_j: int, in_pj: int, in_result.log$9: int, in_xj: int, in_tempBoogie0: int) returns (out_info: int, out_j: int, out_pj: int, out_result.log$9: int, out_tempBoogie0: int);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;



implementation InfoTbl_loop_label_83_head(in_c: int, in_f: int, in_i: int, in_info: int, in_j: int, in_pij: int, in_result.log$8: int, in_tempBoogie0: int) returns (out_info: int, out_j: int, out_pij: int, out_result.log$8: int, out_tempBoogie0: int)
{

  entry:
    out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0 := in_info, in_j, in_pij, in_result.log$8, in_tempBoogie0;
    goto label_83_head;

  label_83_head:
    goto label_83_true, label_83_false;

  label_83_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_72, out_j);
    assume value_is(__ctobpl_const_73, in_c);
    out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0 := in_info, in_j, in_pij, in_result.log$8, in_tempBoogie0;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_88:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_87, out_j);
    goto label_88_dummy;

  label_87_false:
    assume !INT_LT(0, out_pij);
    assume value_is(__ctobpl_const_81, out_pij);
    goto label_88;

  label_92:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    out_tempBoogie0 := PLUS(out_info, 1, MULT(out_pij, out_result.log$8));
    out_info := out_tempBoogie0;
    assume value_is(__ctobpl_const_84, out_info);
    assume value_is(__ctobpl_const_85, out_pij);
    assume value_is(__ctobpl_const_86, out_result.log$8);
    goto label_88;

  label_89:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    call out_result.log$8 := log(out_pij);
    assume value_is(__ctobpl_const_82, out_pij);
    assume value_is(__ctobpl_const_83, out_pij);
    goto label_92;

  label_87_true:
    assume INT_LT(0, out_pij);
    assume value_is(__ctobpl_const_81, out_pij);
    goto label_89;

  label_87:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 385} true;
    goto label_87_true, label_87_false;

  label_86:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    assert in_f != 0;
    out_pij := Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(in_i, in_c), 1, out_j))];
    assume value_is(__ctobpl_const_75, out_pij);
    assume value_is(__ctobpl_const_76, in_f);
    assume value_is(__ctobpl_const_77, in_i);
    assume value_is(__ctobpl_const_78, in_c);
    assume value_is(__ctobpl_const_79, out_j);
    assume value_is(__ctobpl_const_80, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(in_i, in_c), 1, out_j))]);
    goto label_87;

  label_85:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    goto label_86;

  label_83_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_72, out_j);
    assume value_is(__ctobpl_const_73, in_c);
    goto label_85;

  label_88_dummy:
    call {:si_unique_call 1} out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0 := InfoTbl_loop_label_83_head(in_c, in_f, in_i, out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_83_head(in_c: int, in_f: int, in_i: int, in_info: int, in_j: int, in_pij: int, in_result.log$8: int, in_tempBoogie0: int) returns (out_info: int, out_j: int, out_pij: int, out_result.log$8: int, out_tempBoogie0: int);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;



implementation InfoTbl_loop_label_73_head(in_c: int, in_f: int, in_i: int, in_info: int, in_j: int, in_pi: int, in_pij: int, in_r: int, in_result.log$7: int, in_result.log$8: int, in_xi: int, in_tempBoogie0: int) returns (out_i: int, out_info: int, out_j: int, out_pi: int, out_pij: int, out_result.log$7: int, out_result.log$8: int, out_tempBoogie0: int)
{

  entry:
    out_i, out_info, out_j, out_pi, out_pij, out_result.log$7, out_result.log$8, out_tempBoogie0 := in_i, in_info, in_j, in_pi, in_pij, in_result.log$7, in_result.log$8, in_tempBoogie0;
    goto label_73_head;

  label_73_head:
    goto label_73_true, label_73_false;

  label_73_false:
    assume !INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_44, out_i);
    assume value_is(__ctobpl_const_45, in_r);
    out_i, out_info, out_j, out_pi, out_pij, out_result.log$7, out_result.log$8, out_tempBoogie0 := in_i, in_info, in_j, in_pi, in_pij, in_result.log$7, in_result.log$8, in_tempBoogie0;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_84:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_74, out_i);
    goto label_84_dummy;

  label_83_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_72, out_j);
    assume value_is(__ctobpl_const_73, in_c);
    goto label_84;

  label_83_head:
    call out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0 := InfoTbl_loop_label_83_head(in_c, in_f, out_i, out_info, out_j, out_pij, out_result.log$8, out_tempBoogie0);
    goto label_83_head_last;

  label_83_head_last:
    out_i, out_info, out_j, out_pi, out_pij, out_result.log$7, out_result.log$8, out_tempBoogie0 := in_i, in_info, in_j, in_pi, in_pij, in_result.log$7, in_result.log$8, in_tempBoogie0;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_83_true, label_83_false;

  label_83:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 381} true;
    goto label_83_head;

  label_88:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_87, out_j);
    goto label_88_dummy;

  label_88_dummy:
    assume false;
    out_i, out_info, out_j, out_pi, out_pij, out_result.log$7, out_result.log$8, out_tempBoogie0 := in_i, in_info, in_j, in_pi, in_pij, in_result.log$7, in_result.log$8, in_tempBoogie0;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_87_false:
    assume !INT_LT(0, out_pij);
    assume value_is(__ctobpl_const_81, out_pij);
    goto label_88;

  label_92:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    out_tempBoogie0 := PLUS(out_info, 1, MULT(out_pij, out_result.log$8));
    out_info := out_tempBoogie0;
    assume value_is(__ctobpl_const_84, out_info);
    assume value_is(__ctobpl_const_85, out_pij);
    assume value_is(__ctobpl_const_86, out_result.log$8);
    goto label_88;

  label_89:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 386} true;
    call out_result.log$8 := log(out_pij);
    assume value_is(__ctobpl_const_82, out_pij);
    assume value_is(__ctobpl_const_83, out_pij);
    goto label_92;

  label_87_true:
    assume INT_LT(0, out_pij);
    assume value_is(__ctobpl_const_81, out_pij);
    goto label_89;

  label_87:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 385} true;
    goto label_87_true, label_87_false;

  label_86:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    assert in_f != 0;
    out_pij := Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))];
    assume value_is(__ctobpl_const_75, out_pij);
    assume value_is(__ctobpl_const_76, in_f);
    assume value_is(__ctobpl_const_77, out_i);
    assume value_is(__ctobpl_const_78, in_c);
    assume value_is(__ctobpl_const_79, out_j);
    assume value_is(__ctobpl_const_80, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))]);
    goto label_87;

  label_85:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 383} true;
    goto label_86;

  label_83_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_72, out_j);
    assume value_is(__ctobpl_const_73, in_c);
    goto label_85;

  label_78:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 381} true;
    out_j := 0;
    assume value_is(__ctobpl_const_71, out_j);
    goto label_83;

  label_77_false:
    assume !INT_LT(0, out_pi);
    assume value_is(__ctobpl_const_65, out_pi);
    goto label_78;

  label_82:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 379} true;
    out_tempBoogie0 := MINUS_BOTH_PTR_OR_BOTH_INT(out_info, MULT(out_pi, out_result.log$7), 1);
    out_info := out_tempBoogie0;
    assume value_is(__ctobpl_const_68, out_info);
    assume value_is(__ctobpl_const_69, out_pi);
    assume value_is(__ctobpl_const_70, out_result.log$7);
    goto label_78;

  label_79:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 379} true;
    call out_result.log$7 := log(out_pi);
    assume value_is(__ctobpl_const_66, out_pi);
    assume value_is(__ctobpl_const_67, out_pi);
    goto label_82;

  label_77_true:
    assume INT_LT(0, out_pi);
    assume value_is(__ctobpl_const_65, out_pi);
    goto label_79;

  label_77:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 378} true;
    goto label_77_true, label_77_false;

  label_76:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 376} true;
    assert in_xi != 0;
    out_pi := Mem_T.FLOAT[PLUS(in_xi, 8, out_i)];
    assume value_is(__ctobpl_const_61, out_pi);
    assume value_is(__ctobpl_const_62, in_xi);
    assume value_is(__ctobpl_const_63, out_i);
    assume value_is(__ctobpl_const_64, Mem_T.FLOAT[PLUS(in_xi, 8, out_i)]);
    goto label_77;

  label_75:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 376} true;
    goto label_76;

  label_73_true:
    assume INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_44, out_i);
    assume value_is(__ctobpl_const_45, in_r);
    goto label_75;

  label_84_dummy:
    call {:si_unique_call 1} out_i, out_info, out_j, out_pi, out_pij, out_result.log$7, out_result.log$8, out_tempBoogie0 := InfoTbl_loop_label_73_head(in_c, in_f, out_i, out_info, out_j, out_pi, out_pij, in_r, out_result.log$7, out_result.log$8, in_xi, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_73_head(in_c: int, in_f: int, in_i: int, in_info: int, in_j: int, in_pi: int, in_pij: int, in_r: int, in_result.log$7: int, in_result.log$8: int, in_xi: int, in_tempBoogie0: int) returns (out_i: int, out_info: int, out_j: int, out_pi: int, out_pij: int, out_result.log$7: int, out_result.log$8: int, out_tempBoogie0: int);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;



implementation InfoTbl_loop_label_66_head(in_c: int, in_f: int, in_i: int, in_j: int, in_r: int, in_sum: int, in_tempBoogie0: int) returns (out_i: int, out_sum: int, out_tempBoogie0: int)
{

  entry:
    out_i, out_sum, out_tempBoogie0 := in_i, in_sum, in_tempBoogie0;
    goto label_66_head;

  label_66_head:
    goto label_66_true, label_66_false;

  label_66_false:
    assume !INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_90, out_i);
    assume value_is(__ctobpl_const_91, in_r);
    out_i, out_sum, out_tempBoogie0 := in_i, in_sum, in_tempBoogie0;
    return;

  label_69:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_103, out_i);
    goto label_69_dummy;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 365} true;
    assert in_f != 0;
    out_tempBoogie0 := PLUS(out_sum, 1, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, in_j))]);
    out_sum := out_tempBoogie0;
    assume value_is(__ctobpl_const_97, out_sum);
    assume value_is(__ctobpl_const_98, in_f);
    assume value_is(__ctobpl_const_99, out_i);
    assume value_is(__ctobpl_const_100, in_c);
    assume value_is(__ctobpl_const_101, in_j);
    assume value_is(__ctobpl_const_102, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, in_j))]);
    goto label_69;

  label_66_true:
    assume INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_90, out_i);
    assume value_is(__ctobpl_const_91, in_r);
    goto label_68;

  label_69_dummy:
    call {:si_unique_call 1} out_i, out_sum, out_tempBoogie0 := InfoTbl_loop_label_66_head(in_c, in_f, out_i, in_j, in_r, out_sum, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_66_head(in_c: int, in_f: int, in_i: int, in_j: int, in_r: int, in_sum: int, in_tempBoogie0: int) returns (out_i: int, out_sum: int, out_tempBoogie0: int);



implementation InfoTbl_loop_label_60_head(in_c: int, in_f: int, in_i: int, in_j: int, in_r: int, in_sum: int, in_xj: int, in_tempBoogie0: int) returns (out_i: int, out_j: int, out_sum: int, out_tempBoogie0: int)
{

  entry:
    out_i, out_j, out_sum, out_tempBoogie0 := in_i, in_j, in_sum, in_tempBoogie0;
    goto label_60_head;

  label_60_head:
    goto label_60_true, label_60_false;

  label_60_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_36, out_j);
    assume value_is(__ctobpl_const_37, in_c);
    out_i, out_j, out_sum, out_tempBoogie0 := in_i, in_j, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    return;

  label_70:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_96, out_j);
    goto label_70_dummy;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 367} true;
    assert in_xj != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[PLUS(in_xj, 8, out_j) := out_sum];
    assume value_is(__ctobpl_const_92, in_xj);
    assume value_is(__ctobpl_const_93, out_j);
    assume value_is(__ctobpl_const_94, Mem_T.FLOAT[PLUS(in_xj, 8, out_j)]);
    assume value_is(__ctobpl_const_95, out_sum);
    goto label_70;

  label_66_false:
    assume !INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_90, out_i);
    assume value_is(__ctobpl_const_91, in_r);
    goto label_67;

  label_66_head:
    call out_i, out_sum, out_tempBoogie0 := InfoTbl_loop_label_66_head(in_c, in_f, out_i, out_j, in_r, out_sum, out_tempBoogie0);
    goto label_66_head_last;

  label_66_head_last:
    out_i, out_j, out_sum, out_tempBoogie0 := in_i, in_j, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    goto label_66_true, label_66_false;

  label_66:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 364} true;
    goto label_66_head;

  label_69:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_103, out_i);
    goto label_69_dummy;

  label_69_dummy:
    assume false;
    out_i, out_j, out_sum, out_tempBoogie0 := in_i, in_j, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    return;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 365} true;
    assert in_f != 0;
    out_tempBoogie0 := PLUS(out_sum, 1, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))]);
    out_sum := out_tempBoogie0;
    assume value_is(__ctobpl_const_97, out_sum);
    assume value_is(__ctobpl_const_98, in_f);
    assume value_is(__ctobpl_const_99, out_i);
    assume value_is(__ctobpl_const_100, in_c);
    assume value_is(__ctobpl_const_101, out_j);
    assume value_is(__ctobpl_const_102, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))]);
    goto label_69;

  label_66_true:
    assume INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_90, out_i);
    assume value_is(__ctobpl_const_91, in_r);
    goto label_68;

  label_65:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 364} true;
    out_i := 0;
    assume value_is(__ctobpl_const_89, out_i);
    goto label_66;

  label_64:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 362} true;
    out_sum := 0;
    assume value_is(__ctobpl_const_88, out_sum);
    goto label_65;

  label_60_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_36, out_j);
    assume value_is(__ctobpl_const_37, in_c);
    goto label_64;

  label_70_dummy:
    call {:si_unique_call 1} out_i, out_j, out_sum, out_tempBoogie0 := InfoTbl_loop_label_60_head(in_c, in_f, out_i, out_j, in_r, out_sum, in_xj, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_60_head(in_c: int, in_f: int, in_i: int, in_j: int, in_r: int, in_sum: int, in_xj: int, in_tempBoogie0: int) returns (out_i: int, out_j: int, out_sum: int, out_tempBoogie0: int);
  modifies Mem_T.FLOAT;



implementation InfoTbl_loop_label_41_head(in_c: int, in_f: int, in_i: int, in_j: int, in_k: int, in_sum: int, in_tempBoogie0: int) returns (out_j: int, out_k: int, out_sum: int, out_tempBoogie0: int)
{

  entry:
    out_j, out_k, out_sum, out_tempBoogie0 := in_j, in_k, in_sum, in_tempBoogie0;
    goto label_41_head;

  label_41_head:
    goto label_41_true, label_41_false;

  label_41_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_107, out_j);
    assume value_is(__ctobpl_const_108, in_c);
    out_j, out_k, out_sum, out_tempBoogie0 := in_j, in_k, in_sum, in_tempBoogie0;
    return;

  label_55:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_124, out_j);
    goto label_55_dummy;

  label_46:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 346} true;
    out_tempBoogie0 := PLUS(out_sum, 1, out_k);
    out_sum := out_tempBoogie0;
    assume value_is(__ctobpl_const_122, out_sum);
    assume value_is(__ctobpl_const_123, out_k);
    goto label_55;

  label_45_false:
    assume !INT_LT(out_k, 0);
    assume value_is(__ctobpl_const_121, out_k);
    goto label_46;

  label_45:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 340} true;
    goto label_45_true, label_45_false;

  label_45_true:
    assume INT_LT(out_k, 0);
    assume value_is(__ctobpl_const_121, out_k);
    out_j, out_k, out_sum, out_tempBoogie0 := in_j, in_k, in_sum, in_tempBoogie0;
    return;

  label_44:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    assert in_f != 0;
    out_k := Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(in_i, in_c), 1, out_j))];
    assume value_is(__ctobpl_const_115, out_k);
    assume value_is(__ctobpl_const_116, in_f);
    assume value_is(__ctobpl_const_117, in_i);
    assume value_is(__ctobpl_const_118, in_c);
    assume value_is(__ctobpl_const_119, out_j);
    assume value_is(__ctobpl_const_120, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(in_i, in_c), 1, out_j))]);
    goto label_45;

  label_43:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    goto label_44;

  label_41_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_107, out_j);
    assume value_is(__ctobpl_const_108, in_c);
    goto label_43;

  label_55_dummy:
    call {:si_unique_call 1} out_j, out_k, out_sum, out_tempBoogie0 := InfoTbl_loop_label_41_head(in_c, in_f, in_i, out_j, out_k, out_sum, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_41_head(in_c: int, in_f: int, in_i: int, in_j: int, in_k: int, in_sum: int, in_tempBoogie0: int) returns (out_j: int, out_k: int, out_sum: int, out_tempBoogie0: int);



implementation InfoTbl_loop_label_37_head(in_N: int, in_c: int, in_f: int, in_i: int, in_j: int, in_k: int, in_r: int, in_sum: int, in_xi: int, in_tempBoogie0: int) returns (out_N: int, out_i: int, out_j: int, out_k: int, out_sum: int, out_tempBoogie0: int)
{

  entry:
    out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := in_N, in_i, in_j, in_k, in_sum, in_tempBoogie0;
    goto label_37_head;

  label_37_head:
    goto label_37_true, label_37_false;

  label_37_false:
    assume !INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_32, out_i);
    assume value_is(__ctobpl_const_33, in_r);
    out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := in_N, in_i, in_j, in_k, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    return;

  label_56:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_114, out_i);
    goto label_56_dummy;

  label_42:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 349} true;
    assert in_xi != 0;
    Mem_T.FLOAT := Mem_T.FLOAT[PLUS(in_xi, 8, out_i) := out_sum];
    out_tempBoogie0 := PLUS(out_N, 1, Mem_T.FLOAT[PLUS(in_xi, 8, out_i)]);
    out_N := out_tempBoogie0;
    assume value_is(__ctobpl_const_109, out_N);
    assume value_is(__ctobpl_const_110, in_xi);
    assume value_is(__ctobpl_const_111, out_i);
    assume value_is(__ctobpl_const_112, Mem_T.FLOAT[PLUS(in_xi, 8, out_i)]);
    assume value_is(__ctobpl_const_113, out_sum);
    goto label_56;

  label_41_false:
    assume !INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_107, out_j);
    assume value_is(__ctobpl_const_108, in_c);
    goto label_42;

  label_41_head:
    call out_j, out_k, out_sum, out_tempBoogie0 := InfoTbl_loop_label_41_head(in_c, in_f, out_i, out_j, out_k, out_sum, out_tempBoogie0);
    goto label_41_head_last;

  label_41_head_last:
    out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := in_N, in_i, in_j, in_k, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    goto label_41_true, label_41_false;

  label_41:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 336} true;
    goto label_41_head;

  label_55:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_124, out_j);
    goto label_55_dummy;

  label_55_dummy:
    assume false;
    out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := in_N, in_i, in_j, in_k, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    return;

  label_46:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 346} true;
    out_tempBoogie0 := PLUS(out_sum, 1, out_k);
    out_sum := out_tempBoogie0;
    assume value_is(__ctobpl_const_122, out_sum);
    assume value_is(__ctobpl_const_123, out_k);
    goto label_55;

  label_45_false:
    assume !INT_LT(out_k, 0);
    assume value_is(__ctobpl_const_121, out_k);
    goto label_46;

  label_45:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 340} true;
    goto label_45_true, label_45_false;

  label_45_true:
    assume INT_LT(out_k, 0);
    assume value_is(__ctobpl_const_121, out_k);
    out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := in_N, in_i, in_j, in_k, in_sum, in_tempBoogie0;
    Mem_T.FLOAT := old(Mem_T.FLOAT);
    return;

  label_44:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    assert in_f != 0;
    out_k := Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))];
    assume value_is(__ctobpl_const_115, out_k);
    assume value_is(__ctobpl_const_116, in_f);
    assume value_is(__ctobpl_const_117, out_i);
    assume value_is(__ctobpl_const_118, in_c);
    assume value_is(__ctobpl_const_119, out_j);
    assume value_is(__ctobpl_const_120, Mem_T.INT4[PLUS(in_f, 4, PLUS(MULT(out_i, in_c), 1, out_j))]);
    goto label_45;

  label_43:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 338} true;
    goto label_44;

  label_41_true:
    assume INT_LT(out_j, in_c);
    assume value_is(__ctobpl_const_107, out_j);
    assume value_is(__ctobpl_const_108, in_c);
    goto label_43;

  label_40:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 336} true;
    out_j := 0;
    assume value_is(__ctobpl_const_106, out_j);
    goto label_41;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 334} true;
    out_sum := 0;
    assume value_is(__ctobpl_const_105, out_sum);
    goto label_40;

  label_37_true:
    assume INT_LT(out_i, in_r);
    assume value_is(__ctobpl_const_32, out_i);
    assume value_is(__ctobpl_const_33, in_r);
    goto label_39;

  label_56_dummy:
    call {:si_unique_call 1} out_N, out_i, out_j, out_k, out_sum, out_tempBoogie0 := InfoTbl_loop_label_37_head(out_N, in_c, in_f, out_i, out_j, out_k, in_r, out_sum, in_xi, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure InfoTbl_loop_label_37_head(in_N: int, in_c: int, in_f: int, in_i: int, in_j: int, in_k: int, in_r: int, in_sum: int, in_xi: int, in_tempBoogie0: int) returns (out_N: int, out_i: int, out_j: int, out_k: int, out_sum: int, out_tempBoogie0: int);
  modifies Mem_T.FLOAT;



implementation LGamma_loop_label_28_head(in_j: int, in_ser: int, in_x: int, in_tempBoogie0: int) returns (out_j: int, out_ser: int, out_x: int, out_tempBoogie0: int)
{

  entry:
    out_j, out_ser, out_x, out_tempBoogie0 := in_j, in_ser, in_x, in_tempBoogie0;
    goto label_28_head;

  label_28_head:
    goto label_28_true, label_28_false;

  label_28_false:
    assume !INT_LT(out_j, 6);
    assume value_is(__ctobpl_const_142, out_j);
    out_j, out_ser, out_x, out_tempBoogie0 := in_j, in_ser, in_x, in_tempBoogie0;
    return;

  label_31:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_153, out_j);
    goto label_31_dummy;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 175} true;
    assert cof != 0;
    out_x := PLUS(out_x, 1, 1);
    out_tempBoogie0 := PLUS(out_ser, 1, BINARY_BOTH_INT(Mem_T.FLOAT[PLUS(cof, 8, out_j)], out_x));
    out_ser := out_tempBoogie0;
    assume value_is(__ctobpl_const_149, out_ser);
    assume value_is(__ctobpl_const_150, out_j);
    assume value_is(__ctobpl_const_151, Mem_T.FLOAT[PLUS(cof, 8, out_j)]);
    assume value_is(__ctobpl_const_152, out_x);
    goto label_31;

  label_28_true:
    assume INT_LT(out_j, 6);
    assume value_is(__ctobpl_const_142, out_j);
    goto label_30;

  label_31_dummy:
    call {:si_unique_call 1} out_j, out_ser, out_x, out_tempBoogie0 := LGamma_loop_label_28_head(out_j, out_ser, out_x, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure LGamma_loop_label_28_head(in_j: int, in_ser: int, in_x: int, in_tempBoogie0: int) returns (out_j: int, out_ser: int, out_x: int, out_tempBoogie0: int);



implementation gcf_loop_label_17_head(in_a: int, in_a0: int, in_a1: int, in_an: int, in_ana: int, in_anf: int, in_b0: int, in_b1: int, in_fac: int, in_g: int, in_gold: int, in_n: int, in_$result.question.2$_123_$static$: int, in_$result.question.3$_123_$static$: int, in_x: int) returns (out_a0: int, out_a1: int, out_an: int, out_ana: int, out_anf: int, out_b0: int, out_b1: int, out_fac: int, out_g: int, out_gold: int, out_n: int, out_$result.question.2$_123_$static$: int, out_$result.question.3$_123_$static$: int)
{

  entry:
    out_a0, out_a1, out_an, out_ana, out_anf, out_b0, out_b1, out_fac, out_g, out_gold, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$ := in_a0, in_a1, in_an, in_ana, in_anf, in_b0, in_b1, in_fac, in_g, in_gold, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$;
    goto label_17_head;

  label_17_head:
    goto label_17_true, label_17_false;

  label_17_false:
    assume !INT_LEQ(out_n, 100);
    assume value_is(__ctobpl_const_372, out_n);
    out_a0, out_a1, out_an, out_ana, out_anf, out_b0, out_b1, out_fac, out_g, out_gold, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$ := in_a0, in_a1, in_an, in_ana, in_anf, in_b0, in_b1, in_fac, in_g, in_gold, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$;
    return;

  label_29:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_n := PLUS(out_n, 1, 1);
    assume value_is(__ctobpl_const_424, out_n);
    goto label_29_dummy;

  label_28_false:
    assume !INT_NEQ(out_a1, 0);
    assume value_is(__ctobpl_const_401, out_a1);
    goto label_29;

  label_41:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 236} true;
    out_gold := out_g;
    assume value_is(__ctobpl_const_422, out_gold);
    assume value_is(__ctobpl_const_423, out_g);
    goto label_29;

  label_40_false:
    assume !INT_LT(out_$result.question.2$_123_$static$, MULT(BOOGIE_FLOAT_CONST_3e__007, out_$result.question.3$_123_$static$));
    assume value_is(__ctobpl_const_420, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_421, out_$result.question.3$_123_$static$);
    goto label_41;

  label_40:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_40_true, label_40_false;

  label_40_true:
    assume INT_LT(out_$result.question.2$_123_$static$, MULT(BOOGIE_FLOAT_CONST_3e__007, out_$result.question.3$_123_$static$));
    assume value_is(__ctobpl_const_420, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_421, out_$result.question.3$_123_$static$);
    out_a0, out_a1, out_an, out_ana, out_anf, out_b0, out_b1, out_fac, out_g, out_gold, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$ := in_a0, in_a1, in_an, in_ana, in_anf, in_b0, in_b1, in_fac, in_g, in_gold, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$;
    return;

  label_38:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    out_$result.question.3$_123_$static$ := out_g;
    assume value_is(__ctobpl_const_416, out_$result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_417, out_g);
    goto label_40;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    out_$result.question.3$_123_$static$ := -out_g;
    assume value_is(__ctobpl_const_418, out_$result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_419, out_g);
    goto label_40;

  label_37_true:
    assume INT_LT(out_g, 0);
    assume value_is(__ctobpl_const_415, out_g);
    goto label_39;

  label_37:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_37_true, label_37_false;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    out_$result.question.2$_123_$static$ := out_gold;
    assume value_is(__ctobpl_const_411, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_412, out_gold);
    goto label_37;

  label_36:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    out_$result.question.2$_123_$static$ := -out_gold;
    assume value_is(__ctobpl_const_413, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_414, out_gold);
    goto label_37;

  label_34_true:
    assume INT_LT(out_gold, 0);
    assume value_is(__ctobpl_const_410, out_gold);
    goto label_36;

  label_34:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 233} true;
    goto label_34_true, label_34_false;

  label_33:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 231} true;
    out_gold := MINUS_BOTH_PTR_OR_BOTH_INT(out_g, out_gold, 1);
    assume value_is(__ctobpl_const_407, out_gold);
    assume value_is(__ctobpl_const_408, out_g);
    assume value_is(__ctobpl_const_409, out_gold);
    goto label_34;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    out_g := MULT(out_b1, out_fac);
    assume value_is(__ctobpl_const_404, out_g);
    assume value_is(__ctobpl_const_405, out_b1);
    assume value_is(__ctobpl_const_406, out_fac);
    goto label_33;

  label_31:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    out_fac := BINARY_BOTH_INT(1, out_a1);
    assume value_is(__ctobpl_const_402, out_fac);
    assume value_is(__ctobpl_const_403, out_a1);
    goto label_32;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 229} true;
    goto label_31;

  label_28_true:
    assume INT_NEQ(out_a1, 0);
    assume value_is(__ctobpl_const_401, out_a1);
    goto label_30;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 227} true;
    goto label_28_true, label_28_false;

  label_27:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 225} true;
    out_a1 := PLUS(MULT(in_x, out_a0), 1, MULT(out_anf, out_a1));
    assume value_is(__ctobpl_const_396, out_a1);
    assume value_is(__ctobpl_const_397, in_x);
    assume value_is(__ctobpl_const_398, out_a0);
    assume value_is(__ctobpl_const_399, out_anf);
    assume value_is(__ctobpl_const_400, out_a1);
    goto label_28;

  label_26:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 224} true;
    out_b1 := PLUS(MULT(in_x, out_b0), 1, MULT(out_anf, out_b1));
    assume value_is(__ctobpl_const_391, out_b1);
    assume value_is(__ctobpl_const_392, in_x);
    assume value_is(__ctobpl_const_393, out_b0);
    assume value_is(__ctobpl_const_394, out_anf);
    assume value_is(__ctobpl_const_395, out_b1);
    goto label_27;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 223} true;
    out_anf := MULT(out_an, out_fac);
    assume value_is(__ctobpl_const_388, out_anf);
    assume value_is(__ctobpl_const_389, out_an);
    assume value_is(__ctobpl_const_390, out_fac);
    goto label_26;

  label_24:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 222} true;
    out_b0 := MULT(PLUS(out_b1, 1, MULT(out_b0, out_ana)), out_fac);
    assume value_is(__ctobpl_const_383, out_b0);
    assume value_is(__ctobpl_const_384, out_b1);
    assume value_is(__ctobpl_const_385, out_b0);
    assume value_is(__ctobpl_const_386, out_ana);
    assume value_is(__ctobpl_const_387, out_fac);
    goto label_25;

  label_23:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 221} true;
    out_a0 := MULT(PLUS(out_a1, 1, MULT(out_a0, out_ana)), out_fac);
    assume value_is(__ctobpl_const_378, out_a0);
    assume value_is(__ctobpl_const_379, out_a1);
    assume value_is(__ctobpl_const_380, out_a0);
    assume value_is(__ctobpl_const_381, out_ana);
    assume value_is(__ctobpl_const_382, out_fac);
    goto label_24;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 219} true;
    out_ana := MINUS_BOTH_PTR_OR_BOTH_INT(out_an, in_a, 1);
    assume value_is(__ctobpl_const_375, out_ana);
    assume value_is(__ctobpl_const_376, out_an);
    assume value_is(__ctobpl_const_377, in_a);
    goto label_23;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 219} true;
    goto label_22;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 218} true;
    out_an := out_n;
    assume value_is(__ctobpl_const_373, out_an);
    assume value_is(__ctobpl_const_374, out_n);
    goto label_21;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 218} true;
    goto label_20;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 217} true;
    goto label_19;

  label_17_true:
    assume INT_LEQ(out_n, 100);
    assume value_is(__ctobpl_const_372, out_n);
    goto label_18;

  label_34_false:
    assume !INT_LT(out_gold, 0);
    assume value_is(__ctobpl_const_410, out_gold);
    goto label_35;

  label_37_false:
    assume !INT_LT(out_g, 0);
    assume value_is(__ctobpl_const_415, out_g);
    goto label_38;

  label_29_dummy:
    call {:si_unique_call 1} out_a0, out_a1, out_an, out_ana, out_anf, out_b0, out_b1, out_fac, out_g, out_gold, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$ := gcf_loop_label_17_head(in_a, out_a0, out_a1, out_an, out_ana, out_anf, out_b0, out_b1, out_fac, out_g, out_gold, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, in_x);
    return;

  exit:
    return;
}



procedure gcf_loop_label_17_head(in_a: int, in_a0: int, in_a1: int, in_an: int, in_ana: int, in_anf: int, in_b0: int, in_b1: int, in_fac: int, in_g: int, in_gold: int, in_n: int, in_$result.question.2$_123_$static$: int, in_$result.question.3$_123_$static$: int, in_x: int) returns (out_a0: int, out_a1: int, out_an: int, out_ana: int, out_anf: int, out_b0: int, out_b1: int, out_fac: int, out_g: int, out_gold: int, out_n: int, out_$result.question.2$_123_$static$: int, out_$result.question.3$_123_$static$: int);



implementation gser_loop_label_13_head(in_ap: int, in_del: int, in_n: int, in_$result.question.2$_123_$static$: int, in_$result.question.3$_123_$static$: int, in_sum: int, in_x: int, in_tempBoogie0: int, in_tempBoogie1: int) returns (out_ap: int, out_del: int, out_n: int, out_$result.question.2$_123_$static$: int, out_$result.question.3$_123_$static$: int, out_sum: int, out_tempBoogie0: int, out_tempBoogie1: int)
{

  entry:
    out_ap, out_del, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, out_sum, out_tempBoogie0, out_tempBoogie1 := in_ap, in_del, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$, in_sum, in_tempBoogie0, in_tempBoogie1;
    goto label_13_head;

  label_13_head:
    goto label_13_true, label_13_false;

  label_13_false:
    assume !INT_LEQ(out_n, 100);
    assume value_is(__ctobpl_const_448, out_n);
    out_ap, out_del, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, out_sum, out_tempBoogie0, out_tempBoogie1 := in_ap, in_del, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$, in_sum, in_tempBoogie0, in_tempBoogie1;
    return;

  label_22:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_n := PLUS(out_n, 1, 1);
    assume value_is(__ctobpl_const_465, out_n);
    goto label_22_dummy;

  label_21_false:
    assume !INT_LT(out_$result.question.2$_123_$static$, MULT(out_$result.question.3$_123_$static$, BOOGIE_FLOAT_CONST_3e__007));
    assume value_is(__ctobpl_const_463, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_464, out_$result.question.3$_123_$static$);
    goto label_22;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_21_true, label_21_false;

  label_21_true:
    assume INT_LT(out_$result.question.2$_123_$static$, MULT(out_$result.question.3$_123_$static$, BOOGIE_FLOAT_CONST_3e__007));
    assume value_is(__ctobpl_const_463, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_464, out_$result.question.3$_123_$static$);
    out_ap, out_del, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, out_sum, out_tempBoogie0, out_tempBoogie1 := in_ap, in_del, in_n, in_$result.question.2$_123_$static$, in_$result.question.3$_123_$static$, in_sum, in_tempBoogie0, in_tempBoogie1;
    return;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    out_$result.question.3$_123_$static$ := out_sum;
    assume value_is(__ctobpl_const_459, out_$result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_460, out_sum);
    goto label_21;

  label_20:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    out_$result.question.3$_123_$static$ := -out_sum;
    assume value_is(__ctobpl_const_461, out_$result.question.3$_123_$static$);
    assume value_is(__ctobpl_const_462, out_sum);
    goto label_21;

  label_18_true:
    assume INT_LT(out_sum, 0);
    assume value_is(__ctobpl_const_458, out_sum);
    goto label_20;

  label_18:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_18_true, label_18_false;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    out_$result.question.2$_123_$static$ := out_del;
    assume value_is(__ctobpl_const_454, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_455, out_del);
    goto label_18;

  label_17:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    out_$result.question.2$_123_$static$ := -out_del;
    assume value_is(__ctobpl_const_456, out_$result.question.2$_123_$static$);
    assume value_is(__ctobpl_const_457, out_del);
    goto label_18;

  label_15_true:
    assume INT_LT(out_del, 0);
    assume value_is(__ctobpl_const_453, out_del);
    goto label_17;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 200} true;
    goto label_15_true, label_15_false;

  label_14:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 198} true;
    out_ap := PLUS(out_ap, 1, 1);
    out_tempBoogie0 := INT_MULT(out_del, BINARY_BOTH_INT(in_x, out_ap));
    out_del := out_tempBoogie0;
    out_tempBoogie1 := PLUS(out_sum, 1, out_del);
    out_sum := out_tempBoogie1;
    assume value_is(__ctobpl_const_449, out_sum);
    assume value_is(__ctobpl_const_450, out_del);
    assume value_is(__ctobpl_const_451, in_x);
    assume value_is(__ctobpl_const_452, out_ap);
    goto label_15;

  label_13_true:
    assume INT_LEQ(out_n, 100);
    assume value_is(__ctobpl_const_448, out_n);
    goto label_14;

  label_15_false:
    assume !INT_LT(out_del, 0);
    assume value_is(__ctobpl_const_453, out_del);
    goto label_16;

  label_18_false:
    assume !INT_LT(out_sum, 0);
    assume value_is(__ctobpl_const_458, out_sum);
    goto label_19;

  label_22_dummy:
    call {:si_unique_call 1} out_ap, out_del, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, out_sum, out_tempBoogie0, out_tempBoogie1 := gser_loop_label_13_head(out_ap, out_del, out_n, out_$result.question.2$_123_$static$, out_$result.question.3$_123_$static$, out_sum, in_x, out_tempBoogie0, out_tempBoogie1);
    return;

  exit:
    return;
}



procedure gser_loop_label_13_head(in_ap: int, in_del: int, in_n: int, in_$result.question.2$_123_$static$: int, in_$result.question.3$_123_$static$: int, in_sum: int, in_x: int, in_tempBoogie0: int, in_tempBoogie1: int) returns (out_ap: int, out_del: int, out_n: int, out_$result.question.2$_123_$static$: int, out_$result.question.3$_123_$static$: int, out_sum: int, out_tempBoogie0: int, out_tempBoogie1: int);



implementation main_loop_label_65_head(in_i: int, in_j: int, in_result.scanf$17: int, in_$scanf.arg.2$18$: int, in_tempBoogie0: int) returns (out_j: int, out_result.scanf$17: int, out_$scanf.arg.2$18$: int, out_tempBoogie0: int)
{

  entry:
    out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    goto label_65_head;

  label_65_head:
    goto label_65_true, label_65_false;

  label_65_false:
    assume !INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    return;

  label_72:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_628, out_j);
    goto label_72_dummy;

  label_71_false:
    assume !INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    goto label_72;

  label_71:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    goto label_71_true, label_71_false;

  label_71_true:
    assume INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    return;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    call out_result.scanf$17 := det_choice();
    call out_tempBoogie0 := det_choice();
    Mem_T.INT4[out_$scanf.arg.2$18$] := out_tempBoogie0;
    assume value_is(__ctobpl_const_626, out_$scanf.arg.2$18$);
    goto label_71;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    assert f != 0;
    out_$scanf.arg.2$18$ := PLUS(f, 4, PLUS(MULT(in_i, Mem_T.INT4[c]), 1, out_j));
    assume value_is(__ctobpl_const_621, out_$scanf.arg.2$18$);
    assume value_is(__ctobpl_const_622, in_i);
    assume value_is(__ctobpl_const_623, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_624, out_j);
    assume value_is(__ctobpl_const_625, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(in_i, Mem_T.INT4[c]), 1, out_j))]);
    goto label_68;

  label_65_true:
    assume INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_67;

  label_72_dummy:
    call {:si_unique_call 1} out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := main_loop_label_65_head(in_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure main_loop_label_65_head(in_i: int, in_j: int, in_result.scanf$17: int, in_$scanf.arg.2$18$: int, in_tempBoogie0: int) returns (out_j: int, out_result.scanf$17: int, out_$scanf.arg.2$18$: int, out_tempBoogie0: int);
  modifies Mem_T.INT4;



implementation main_loop_label_62_head(in_i: int, in_j: int, in_result.scanf$17: int, in_$scanf.arg.2$18$: int, in_tempBoogie0: int) returns (out_i: int, out_j: int, out_result.scanf$17: int, out_$scanf.arg.2$18$: int, out_tempBoogie0: int)
{

  entry:
    out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_i, in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    goto label_62_head;

  label_62_head:
    goto label_62_true, label_62_false;

  label_62_false:
    assume !INT_LT(out_i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, out_i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_i, in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    return;

  label_66:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_620, out_i);
    goto label_66_dummy;

  label_65_false:
    assume !INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_66;

  label_65_head:
    call out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := main_loop_label_65_head(out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0);
    goto label_65_head_last;

  label_65_head_last:
    out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_i, in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    goto label_65_true, label_65_false;

  label_65:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    goto label_65_head;

  label_72:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_628, out_j);
    goto label_72_dummy;

  label_72_dummy:
    assume false;
    out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_i, in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    return;

  label_71_false:
    assume !INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    goto label_72;

  label_71:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    goto label_71_true, label_71_false;

  label_71_true:
    assume INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := in_i, in_j, in_result.scanf$17, in_$scanf.arg.2$18$, in_tempBoogie0;
    Mem_T.INT4 := old(Mem_T.INT4);
    return;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    call out_result.scanf$17 := det_choice();
    call out_tempBoogie0 := det_choice();
    Mem_T.INT4[out_$scanf.arg.2$18$] := out_tempBoogie0;
    assume value_is(__ctobpl_const_626, out_$scanf.arg.2$18$);
    goto label_71;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    assert f != 0;
    out_$scanf.arg.2$18$ := PLUS(f, 4, PLUS(MULT(out_i, Mem_T.INT4[c]), 1, out_j));
    assume value_is(__ctobpl_const_621, out_$scanf.arg.2$18$);
    assume value_is(__ctobpl_const_622, out_i);
    assume value_is(__ctobpl_const_623, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_624, out_j);
    assume value_is(__ctobpl_const_625, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(out_i, Mem_T.INT4[c]), 1, out_j))]);
    goto label_68;

  label_65_true:
    assume INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_67;

  label_64:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    out_j := 0;
    assume value_is(__ctobpl_const_617, out_j);
    goto label_65;

  label_62_true:
    assume INT_LT(out_i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, out_i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    goto label_64;

  label_66_dummy:
    call {:si_unique_call 1} out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := main_loop_label_62_head(out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0);
    return;

  exit:
    return;
}



procedure main_loop_label_62_head(in_i: int, in_j: int, in_result.scanf$17: int, in_$scanf.arg.2$18$: int, in_tempBoogie0: int) returns (out_i: int, out_j: int, out_result.scanf$17: int, out_$scanf.arg.2$18$: int, out_tempBoogie0: int);
  modifies Mem_T.INT4;



implementation main_loop_label_22_head(in_$isspace.arg.1$6$: int, in_p: int, in_result.isspace$5: int) returns (out_$isspace.arg.1$6$: int, out_p: int, out_result.isspace$5: int)
{

  entry:
    out_$isspace.arg.1$6$, out_p, out_result.isspace$5 := in_$isspace.arg.1$6$, in_p, in_result.isspace$5;
    goto label_22_head;

  label_22_head:
    assert out_p != 0;
    goto label_22_true, label_22_false;

  label_22_false:
    assume Mem_T.CHAR[out_p] == 0;
    assume value_is(__ctobpl_const_557, out_p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[out_p]);
    out_$isspace.arg.1$6$, out_p, out_result.isspace$5 := in_$isspace.arg.1$6$, in_p, in_result.isspace$5;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_29:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_p := PLUS(out_p, 1, 1);
    assume value_is(__ctobpl_const_645, out_p);
    goto label_29_dummy;

  label_28_true:
    assume out_result.isspace$5 != 0;
    assume value_is(__ctobpl_const_564, out_result.isspace$5);
    goto label_29;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    goto label_28_true, label_28_false;

  label_28_false:
    assume out_result.isspace$5 == 0;
    assume value_is(__ctobpl_const_564, out_result.isspace$5);
    out_$isspace.arg.1$6$, out_p, out_result.isspace$5 := in_$isspace.arg.1$6$, in_p, in_result.isspace$5;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    call out_result.isspace$5 := isspace(out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_562, out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_563, out_$isspace.arg.1$6$);
    goto label_28;

  label_24:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    assert out_p != 0;
    out_$isspace.arg.1$6$ := Mem_T.CHAR[out_p];
    assume value_is(__ctobpl_const_559, out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_560, out_p);
    assume value_is(__ctobpl_const_561, Mem_T.CHAR[out_p]);
    goto label_25;

  label_22_true:
    assume Mem_T.CHAR[out_p] != 0;
    assume value_is(__ctobpl_const_557, out_p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[out_p]);
    goto label_24;

  label_29_dummy:
    call {:si_unique_call 1} out_$isspace.arg.1$6$, out_p, out_result.isspace$5 := main_loop_label_22_head(out_$isspace.arg.1$6$, out_p, out_result.isspace$5);
    return;

  exit:
    return;
}



procedure main_loop_label_22_head(in_$isspace.arg.1$6$: int, in_p: int, in_result.isspace$5: int) returns (out_$isspace.arg.1$6$: int, out_p: int, out_result.isspace$5: int);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;



implementation main_loop_label_12_head(in_havoc_stringTemp: int, in_$InfoTbl.arg.3$23$: int, in_$QChiSq.arg.1$26$: int, in_$fgets.arg.3$4$: int, in_$fputs.arg.2$31$: int, in_$fputs.arg.2$9$: int, in_i: int, in_info: int, in_infodf: int, in_$isspace.arg.1$6$: int, in_j: int, in_p: int, in_$printf.arg.2$28$: int, in_$printf.arg.4$27$: int, in_result.InfoTbl$22: int, in_result.QChiSq$25: int, in_result.__iob_func$30: int, in_result.__iob_func$3: int, in_result.__iob_func$8: int, in_result.fgets$2: int, in_result.fputs$29: int, in_result.fputs$7: int, in_result.isspace$5: int, in_result.printf$24: int, in_$result.question.32$: int, in_$result.question.33$: int, in_$result.question.34$: int, in_result.scanf$17: int, in_result.sscanf$10: int, in_$scanf.arg.2$18$: int, in_totdf: int, in_totinfo: int, in_tempBoogie0: int, in_tempBoogie1: int) returns (out_$QChiSq.arg.1$26$: int, out_$fgets.arg.3$4$: int, out_$fputs.arg.2$31$: int, out_$fputs.arg.2$9$: int, out_i: int, out_info: int, out_$isspace.arg.1$6$: int, out_j: int, out_p: int, out_$printf.arg.2$28$: int, out_$printf.arg.4$27$: int, out_result.InfoTbl$22: int, out_result.QChiSq$25: int, out_result.__iob_func$30: int, out_result.__iob_func$3: int, out_result.__iob_func$8: int, out_result.fgets$2: int, out_result.fputs$29: int, out_result.fputs$7: int, out_result.isspace$5: int, out_result.printf$24: int, out_$result.question.32$: int, out_$result.question.33$: int, out_$result.question.34$: int, out_result.scanf$17: int, out_result.sscanf$10: int, out_$scanf.arg.2$18$: int, out_totdf: int, out_totinfo: int, out_tempBoogie0: int, out_tempBoogie1: int)
{

  entry:
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    goto label_12_head;

  label_12_head:
    call out_result.__iob_func$3 := __iob_func();
    goto label_15;

  label_30:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 61} true;
    goto label_30_dummy;

  label_23_false:
    assume Mem_T.CHAR[out_p] == 0;
    assume value_is(__ctobpl_const_565, out_p);
    assume value_is(__ctobpl_const_566, Mem_T.CHAR[out_p]);
    goto label_30;

  label_23:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 60} true;
    assert out_p != 0;
    goto label_23_true, label_23_false;

  label_23_true:
    assume Mem_T.CHAR[out_p] != 0;
    assume value_is(__ctobpl_const_565, out_p);
    assume value_is(__ctobpl_const_566, Mem_T.CHAR[out_p]);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_31;

  label_22_false:
    assume Mem_T.CHAR[out_p] == 0;
    assume value_is(__ctobpl_const_557, out_p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[out_p]);
    goto label_23;

  label_28_false:
    assume out_result.isspace$5 == 0;
    assume value_is(__ctobpl_const_564, out_result.isspace$5);
    goto label_23;

  label_28:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    goto label_28_true, label_28_false;

  label_25:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    call out_result.isspace$5 := isspace(out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_562, out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_563, out_$isspace.arg.1$6$);
    goto label_28;

  label_24:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    assert out_p != 0;
    out_$isspace.arg.1$6$ := Mem_T.CHAR[out_p];
    assume value_is(__ctobpl_const_559, out_$isspace.arg.1$6$);
    assume value_is(__ctobpl_const_560, out_p);
    assume value_is(__ctobpl_const_561, Mem_T.CHAR[out_p]);
    goto label_25;

  label_22_true:
    assume Mem_T.CHAR[out_p] != 0;
    assume value_is(__ctobpl_const_557, out_p);
    assume value_is(__ctobpl_const_558, Mem_T.CHAR[out_p]);
    goto label_24;

  label_22_head:
    call out_$isspace.arg.1$6$, out_p, out_result.isspace$5 := main_loop_label_22_head(out_$isspace.arg.1$6$, out_p, out_result.isspace$5);
    goto label_22_head_last;

  label_22_head_last:
    assert out_p != 0;
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_22_true, label_22_false;

  label_22:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    goto label_22_head;

  label_29:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_p := PLUS(out_p, 1, 1);
    assume value_is(__ctobpl_const_645, out_p);
    goto label_29_dummy;

  label_29_dummy:
    assume false;
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_28_true:
    assume out_result.isspace$5 != 0;
    assume value_is(__ctobpl_const_564, out_result.isspace$5);
    goto label_29;

  label_21:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 57} true;
    out_p := line;
    assume value_is(__ctobpl_const_556, out_p);
    goto label_22;

  label_19_true:
    assume out_result.fgets$2 != 0;
    assume value_is(__ctobpl_const_540, out_result.fgets$2);
    goto label_21;

  label_19:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    goto label_19_true, label_19_false;

  label_19_false:
    assume out_result.fgets$2 == 0;
    assume value_is(__ctobpl_const_540, out_result.fgets$2);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_16:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    call out_result.fgets$2 := fgets(line, 256, out_$fgets.arg.3$4$);
    assume value_is(__ctobpl_const_538, out_$fgets.arg.3$4$);
    assume value_is(__ctobpl_const_539, out_$fgets.arg.3$4$);
    goto label_19;

  label_15:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 55} true;
    assert out_result.__iob_func$3 != 0;
    out_$fgets.arg.3$4$ := PLUS(out_result.__iob_func$3, 32, 0);
    assume value_is(__ctobpl_const_536, out_$fgets.arg.3$4$);
    assume value_is(__ctobpl_const_537, out_result.__iob_func$3);
    goto label_16;

  label_30_dummy:
    call {:si_unique_call 1} out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := main_loop_label_12_head(in_havoc_stringTemp, in_$InfoTbl.arg.3$23$, out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, in_infodf, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1);
    return;

  label_104:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    call out_result.fputs$29 := fputs(out_$result.question.32$, out_$fputs.arg.2$31$);
    assume value_is(__ctobpl_const_599, out_$result.question.32$);
    assume value_is(__ctobpl_const_600, out_$fputs.arg.2$31$);
    assume value_is(__ctobpl_const_601, out_$result.question.32$);
    assume value_is(__ctobpl_const_602, out_$fputs.arg.2$31$);
    goto label_104_dummy;

  label_109:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    out_$result.question.32$ := out_$result.question.33$;
    assume value_is(__ctobpl_const_596, out_$result.question.32$);
    assume value_is(__ctobpl_const_597, out_$result.question.33$);
    goto label_104;

  label_103:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    out_$result.question.32$ := in_havoc_stringTemp;
    assume value_is(__ctobpl_const_598, out_$result.question.32$);
    goto label_104;

  label_101_true:
    assume INT_LT(out_info, BOOGIE_FLOAT_CONST___3.5);
    assume value_is(__ctobpl_const_588, out_info);
    goto label_103;

  label_101:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 109} true;
    goto label_101_true, label_101_false;

  label_100:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 113} true;
    assert out_result.__iob_func$30 != 0;
    out_$fputs.arg.2$31$ := PLUS(out_result.__iob_func$30, 32, 1);
    assume value_is(__ctobpl_const_586, out_$fputs.arg.2$31$);
    assume value_is(__ctobpl_const_587, out_result.__iob_func$30);
    goto label_101;

  label_86:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 113} true;
    call out_result.__iob_func$30 := __iob_func();
    goto label_100;

  label_85_false:
    assume !INT_LEQ(0, out_info);
    assume value_is(__ctobpl_const_585, out_info);
    goto label_86;

  label_85:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 99} true;
    goto label_85_true, label_85_false;

  label_85_true:
    assume INT_LEQ(0, out_info);
    assume value_is(__ctobpl_const_585, out_info);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_89;

  label_84:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    out_info := out_result.InfoTbl$22;
    assume value_is(__ctobpl_const_583, out_info);
    assume value_is(__ctobpl_const_584, out_result.InfoTbl$22);
    goto label_85;

  label_81:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    call out_result.InfoTbl$22 := InfoTbl(Mem_T.INT4[r], Mem_T.INT4[c], in_$InfoTbl.arg.3$23$, in_infodf);
    assume value_is(__ctobpl_const_577, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_578, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_579, Mem_T.INT4[in_infodf]);
    assume value_is(__ctobpl_const_580, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_581, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_582, Mem_T.INT4[in_infodf]);
    goto label_84;

  label_63:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 95} true;
    goto label_81;

  label_62_false:
    assume !INT_LT(out_i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, out_i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    goto label_63;

  label_62_head:
    call out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := main_loop_label_62_head(out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0);
    goto label_62_head_last;

  label_62_head_last:
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_62_true, label_62_false;

  label_62:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 83} true;
    goto label_62_head;

  label_66:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_i := PLUS(out_i, 1, 1);
    assume value_is(__ctobpl_const_620, out_i);
    goto label_66_dummy;

  label_66_dummy:
    assume false;
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_65_false:
    assume !INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_66;

  label_65_head:
    call out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0 := main_loop_label_65_head(out_i, out_j, out_result.scanf$17, out_$scanf.arg.2$18$, out_tempBoogie0);
    goto label_65_head_last;

  label_65_head_last:
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_65_true, label_65_false;

  label_65:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    goto label_65_head;

  label_72:
    assert {:sourcefile "unknown"} {:sourceline 0} true;
    out_j := PLUS(out_j, 1, 1);
    assume value_is(__ctobpl_const_628, out_j);
    goto label_72_dummy;

  label_72_dummy:
    assume false;
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_71_false:
    assume !INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    goto label_72;

  label_71:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    goto label_71_true, label_71_false;

  label_71_true:
    assume INT_NEQ(out_result.scanf$17, 1);
    assume value_is(__ctobpl_const_627, out_result.scanf$17);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_68:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    call out_result.scanf$17 := det_choice();
    call out_tempBoogie0 := det_choice();
    Mem_T.INT4[out_$scanf.arg.2$18$] := out_tempBoogie0;
    assume value_is(__ctobpl_const_626, out_$scanf.arg.2$18$);
    goto label_71;

  label_67:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 85} true;
    assert f != 0;
    out_$scanf.arg.2$18$ := PLUS(f, 4, PLUS(MULT(out_i, Mem_T.INT4[c]), 1, out_j));
    assume value_is(__ctobpl_const_621, out_$scanf.arg.2$18$);
    assume value_is(__ctobpl_const_622, out_i);
    assume value_is(__ctobpl_const_623, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_624, out_j);
    assume value_is(__ctobpl_const_625, Mem_T.INT4[PLUS(f, 4, PLUS(MULT(out_i, Mem_T.INT4[c]), 1, out_j))]);
    goto label_68;

  label_65_true:
    assume INT_LT(out_j, Mem_T.INT4[c]);
    assume value_is(__ctobpl_const_618, out_j);
    assume value_is(__ctobpl_const_619, Mem_T.INT4[c]);
    goto label_67;

  label_64:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 84} true;
    out_j := 0;
    assume value_is(__ctobpl_const_617, out_j);
    goto label_65;

  label_62_true:
    assume INT_LT(out_i, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_575, out_i);
    assume value_is(__ctobpl_const_576, Mem_T.INT4[r]);
    goto label_64;

  label_53:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 83} true;
    out_i := 0;
    assume value_is(__ctobpl_const_574, out_i);
    goto label_62;

  label_44_false:
    assume !INT_LT(1000, MULT(Mem_T.INT4[r], Mem_T.INT4[c]));
    assume value_is(__ctobpl_const_572, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_573, Mem_T.INT4[c]);
    goto label_53;

  label_44:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 75} true;
    goto label_44_true, label_44_false;

  label_44_true:
    assume INT_LT(1000, MULT(Mem_T.INT4[r], Mem_T.INT4[c]));
    assume value_is(__ctobpl_const_572, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_573, Mem_T.INT4[c]);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_43_false:
    assume !INT_NEQ(out_result.sscanf$10, 2);
    assume value_is(__ctobpl_const_571, out_result.sscanf$10);
    goto label_44;

  label_43:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 69} true;
    goto label_43_true, label_43_false;

  label_43_true:
    assume INT_NEQ(out_result.sscanf$10, 2);
    assume value_is(__ctobpl_const_571, out_result.sscanf$10);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    return;

  label_32:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 69} true;
    call out_result.sscanf$10 := det_choice();
    call out_tempBoogie0 := det_choice();
    Mem_T.INT4[r] := out_tempBoogie0;
    call out_tempBoogie1 := det_choice();
    Mem_T.INT4[c] := out_tempBoogie1;
    assume value_is(__ctobpl_const_569, Mem_T.INT4[r]);
    assume value_is(__ctobpl_const_570, Mem_T.INT4[c]);
    goto label_43;

  label_31_false:
    assume !INT_EQ(Mem_T.CHAR[out_p], 35);
    assume value_is(__ctobpl_const_567, out_p);
    assume value_is(__ctobpl_const_568, Mem_T.CHAR[out_p]);
    goto label_32;

  label_31:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 63} true;
    assert out_p != 0;
    goto label_31_true, label_31_false;

  label_31_true:
    assume INT_EQ(Mem_T.CHAR[out_p], 35);
    assume value_is(__ctobpl_const_567, out_p);
    assume value_is(__ctobpl_const_568, Mem_T.CHAR[out_p]);
    out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := in_$QChiSq.arg.1$26$, in_$fgets.arg.3$4$, in_$fputs.arg.2$31$, in_$fputs.arg.2$9$, in_i, in_info, in_$isspace.arg.1$6$, in_j, in_p, in_$printf.arg.2$28$, in_$printf.arg.4$27$, in_result.InfoTbl$22, in_result.QChiSq$25, in_result.__iob_func$30, in_result.__iob_func$3, in_result.__iob_func$8, in_result.fgets$2, in_result.fputs$29, in_result.fputs$7, in_result.isspace$5, in_result.printf$24, in_$result.question.32$, in_$result.question.33$, in_$result.question.34$, in_result.scanf$17, in_result.sscanf$10, in_$scanf.arg.2$18$, in_totdf, in_totinfo, in_tempBoogie0, in_tempBoogie1;
    alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4 := old(alloc), old(detChoiceCnt), old(Mem_T.A1000INT4), old(Mem_T.A15CHAR), old(Mem_T.A17CHAR), old(Mem_T.A18CHAR), old(Mem_T.A21CHAR), old(Mem_T.A256CHAR), old(Mem_T.A29CHAR), old(Mem_T.A34CHAR), old(Mem_T.A37CHAR), old(Mem_T.A41CHAR), old(Mem_T.A5CHAR), old(Mem_T.A6FLOAT), old(Mem_T.A7CHAR), old(Mem_T.CHAR), old(Mem_T.FLOAT), old(Mem_T.INT4), old(Mem_T.PCHAR), old(Mem_T.PFLOAT), old(Mem_T.PINT4), old(Mem_T.P_iobuf), old(Mem_T.UINT4);
    goto label_35;

  label_112:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    out_$result.question.33$ := out_$result.question.34$;
    assume value_is(__ctobpl_const_593, out_$result.question.33$);
    assume value_is(__ctobpl_const_594, out_$result.question.34$);
    goto label_109;

  label_108:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    out_$result.question.33$ := in_havoc_stringTemp;
    assume value_is(__ctobpl_const_595, out_$result.question.33$);
    goto label_109;

  label_102_true:
    assume INT_LT(out_info, BOOGIE_FLOAT_CONST___2.5);
    assume value_is(__ctobpl_const_589, out_info);
    goto label_108;

  label_102:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 110} true;
    goto label_102_true, label_102_false;

  label_101_false:
    assume !INT_LT(out_info, BOOGIE_FLOAT_CONST___3.5);
    assume value_is(__ctobpl_const_588, out_info);
    goto label_102;

  label_110:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    out_$result.question.34$ := in_havoc_stringTemp;
    assume value_is(__ctobpl_const_591, out_$result.question.34$);
    goto label_112;

  label_111:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    out_$result.question.34$ := in_havoc_stringTemp;
    assume value_is(__ctobpl_const_592, out_$result.question.34$);
    goto label_112;

  label_107_true:
    assume INT_LT(out_info, BOOGIE_FLOAT_CONST___1.5);
    assume value_is(__ctobpl_const_590, out_info);
    goto label_111;

  label_107:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 111} true;
    goto label_107_true, label_107_false;

  label_102_false:
    assume !INT_LT(out_info, BOOGIE_FLOAT_CONST___2.5);
    assume value_is(__ctobpl_const_589, out_info);
    goto label_107;

  label_107_false:
    assume !INT_LT(out_info, BOOGIE_FLOAT_CONST___1.5);
    assume value_is(__ctobpl_const_590, out_info);
    goto label_110;

  label_104_dummy:
    call {:si_unique_call 2} out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := main_loop_label_12_head(in_havoc_stringTemp, in_$InfoTbl.arg.3$23$, out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, in_infodf, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1);
    return;

  label_99:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 106} true;
    out_tempBoogie0 := PLUS(out_totdf, 1, Mem_T.INT4[in_infodf]);
    out_totdf := out_tempBoogie0;
    assume value_is(__ctobpl_const_615, out_totdf);
    assume value_is(__ctobpl_const_616, Mem_T.INT4[in_infodf]);
    goto label_99_dummy;

  label_98:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 105} true;
    out_tempBoogie0 := PLUS(out_totinfo, 1, out_info);
    out_totinfo := out_tempBoogie0;
    assume value_is(__ctobpl_const_613, out_totinfo);
    assume value_is(__ctobpl_const_614, out_info);
    goto label_99;

  label_95:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 101} true;
    call out_result.printf$24 := det_choice();
    goto label_98;

  label_94:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 102} true;
    out_$printf.arg.2$28$ := out_info;
    assume value_is(__ctobpl_const_611, out_$printf.arg.2$28$);
    assume value_is(__ctobpl_const_612, out_info);
    goto label_95;

  label_93:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    out_$printf.arg.4$27$ := out_result.QChiSq$25;
    assume value_is(__ctobpl_const_609, out_$printf.arg.4$27$);
    assume value_is(__ctobpl_const_610, out_result.QChiSq$25);
    goto label_94;

  label_90:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    call out_result.QChiSq$25 := QChiSq(out_$QChiSq.arg.1$26$, Mem_T.INT4[in_infodf]);
    assume value_is(__ctobpl_const_605, out_$QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_606, Mem_T.INT4[in_infodf]);
    assume value_is(__ctobpl_const_607, out_$QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_608, Mem_T.INT4[in_infodf]);
    goto label_93;

  label_89:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 103} true;
    out_$QChiSq.arg.1$26$ := out_info;
    assume value_is(__ctobpl_const_603, out_$QChiSq.arg.1$26$);
    assume value_is(__ctobpl_const_604, out_info);
    goto label_90;

  label_99_dummy:
    call {:si_unique_call 3} out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := main_loop_label_12_head(in_havoc_stringTemp, in_$InfoTbl.arg.3$23$, out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, in_infodf, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1);
    return;

  label_42:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 66} true;
    goto label_42_dummy;

  label_39:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    call out_result.fputs$7 := fputs(line, out_$fputs.arg.2$9$);
    assume value_is(__ctobpl_const_643, out_$fputs.arg.2$9$);
    assume value_is(__ctobpl_const_644, out_$fputs.arg.2$9$);
    goto label_42;

  label_38:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    assert out_result.__iob_func$8 != 0;
    out_$fputs.arg.2$9$ := PLUS(out_result.__iob_func$8, 32, 1);
    assume value_is(__ctobpl_const_641, out_$fputs.arg.2$9$);
    assume value_is(__ctobpl_const_642, out_result.__iob_func$8);
    goto label_39;

  label_35:
    assert {:sourcefile "source\tot_info.c"} {:sourceline 65} true;
    call out_result.__iob_func$8 := __iob_func();
    goto label_38;

  label_42_dummy:
    call {:si_unique_call 4} out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1 := main_loop_label_12_head(in_havoc_stringTemp, in_$InfoTbl.arg.3$23$, out_$QChiSq.arg.1$26$, out_$fgets.arg.3$4$, out_$fputs.arg.2$31$, out_$fputs.arg.2$9$, out_i, out_info, in_infodf, out_$isspace.arg.1$6$, out_j, out_p, out_$printf.arg.2$28$, out_$printf.arg.4$27$, out_result.InfoTbl$22, out_result.QChiSq$25, out_result.__iob_func$30, out_result.__iob_func$3, out_result.__iob_func$8, out_result.fgets$2, out_result.fputs$29, out_result.fputs$7, out_result.isspace$5, out_result.printf$24, out_$result.question.32$, out_$result.question.33$, out_$result.question.34$, out_result.scanf$17, out_result.sscanf$10, out_$scanf.arg.2$18$, out_totdf, out_totinfo, out_tempBoogie0, out_tempBoogie1);
    return;

  exit:
    return;
}



procedure main_loop_label_12_head(in_havoc_stringTemp: int, in_$InfoTbl.arg.3$23$: int, in_$QChiSq.arg.1$26$: int, in_$fgets.arg.3$4$: int, in_$fputs.arg.2$31$: int, in_$fputs.arg.2$9$: int, in_i: int, in_info: int, in_infodf: int, in_$isspace.arg.1$6$: int, in_j: int, in_p: int, in_$printf.arg.2$28$: int, in_$printf.arg.4$27$: int, in_result.InfoTbl$22: int, in_result.QChiSq$25: int, in_result.__iob_func$30: int, in_result.__iob_func$3: int, in_result.__iob_func$8: int, in_result.fgets$2: int, in_result.fputs$29: int, in_result.fputs$7: int, in_result.isspace$5: int, in_result.printf$24: int, in_$result.question.32$: int, in_$result.question.33$: int, in_$result.question.34$: int, in_result.scanf$17: int, in_result.sscanf$10: int, in_$scanf.arg.2$18$: int, in_totdf: int, in_totinfo: int, in_tempBoogie0: int, in_tempBoogie1: int) returns (out_$QChiSq.arg.1$26$: int, out_$fgets.arg.3$4$: int, out_$fputs.arg.2$31$: int, out_$fputs.arg.2$9$: int, out_i: int, out_info: int, out_$isspace.arg.1$6$: int, out_j: int, out_p: int, out_$printf.arg.2$28$: int, out_$printf.arg.4$27$: int, out_result.InfoTbl$22: int, out_result.QChiSq$25: int, out_result.__iob_func$30: int, out_result.__iob_func$3: int, out_result.__iob_func$8: int, out_result.fgets$2: int, out_result.fputs$29: int, out_result.fputs$7: int, out_result.isspace$5: int, out_result.printf$24: int, out_$result.question.32$: int, out_$result.question.33$: int, out_$result.question.34$: int, out_result.scanf$17: int, out_result.sscanf$10: int, out_$scanf.arg.2$18$: int, out_totdf: int, out_totinfo: int, out_tempBoogie0: int, out_tempBoogie1: int);
  modifies alloc, detChoiceCnt, Mem_T.A1000INT4, Mem_T.A15CHAR, Mem_T.A17CHAR, Mem_T.A18CHAR, Mem_T.A21CHAR, Mem_T.A256CHAR, Mem_T.A29CHAR, Mem_T.A34CHAR, Mem_T.A37CHAR, Mem_T.A41CHAR, Mem_T.A5CHAR, Mem_T.A6FLOAT, Mem_T.A7CHAR, Mem_T.CHAR, Mem_T.FLOAT, Mem_T.INT4, Mem_T.PCHAR, Mem_T.PFLOAT, Mem_T.PINT4, Mem_T.P_iobuf, Mem_T.UINT4;


