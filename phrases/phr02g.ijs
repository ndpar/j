NB. J Phrases Section 2G. Verb Trains
NB. http://www.jsoftware.com/help/phrases/verb_trains.htm

m0=: >:@+:@i.            NB. First odd integers
m1=: 1 + 2 * i.          NB. Same as m0
m2=: +/@(1 + 2 * i.)     NB. Sum of odd integers
m3=: [: +/ 1 + 2 * i.    NB. Same as m2 using cap
m4=: m2 -: *:            NB. Sum of odds is square (Tautology)
d5=: < i. 1:             NB. The first element where x<y ; also works for = ~: < <: >: > E.
d6=: < i. 0:             NB. The first element where not x<y
d7=: < i: 1:             NB. The last element where x<y
d8=: < i: 0:             NB. The last element where not x<y
d9=: [: +/ <             NB. The number of elements where x<y
