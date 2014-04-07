NB. J Phrases Section 2A. Bond or Curry
NB. http://www.jsoftware.com/help/phrases/bond_curry.htm

m0 =: 1&+                     NB. Increment >:
m1 =: +&1                     NB. "
m2 =: _1&+                    NB. Decrement <:
m3 =: -&1                     NB. "
m4 =: 1&-                     NB. Not -. (logical and probability complement)
m5 =: 1&~:                    NB. "
m6 =: 0&=                     NB. "
m7 =: 0&-                     NB. Negate - (arithmetic)
m8 =: _1&*                    NB. "
m9 =: *&_1                    NB. "
m10=: 2&*                     NB. Double +:
m11=: *&2                     NB. "
m12=: 3&*                     NB. Triple
m13=: *&3                     NB. "
m14=: 0j1&*                   NB. j. (Multiply by √-1)
m15=: ^@j.                    NB. r. (Complex # on unit circle at y radians)
m16=: 1p1&*                   NB. π times
m17=: 0.5&*                   NB. Halve -:
m18=: *&0.5                   NB. "
m19=: %&2                     NB. "
m20=: 1&%                     NB. Reciprocal %
m21=: ^&_1                    NB. "
m22=: ^&2                     NB. Square *:
m23=: ^&3                     NB. Cube
m24=: ^&0.5                   NB. Square root %:
m25=: ^&1r2                   NB. "
m26=: 2&%:                    NB. "
m27=: ^&(%3)                  NB. Cube root
m28=: ^&1r3                   NB. "
m29=: 3&%:                    NB. "
m30=: (^1)&^                  NB. Exponential ^
m31=: 1x1&^                   NB. "
m32=: 1x1&^.                  NB. Natural log ^.
m33=: 10&^                    NB. Antilog
m34=: 10&^.                   NB. Base-10 log
m35=: >:@<.@(10&^.)@(1&>.)    NB. # of digits needed to represent integer y
m36=: #@(10&#.^:_1)"0         NB. "
m37=: >:@<.@(2&^.)@(1&>.)     NB. # of bits needed to represent integer y
m38=: #@(2&#.^:_1)"0          NB. "
m39=: 0&{                     NB. Head  (first) {.
m40=: _1&{                    NB. Tail (last) {:
m41=: 1&}.                    NB. Behead }.
m42=: _1&}.                   NB. Curtail }:
m43=: 0&<                     NB. Positive test
m44=: 0&>                     NB. Negative test
m45=: 0&>.                    NB. Max (0,y)
m46=: 0&<.                    NB. Min (0,y)
m47=: (0&=)@(2&|)             NB. Even test
m48=: (1&=)@(2&|)             NB. Odd test
m49=: _1&A.                   NB. Reverse |.
m50=: (<0 _1)&C.              NB. Interchange first and last items
m51=: <.@(0.5&+)              NB. Round
m52=: ,~ $ 1: , ] $ 0:        NB. Identity matrix of order y
m53=: -.@(' '&E.) # ]         NB. Remove multiple blanks
m54=: BC=: i.@>: ! ]          NB. Binomial coefficients of order y
m55=: (0&, + ,&0)^:([`1:)     NB. "  (recursive)
m56=: BCT=: i. !/ i.          NB. BC table of orders to y-1
m57=: PAT=: |:@BCT            NB. Pascal's triangle
m58=: (0&, + ,&0)^:(i.`1:)    NB. "  (recursive)
m59=: IX=: a.&i.              NB. Index in ASCII alphabet
m60=: Lt=: (1&e.)@(e.&a.)@,   NB. Literal test
m61=: 1&#.                    NB. Sum over lists (last axis) +/"1
m62=: 1&,                     NB. Preface a row of 1's
m63=: ,&1                     NB. Append a row of 1's
m64=: 1&,.                    NB. Preface a column of 1's
m65=: ,.&1                    NB. Append a column of 1's
m66=: 1&,@$ $ ,               NB. Itemize (append leading 1 to shape) ,:
m67=: sin=: 1&o.              NB. Sin
m68=: asin=: _1&o.            NB. Arcsin
m69=: cos=: 2&o.              NB. Cos
m70=: acos=: _2&o.            NB. Arccos
m71=: tan=: 3&o.              NB. Tan
m72=: atan=: _3&o.            NB. Arctan
m73=: sinh=: 5&o.             NB. Sinh
m74=: asinh=: _5&o.           NB. Arcsinh
m75=: cosh=: 6&o.             NB. Cosh
m76=: acosh=: _6&o.           NB. Arccosh
m77=: tanh=: 7&o.             NB. Tanh
m78=: atanh=: _7&o.           NB. Arctanh
