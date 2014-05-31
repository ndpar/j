on=: 2 : '0: ` u @. v'
SF=: (8 , [: {. {.) on (fl *. st@{.)

in=: 1 : '1 = [: */ 2 u/\ ]'

fl=: [: = in {:
FL=: (5 , {.) on fl

if=: 2 : '(0: ` u @. v) @ {.'

st=: - in
ST=: (4 , {.) if st

fs=: 1 : '(1 = [: *./ x = [: \:~ fr) :: 0:'

K4=: (7 , ({. , {:) \: fr) if (4 1 fs)
FH=: (6 , ({. , {:) \: fr) if (3 2 fs)

K3=: (3 , 2&{ , ]) if (3 1 1 fs)
P2=: (2 , 1&{ , 3&{ , ]) if (2 2 1 fs)

pr=: 0 { (\: fr)
P1=: (1 , pr , ]) if (2 1 1 1 fs)

HC=: 0 , {.

p=: SF , K4 , FH , FL , ST , K3 , P2 , P1 ,: HC
P=: [: {. [: \:~ p

r=: '--23456789TJQKA' i. {.
s=: 'CDHS' i. {:
card=: r , s

w=: ] ` (5 4 3 2 1 ,: {:) @. (14 5 4 3 2 -: {.)
hand=: [: w [: |: [: \:~ [: > [: card each cutopen

eval=: [: P hand








eval 'AS QS TS JS KS'    NB. Royal Flush Spades
eval 'AC JC TC QC KC'    NB. Royal Flush Clubs
eval '7C 6C TC 8C 9C'    NB. Straight Flush 10 High
eval '7D 4D 5D 3D 6D'    NB. Straight Flush 7 High
eval '3H 4H 5H AH 2H'    NB. Steel Wheel
eval '9H JD 9S 9C 9D'    NB. Nine Quads Jack Kicker
eval '9H 5S 9S 9C 9D'    NB. Nine Quads 5 Kicker
eval '9H QS QD QC 9D'    NB. Queens Over 9s
eval 'QH 3S QD QC 3D'    NB. Queens Over 3s
eval 'JS 2S 4S KS 7S'    NB. King Flush
eval 'JC 2C QC 5C 7C'    NB. Queen Flush Jack High
eval '8C 2C QC 5C 7C'    NB. Queen Flush 8 High
eval '8C 2C QC 5C 6C'    NB. Queen Flush 8 High 6
eval '7C 6S 5D 8H 9C'    NB. Straight 9 High
eval '2D 4C 5S 3D 6H'    NB. Straight 6 High
eval '3H 4H 5D AD 2S'    NB. Wheel
eval '5H 4C QD QC QS'    NB. Three Queens
eval '5H TH 6D TC TS'    NB. Three Tens 6 Kicker
eval '5H TH 4D TC TS'    NB. Three Tens 5 Kicker
eval '5H TH 3D TC TS'    NB. Three Tens 5 Kicker 3
eval '9H KH 9D KC 2S'    NB. Kings Over 9s
eval '4D 4H JD JH AC'    NB. Jack Over 4s Ace Kicker
eval '4D 4H JD JH TS'    NB. Jack Over 4s Ten Kicker
eval 'AD 4H JD 7H AS'    NB. Two Aces
eval 'AD TH TD 7H 8S'    NB. Two Tens Ace High
eval '6D TH TD 4H 5S'    NB. Two Tens 6 High
eval '6D TH TD 4H 3S'    NB. Two Tens 6 High 4
eval '6D TH TD 4H 2S'    NB. Two Tens 6 High 4 2
eval '6D AH TD 4H 2S'    NB. Ace High
eval '8D 5H 7D JH 2S'    NB. Jack High 8
eval '8D 5H 6D JH 2S'    NB. Jack High 8 6
eval '8D 4H 6D JH 2S'    NB. Jack High 8 6 4
