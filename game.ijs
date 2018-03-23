NB. =========================================================
NB. Game Theory Functions
NB. =========================================================

] votes =: 5 4 $ 'BCADBDCADCABADBCADCB'

NB. Borda Counts
borda =: 3 : 0
  cand =. /:~ ~. , y
  w =. |. i. # cand
  cand ; +/ w * |: +/"2 cand =/ y
)

borda votes

NB. Condorcet comparison
cond_comp =: 1 : 0
:
  pair =. x , y
  +/ 0 < {."1 (-/"2 pair (=/"1 1) u) (-."1) 0
)
NB. Condorcet matrix
cond_matrix =: 3 : 0
  cand =. /:~ ~. , y
  f =. (y cond_comp)"0
  f/~ cand
)

cond_matrix votes