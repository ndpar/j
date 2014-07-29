load 'plot'

NB. =========================================================
NB. Calculates (simplified) Riemann's function by formula
NB. $\sum_{p^n\le x}\frac{1}{n}$
NB. Works for numbers up to 1e4

a=: %:~ (1 + i.@<.@(2&^.))
p=: (p:inv # 1:)"0
i=: >:@i.@#
j=: +/@:(+/)@:(%@i * p ^ i)@:a

NB. plot (j. j"0) >: i. 1e2


NB. =========================================================
NB. Calculates (simplified) Riemann's function by definition:
NB. J(x) begins at 0 for x=0 and increases
NB. by a jump of 1 at primes,
NB. by a jump of 1/2 at prime squares,
NB. by a jump of 1/3 at prime cubes, etc.

j=: 3 : 0
Y=. i. y
P=. i.&.(p:inv) y NB. all primes < y
A=. 1
D=. 0
X=. R=. y # 0
whilst. +./ X do.
  D=. 1 + D
  A=. A * P
  X=. (# A) > A i. Y
  R=. R + X % D
end.
+/\ R
)

plot (i. j. j) 1e2
