NB. J Phrases Section 2C. Ambivalent Functions
NB. http://www.jsoftware.com/help/phrases/ambivalent_functions.htm

v0=: 10&^. : ^.                           NB. Base 10 log for monadic case
v1=: 10&$: : ^.                           NB. Same using self-reference to dyad
v2=: 10&^. : ($:@] * ^.@(10"0) % ^.@[)    NB. Same using self-reference to monad
d3=: res=: [: : |                         NB. Domain of monad is empty (dyadic only)
m4=: abs=: | : [:                         NB. Domain of dyad is empty (monadic only)
