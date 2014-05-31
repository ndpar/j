t=: 1    NB. Test result
t=: t *. n8AS =: 8 14  0  0  0  0     -: poker RoyalFlushSpades       =: hand 'AS QS TS JS KS'
t=: t *. n8AC =: 8 14  0  0  0  0     -: poker RoyalFlushClubs        =: hand 'AC JC TC QC KC'
t=: t *. n8TC =: 8 10  0  0  0  0     -: poker StraightFlushTenHigh   =: hand '7C 6C TC 8C 9C'
t=: t *. n87D =: 8  7  0  0  0  0     -: poker StraightFlushSevenHigh =: hand '7D 4D 5D 3D 6D'
t=: t *. n85H =: 8  5  0  0  0  0     -: poker SteelWheel             =: hand '3H 4H 5H AH 2H'
t=: t *. n79J =: 7  9 11  0  0  0     -: poker NineQuadsJackKicker    =: hand '9H JD 9S 9C 9D'
t=: t *. n795 =: 7  9  5  0  0  0     -: poker NineQuadsFiveKicker    =: hand '9H 5S 9S 9C 9D'
t=: t *. n6Q9 =: 6 12  9  0  0  0     -: poker QueensOverNines        =: hand '9H QS QD QC 9D'
t=: t *. n6Q3 =: 6 12  3  0  0  0     -: poker QueensOverThrees       =: hand 'QH 3S QD QC 3D'
t=: t *. n5Ka =: 5 13 11  7  4  2     -: poker KingFlush              =: hand 'JS 2S 4S KS 7S'
t=: t *. n5Qa =: 5 12 11  7  5  2     -: poker QueenFlushJackHigh     =: hand 'JC 2C QC 5C 7C'
t=: t *. n5Qb =: 5 12  8  7  5  2     -: poker QueenFlushEightHigh    =: hand '8C 2C QC 5C 7C'
t=: t *. n5Qc =: 5 12  8  6  5  2     -: poker QueenFlushEightHighSix =: hand '8C 2C QC 5C 6C'
t=: t *. n49a =: 4  9  0  0  0  0     -: poker StraightNineHigh       =: hand '7C 6S 5D 8H 9C'
t=: t *. n46a =: 4  6  0  0  0  0     -: poker StraightSixHigh        =: hand '2D 4C 5S 3D 6H'
t=: t *. n45a =: 4  5  0  0  0  0     -: poker Wheel                  =: hand '3H 4H 5D AD 2S'
t=: t *. n3Qa =: 3 12 12 12 12  5 4   -: poker ThreeQueens            =: hand '5H 4C QD QC QS'
t=: t *. n3Ta =: 3 10 10 10 10  6 5   -: poker ThreeTensSixKicker     =: hand '5H TH 6D TC TS'
t=: t *. n3Tb =: 3 10 10 10 10  5 4   -: poker ThreeTensFiveKicker    =: hand '5H TH 4D TC TS'
t=: t *. n3Tc =: 3 10 10 10 10  5 3   -: poker ThreeTensFiveKicker3   =: hand '5H TH 3D TC TS'
t=: t *. n2K9 =: 2 13  9 13 13  9 9 2 -: poker KingsAndNines          =: hand '9H KH 9D KC 2S'
t=: t *. n2JA =: 2 11  4 14 11 11 4 4 -: poker JackAndFoursAceKicker  =: hand '4D 4H JD JH AC'
t=: t *. n2JT =: 2 11  4 11 11 10 4 4 -: poker JackAndFoursTenKicker  =: hand '4D 4H JD JH TS'
t=: t *. n1Aa =: 1 14 14 14 11  7 4   -: poker TwoAces                =: hand 'AD 4H JD 7H AS'
t=: t *. n1Ta =: 1 10 14 10 10  8 7   -: poker TwoTensAceHigh         =: hand 'AD TH TD 7H 8S'
t=: t *. n1Tb =: 1 10 10 10  6  5 4   -: poker TwoTensSixHigh         =: hand '6D TH TD 4H 5S'
t=: t *. n1Tc =: 1 10 10 10  6  4 3   -: poker TwoTensSixHigh4        =: hand '6D TH TD 4H 3S'
t=: t *. n1Td =: 1 10 10 10  6  4 2   -: poker TwoTensSixHigh42       =: hand '6D TH TD 4H 2S'
t=: t *. n0AT =: 0 14 10  6  4  2     -: poker AceHigh                =: hand '6D AH TD 4H 2S'
t=: t *. n0J7 =: 0 11  8  7  5  2     -: poker JackHigh8              =: hand '8D 5H 7D JH 2S'
t=: t *. n0J5 =: 0 11  8  6  5  2     -: poker JackHigh86             =: hand '8D 5H 6D JH 2S'
t=: t *. n0J4 =: 0 11  8  6  4  2     -: poker JackHigh864            =: hand '8D 4H 6D JH 2S'
