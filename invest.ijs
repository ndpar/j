load 'plot'
load 'stats'
load 'tables/csv'

NB. =========================================================
NB. String functions

strtodayno=: [: todayno getdate

NB. =========================================================
NB. Yahoo!Finance CSV

NB. Read CSV file
y_read_csv=: |. @: }. @: readcsv @: jpath

NB. Columns in Yahoo!Finance CSV file
y_date=:      0&{"1
y_open=:      1&{"1
y_high=:      2&{"1
y_low=:       3&{"1
y_close=:     4&{"1
y_volume=:    5&{"1
y_adj_close=: 6&{"1

y_date_close=: y_date ,. y_adj_close
y_dayno=: strtodayno @: > @: {."1

y_between=: 4 : 0
'from to' =. strtodayno"1 > x
dates=. y_dayno y
filter=. from&< *. to&>
i=. filter dates
i # y
)

y_price=: ". @: > @: y_adj_close

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
