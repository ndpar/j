NB. =========================================================
NB. Find all x-tuples of factors of y
NB. e.g. 3 factors 72

factors=: 4 : '~. /:~"1 >: ($a) #: I. , y = a=. */^:(<:x)~ >: i.y'

NB. https://twitter.com/JohnAllenPaulos/status/588674723514605570
(,. +/"1) 3 factors 72
