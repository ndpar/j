load 'plot'
load 'stats'
load 'tables/csv'

NB. =========================================================
NB. String functions

strtodayno=: [: todayno getdate

NB. =========================================================
NB. Yahoo!Finance CSV

y_data_dir=: '~/projects/qstk/yahoo/'

NB. Read CSV file
y_read_csv=: |. @: }. @: readcsv @: jpath
y_read_csv_symbol=: y_read_csv @: (y_data_dir&,) @: (,&'.csv')

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
  filter=. from&<: *. to&>:
  i=. filter dates
  i # y
)

y_price=: ". @: > @: y_adj_close

NB. Extracts last column (price) from CSV file
NB. downloaded from Yahoo!Finance
price=: 3 : '|. ". > {:"1 }. y'

NB. =========================================================
NB. Financial functions

NB. Stadard deviation without decrement
var2=: ssdev % #
stdev=: %: @ var2

NB. (Daily) return
dret=: <: @: %~
ret=: 2 dret/\ ]
total_ret=: {. dret {:

NB. Risk
risk=: stdev
negative=: #~ 0&>
nrisk=: [: risk negative

NB. Sharpe ratio is expected return value
NB. divided by standard deviation
sharpe=: (%:@:#) * mean % risk

NB. Sortino ratio only penalizes for negative
NB. volatility in the calculation of risk
sortino=: 3 : 0
  k=. [: %: #
  s=. k * mean % nrisk
  s ret y
)

summary=: ('Return';'Risk';'Sharpe Ratio';'Sortino Ratio'),.(total_ret;(risk@ret);sharpe;sortino)

NB. Cumulative return, relative to first price
cum_return=: (1 , }. % {.)"1

NB. =========================================================
NB. Examples

NB.VAB=: price VAB_RAW=: ('2014-01-01';'2014-08-31') y_between y_read_csv_symbol 'VAB.TO'
NB.XEF=: price XEF_RAW=: ('2014-01-01';'2014-08-31') y_between y_read_csv_symbol 'XEF.TO'
NB.plot VAB,:XEF
NB.summary XEF

AAPL=: price AAPL_RAW=: y_read_csv_symbol 'AAPL'
(i.5) { AAPL_RAW
NB.strtodayno '2010-01-01'

NB.y_date_close Dates y_between AAPL_RAW
NB.y_price Dates y_between AAPL_RAW


NB.plot (% {."1) prices
NB.cum_return prices
NB.+/ allocations * cum_return prices

NB. |. > {. (Dates&y_between)&.> y_read_csv_symbol&.> symbols

NB. =========================================================
NB. Homework 1

NB.Symbols=: 'HNZ';'AXP';'HPQ';'IBM'
NB.Allocations=: 1.0 0.0 0.0 0.0
NB.Dates=: '2010-01-01';'2010-12-31'

SPY=: cum_return y_price (Dates&y_between) y_read_csv_symbol 'SPY'

Symbols=: 'AAPL';'GLD';'GOOG';'XOM'
Allocations=: 0.4 0.4 0.0 0.2
Dates=: '2011-01-01';'2011-12-31'

Prices=: > (y_price @: (Dates&y_between) @: y_read_csv_symbol)&.> Symbols


homework12=: 3 : 0
  sym_cum_return=. cum_return Prices
  sym_invest=. Allocations * sym_cum_return
  fund_invest=. +/ sym_invest
  fund_cum_return=. cum_return fund_invest
  fund_daily_return=. 0 , ret fund_invest
  CR=. {: cum_return fund_invest
  ADR=. mean fund_daily_return
  V=. risk fund_daily_return
  SR=. sharpe fund_daily_return
  k=. 'Start Date';'End Date';'Symbols';'Optimal Allocations'
  k=. k,'Sharpe Ratio';'Volatility';'Average Daily Return';'Cumulative Return'
  v=. (> {. Dates);(> {: Dates);Symbols;Allocations
  v=. v,(13j11 ": SR);(16j14 ": V);(17j15 ": ADR);(13j11 ": CR)
  k ,. v
)

AllAllocs=: 0.1 * 286 4 $ 10 0 0 0 9 1 0 0 9 0 1 0 9 0 0 1 8 2 0 0 8 1 1 0 8 1 0 1 8 0 2 0 8 0 1 1 8 0 0 2 7 3 0 0 7 2 1 0 7 2 0 1 7 1 2 0 7 1 1 1 7 1 0 2 7 0 3 0 7 0 2 1 7 0 1 2 7 0 0 3 6 4 0 0 6 3 1 0 6 3 0 1 6 2 2 0 6 2 1 1 6 2 0 2 6 1 3 0 6 1 2 1 6 1 1 2 6 1 0 3 6 0 4 0 6 0 3 1 6 0 2 2 6 0 1 3 6 0 0 4 5 5 0 0 5 4 1 0 5 4 0 1 5 3 2 0 5 3 1 1 5 3 0 2 5 2 3 0 5 2 2 1 5 2 1 2 5 2 0 3 5 1 4 0 5 1 3 1 5 1 2 2 5 1 1 3 5 1 0 4 5 0 5 0 5 0 4 1 5 0 3 2 5 0 2 3 5 0 1 4 5 0 0 5 4 6 0 0 4 5 1 0 4 5 0 1 4 4 2 0 4 4 1 1 4 4 0 2 4 3 3 0 4 3 2 1 4 3 1 2 4 3 0 3 4 2 4 0 4 2 3 1 4 2 2 2 4 2 1 3 4 2 0 4 4 1 5 0 4 1 4 1 4 1 3 2 4 1 2 3 4 1 1 4 4 1 0 5 4 0 6 0 4 0 5 1 4 0 4 2 4 0 3 3 4 0 2 4 4 0 1 5 4 0 0 6 3 7 0 0 3 6 1 0 3 6 0 1 3 5 2 0 3 5 1 1 3 5 0 2 3 4 3 0 3 4 2 1 3 4 1 2 3 4 0 3 3 3 4 0 3 3 3 1 3 3 2 2 3 3 1 3 3 3 0 4 3 2 5 0 3 2 4 1 3 2 3 2 3 2 2 3 3 2 1 4 3 2 0 5 3 1 6 0 3 1 5 1 3 1 4 2 3 1 3 3 3 1 2 4 3 1 1 5 3 1 0 6 3 0 7 0 3 0 6 1 3 0 5 2 3 0 4 3 3 0 3 4 3 0 2 5 3 0 1 6 3 0 0 7 2 8 0 0 2 7 1 0 2 7 0 1 2 6 2 0 2 6 1 1 2 6 0 2 2 5 3 0 2 5 2 1 2 5 1 2 2 5 0 3 2 4 4 0 2 4 3 1 2 4 2 2 2 4 1 3 2 4 0 4 2 3 5 0 2 3 4 1 2 3 3 2 2 3 2 3 2 3 1 4 2 3 0 5 2 2 6 0 2 2 5 1 2 2 4 2 2 2 3 3 2 2 2 4 2 2 1 5 2 2 0 6 2 1 7 0 2 1 6 1 2 1 5 2 2 1 4 3 2 1 3 4 2 1 2 5 2 1 1 6 2 1 0 7 2 0 8 0 2 0 7 1 2 0 6 2 2 0 5 3 2 0 4 4 2 0 3 5 2 0 2 6 2 0 1 7 2 0 0 8 1 9 0 0 1 8 1 0 1 8 0 1 1 7 2 0 1 7 1 1 1 7 0 2 1 6 3 0 1 6 2 1 1 6 1 2 1 6 0 3 1 5 4 0 1 5 3 1 1 5 2 2 1 5 1 3 1 5 0 4 1 4 5 0 1 4 4 1 1 4 3 2 1 4 2 3 1 4 1 4 1 4 0 5 1 3 6 0 1 3 5 1 1 3 4 2 1 3 3 3 1 3 2 4 1 3 1 5 1 3 0 6 1 2 7 0 1 2 6 1 1 2 5 2 1 2 4 3 1 2 3 4 1 2 2 5 1 2 1 6 1 2 0 7 1 1 8 0 1 1 7 1 1 1 6 2 1 1 5 3 1 1 4 4 1 1 3 5 1 1 2 6 1 1 1 7 1 1 0 8 1 0 9 0 1 0 8 1 1 0 7 2 1 0 6 3 1 0 5 4 1 0 4 5 1 0 3 6 1 0 2 7 1 0 1 8 1 0 0 9 0 10 0 0 0 9 1 0 0 9 0 1 0 8 2 0 0 8 1 1 0 8 0 2 0 7 3 0 0 7 2 1 0 7 1 2 0 7 0 3 0 6 4 0 0 6 3 1 0 6 2 2 0 6 1 3 0 6 0 4 0 5 5 0 0 5 4 1 0 5 3 2 0 5 2 3 0 5 1 4 0 5 0 5 0 4 6 0 0 4 5 1 0 4 4 2 0 4 3 3 0 4 2 4 0 4 1 5 0 4 0 6 0 3 7 0 0 3 6 1 0 3 5 2 0 3 4 3 0 3 3 4 0 3 2 5 0 3 1 6 0 3 0 7 0 2 8 0 0 2 7 1 0 2 6 2 0 2 5 3 0 2 4 4 0 2 3 5 0 2 2 6 0 2 1 7 0 2 0 8 0 1 9 0 0 1 8 1 0 1 7 2 0 1 6 3 0 1 5 4 0 1 4 5 0 1 3 6 0 1 2 7 0 1 1 8 0 1 0 9 0 0 10 0 0 0 9 1 0 0 8 2 0 0 7 3 0 0 6 4 0 0 5 5 0 0 4 6 0 0 3 7 0 0 2 8 0 0 1 9 0 0 0 10

homework13=: 3 : 0
  sym_cum_return=. cum_return Prices
  sym_invest=. AllAllocs *"1 _ sym_cum_return
  fund_invest=. +/"2 sym_invest
  fund_cum_return=. cum_return"1 fund_invest
  fund_daily_return=. 0 ,"1 ret"1 fund_invest
  CR=. {:"1 cum_return"1 fund_invest
  ADR=. mean"1 fund_daily_return
  V=. risk"1 fund_daily_return
  SR=. sharpe"1 fund_daily_return
  A=. {. AllAllocs \: SR
  best_fund=. cum_return +/ A * sym_cum_return
  plot best_fund,:SPY
  A
)
