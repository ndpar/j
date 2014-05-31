on=: 2 : '0: ` u @. v'
SF=: (8 , [: {. {.) on (fl *. st@{.)

in=: 1 : '1 = [: */ 2 u/\ ]'

fl=: [: = in {:
FL=: (5 , {.) on fl

if=: 2 : '(0: ` u @. v) @ {.'

st=: - in
ST=: (4 , {.) if st

fr=: [: +/"1 =
fs=: 1 : '(1 = [: *./ x = [: \:~ fr) :: 0:'

K4=: (7 , ({. , {:) \: fr) if (4 1 fs)
FH=: (6 , ({. , {:) \: fr) if (3 2 fs)

K3=: (3 , 2&{ , ]) if (3 1 1 fs)
P2=: (2 , 1&{ , 3&{ , ]) if (2 2 1 fs)

pr=: 0 { (\: fr)
P1=: (1 , pr , ]) if (2 1 1 1 fs)

HC=: 0 , {.

p=: SF , K4 , FH , FL , ST , K3 , P2 , P1 ,: HC
poker=: [: {. [: \:~ p

r=: '--23456789TJQKA' i. {.
s=: 'CDHS' i. {:
card=: r , s

w=: ] ` (5 4 3 2 1 ,: {:) @. (14 5 4 3 2 -: {.)
hand=: [: w [: |: [: \:~ [: > [: card each cutopen

eval=: [: poker hand
