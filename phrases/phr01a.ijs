NB. J Phrases Section 1A. Conventions
NB. http://www.jsoftware.com/help/phrases/conventions.htm

n0=: i. 6               NB. List of first six non-negative integers
m1=: ^&3                NB. Cube
m2=: mean=: +/ % #      NB. Arithmetic mean
d3=: $ ,:               NB. x copies of y
m4=: <.@(0.5&+)         NB. Round
m5=: = +                NB. Test for real number
m6=: (<0 _1)&C.         NB. Swap leading and final items
m7=: +/\  -: +/\.&.|.   NB. Prefix sum scan is suffix under reversal
