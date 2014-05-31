r=: @: {.
s=: @: {:

same=: 1 : '1 = [: */ 2 u/\ ]'
fl=: = same
st=: - same

if=: 2 : '0: ` u @. v'

SF=: (8 , {. r) if (fl s *. st r)
FL=: (5 , {.) if (fl s)

ifr=: 2 : '0: ` u @. v r'

ST=: (4 , {.) ifr st

freq=: [: +/"1 =
fs=: 1 : 'x -: [: \:~ freq'
hilow=: 0 _1&{ \: freq

K4=: (7 , hilow) ifr (4 1 fs)
FH=: (6 , hilow) ifr (3 2 fs)

K3=: (3 , 2&{ , ]) ifr (3 1 1 fs)
P2=: (2 , 1 3&{ , ]) ifr (2 2 1 fs)

pr=: 0 { (\: freq)
P1=: (1 , pr , ]) ifr (2 1 1 1 fs)

HC=: 0 , {.

p=: SF , K4 , FH , FL , ST , K3 , P2 , P1 ,: HC
poker=: 0 { [: \:~ p

rank=: '--23456789TJQKA' i. {.
suit=: 'CDHS' i. {:
card=: rank , suit

w=: ] ` (5 4 3 2 1 ,: {:) @. (14 5 4 3 2 -: {.)
hand=: [: w [: |: [: \:~ [: > [: card each cutopen
