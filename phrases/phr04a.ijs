NB. J Phrases Section 4A. Intervals
NB. http://www.jsoftware.com/help/phrases/intervals.htm

d0 =: OO=: ({.@] <  [) *. [ <  {:@]    NB. x OinO y (Is x in open interval y)
d1 =: OC=: ({.@] <  [) *. [ <: {:@]    NB. x OinC y
d2 =: CO=: ({.@] <: [) *. [ <  {:@]    NB. x CinO y
d3 =: CC=: ({.@] <: [) *. [ <: {:@]    NB. x CinC y
d4 =: +/"1@d2                          NB. Number of x CinO y
d5 =: 0: e.~ class                     NB. x OinO y
d6 =: 0 1"_ e.~ class                  NB. x OinC y
d7 =: _1 0"_ e.~ class                 NB. x CinO y
d8 =: _1 0 1"_ e.~ class               NB. x CinC y
d9 =: class=: [: +/"1 [: * -/          NB. Class _2 to 2: (__,a), a, (a,b), b, (b,_)
d10=: [: ~:/ >:/~                      NB. x OinC y
d11=: ] >/ .>~ [: ,.~ [                NB. x OinC y
d12=: sgd=: *@(-~/~)                   NB. Signum of difference
d13=: 0&=@(+/)@sgd                     NB. OO
d14=: e.&0 1@(+/)@sgd                  NB. OC
d15=: 0&>:@(%/)@sgd                    NB. CO
d16=: >/@sgd                           NB. CC
