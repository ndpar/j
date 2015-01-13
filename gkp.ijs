NB. =========================================================
NB. J Companion to Concrete Mathematics by
NB. Graham, Knuth, Patashnik
NB. =========================================================

radix=: #.^:_1

NB. Generalized recurrences in the form of (1.17)
NB.    f(j) = a_j,          for 1<=j<d
NB. f(dn+j) = cf(n) + b_j,  for 0<=j<d, n>=1
NB. J implementation of the solution (1.18)

recur=: 4 : 0
'c ab' =. x
assert. # c
d=. {: $ ab
m=. <: # n=. d radix y
c #. n {"0 1 (1 , m) # ab
)

recurr=: recur"_ 0

NB. Tests

(10;0 34 5,:76 _2 8) recur 19

j2=: (2;0 1,:_1 1)&recurr
j2 i.17

NB. http://mathworld.wolfram.com/JosephusProblem.html

sjosephus=: ]`([ $: }:@|.)@.(1 < #@])
josephus=: [ sjosephus >:@i.@]
3 josephus 41

NB. =========================================================
NB. Exercises
NB. =========================================================

NB. Exercise 1.2
NB. The Tower of Hanoi, if A<->B is disallowed
NB. Number of moves = 3^n-1

h=: b`(p,q,r,s,p)@.c
c=: 0 < [
b=: 0 2 $ ]
p=: <:@[ h ]
r=: ];.0@p
q=: 2 $ 1 A. ]
s=: 2 $ 5 A. ]

2 h 'ABC'