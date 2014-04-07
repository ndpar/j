NB. J Phrases Section 2B. Rank
NB. http://www.jsoftware.com/help/phrases/rank.htm

m0=: +/           NB. sum (column sums of a matrix)
m1=: +/"1         NB. sum vectors (row sums of a matrix)
d2=: *"0 _        NB. outer product; same as */
m3=: +/@(*"1 _)   NB. inner product; same as +/ .*
