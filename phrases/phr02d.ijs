NB. J Phrases Section 2D. Adverbs & Conjunctions
NB. http://www.jsoftware.com/help/phrases/adverbs_conjunctions.htm

a0 =: I=: ^:_1                                NB. Inverse (^I is ^.)
a1 =: L=: ^:_                                 NB. Limit (2&o.L 1 for soln of y=cos y)
a2 =: LI=: ^:__                               NB. Limit of inverse
a3 =: SQ=: ^:2                                NB. Square (1&o.SQ for sine squared)
a4 =: C=: &o.                                 NB. Family of circular fns (3 C is tangent)
a5 =: CO=: %@C                                NB. 3 CO is cotangent
m6 =: rfd=: 1r180p1&*                         NB. Radians from degrees
m7 =: dfr=: rfd I                             NB. Use dfr=: dfr f. to fix definition
a8 =: D=: @rfd                                NB. Try: 1 C D 0 30 45 60 90 180
m9 =: SIN=: 1&o. D                            NB. Sine for degree arguments
a10=: T=: "2                                  NB. Try: <T i. 2 3 4 3 (box tables)
a11=: S=: ^!.                                 NB. Stope (rising or falling factorial fn etc)
a12=: P=: p.!.                                NB. Stope polynomial
a13=: FILL=: |.!.                             NB. Fill for shift (non-cyclic rotate)
a14=: FILE=: 1!:                              NB. File functions (1 FILE for read, etc.)
c15=: split=: 2 : ',.@(x@(y&{.) ; x@(y&}.))'  NB. Try: +: split 2 [ i. 5 3
d16=: by=: ' '&;@,.@[ ,. ]                    NB. Verb for use in the table adverb below
d17=: over=: ({. ; }.)@":@,                   NB. Verb for use in the table adverb below
a18=: table=: 1 :'[ by ] over x/'             NB. Try 1 2 3 * table 4 5 6 7
c19=: RAT=: 2 : 'x&p. % y&p.'                 NB. Produces rational function
c20=: x=: 2 : '+/@(x&*@(^&y))"0'              NB. Mimics notation of elementary math
c21=: bind=: 2 : 'x@(y"_)'                    NB. Binds y to the monad x
