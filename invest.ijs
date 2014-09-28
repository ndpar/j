load 'plot'
load 'stats'
load 'tables/csv'

NB. =========================================================
NB. Data functions

NB. Extracts last column (price) from CSV file
NB. downloaded from Yahoo!Finance
price=: 3 : '|. ". > {:"1 }. y'

NB. =========================================================
NB. Financial functions

NB. (Daily) return as percentage
dret=: 100 * <:@%~
ret=: 2 dret/\ ]
total_ret=: {. dret {:

NB. Risk
risk=: stddev
negative=: #~ 0&>
nrisk=: [: risk negative

NB. Sharpe ratio is expected return value
NB. divided by standard deviation
sharpe=: 3 : 0
k=. [: %: # NB. sqrt of number of trading days
s=. k * mean % risk
s ret y
)

NB. Sortino ratio only penalizes for negative
NB. volatility in the calculation of risk
sortino=: 3 : 0
k=. [: %: #
s=. k * mean % nrisk
s ret y
)

summary=: ('Return';'Risk';'Sharpe Ratio';'Sortino Ratio'),.(total_ret;(risk@ret);sharpe;sortino)
