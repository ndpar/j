NB. =========================================================
NB. Game Theory Functions
NB. =========================================================

NB. Sorted list of candidates from votes
candidates =: /:~@~.@,

NB. Borda Counts
borda =: 3 : 0
  cand =. candidates y
  w =. |. i. # cand
  (\:~ rank) (,&<"0) cand \: rank =. +/ w * |: +/"2 cand =/ y
)

NB. Condorcet comparison
cond_comp =: 1 : 0
:
  pair =. x , y
  +/ 0 < {."1 (-/"2 pair (=/"1 1) u) (-."1) 0
)
NB. Condorcet matrix
cond_matrix =: 3 : 0
  cand =. candidates y
  f =. (y cond_comp)"0
  f/~ cand
)
NB. Condorcet winner
condorcet =: 3 : 0
  cand =. candidates y
  maj =. -: # y
  rank =. (= <:@#) +/"1 maj < cm =. cond_matrix y
  cm ; < rank (,&<"0) cand
)

] votes =: 5 4 $ 'BCADBDCADCABADBCADCB'
borda votes
condorcet votes