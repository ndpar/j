NB. Investment functions

load 'stats'

NB. Cumulative return, relative to first price
cumret=: (1 , }. % {.)"1

NB. Daily return
dailyret=: (1 , 2 %~/\ ])"1
dailyretp=: [: <: dailyret

NB. Total return
totret=: ({: % {.)"1

NB. Sharpe ratio is expected return value
NB. divided by standard deviation
sharpe=: ((%:@:#) * mean % stddevp)"1

NB. Sortino ratio only penalizes for negative
NB. volatility in the calculation of risk
risk=: stddevp"1
negative=: (#~ 0&>)"1
nrisk=: [: risk negative
sortino=: (%:@:#) * mean % nrisk

NB. =========================================================
NB. Examples

load 'plot'
load_y_ '~user/projects/yfinance.ijs'

NB.VAB=: price_y_ VAB_RAW=: ('2014-01-01';'2014-08-31') between_y_ read_csv_symbol_y_ 'VAB.TO'
NB.XEF=: price_y_ XEF_RAW=: ('2014-01-01';'2014-08-31') between_y_ read_csv_symbol_y_ 'XEF.TO'
NB.plot VAB,:XEF

NB.AAPL=: price_y_ AAPL_RAW=: read_csv_symbol_y_ 'AAPL'
NB.(i.5) { AAPL_RAW

NB.Symbols=: 'HNZ';'AXP';'HPQ';'IBM'
NB.Dates=: '2010-01-01';'2010-12-31'
NB.portfolio 1.0 0.0 0.0 0.0

NB.Symbols=: 'BRCM';'ADBE';'AMD';'ADI'
NB.Dates=: '2011-01-01';'2011-12-31'
NB.portfolio 0 0 0 1

Symbols=: 'AAPL';'GLD';'GOOG';'XOM'
Dates=: '2011-01-01';'2011-12-31'
NB.portfolio 0.4 0.4 0.0 0.2

Prices=: > (Dates&read_price_y_)&.> Symbols

NB. Portfolio stats for given allocation
portfolio=: 3 : 0
  P=. +/ y * Prices
  DR=. dailyretp P
  SR=. sharpe DR
  V=. stddevp DR
  ADR=. mean DR
  CR=. totret P
  k=. 'Start Date';'End Date';'Symbols';'Allocations'
  k=. k,'Sharpe Ratio';'Volatility';'Average Daily Return';'Cumulative Return'
  v=. (> {. Dates);(> {: Dates);Symbols;y
  v=. v,(14j11 ": SR);(17j14 ": V);(18j15 ": ADR);(14j11 ": CR)
  k ,. v
)

AllAllocs=: 0.1 * 286 4 $ 10 0 0 0 9 1 0 0 9 0 1 0 9 0 0 1 8 2 0 0 8 1 1 0 8 1 0 1 8 0 2 0 8 0 1 1 8 0 0 2 7 3 0 0 7 2 1 0 7 2 0 1 7 1 2 0 7 1 1 1 7 1 0 2 7 0 3 0 7 0 2 1 7 0 1 2 7 0 0 3 6 4 0 0 6 3 1 0 6 3 0 1 6 2 2 0 6 2 1 1 6 2 0 2 6 1 3 0 6 1 2 1 6 1 1 2 6 1 0 3 6 0 4 0 6 0 3 1 6 0 2 2 6 0 1 3 6 0 0 4 5 5 0 0 5 4 1 0 5 4 0 1 5 3 2 0 5 3 1 1 5 3 0 2 5 2 3 0 5 2 2 1 5 2 1 2 5 2 0 3 5 1 4 0 5 1 3 1 5 1 2 2 5 1 1 3 5 1 0 4 5 0 5 0 5 0 4 1 5 0 3 2 5 0 2 3 5 0 1 4 5 0 0 5 4 6 0 0 4 5 1 0 4 5 0 1 4 4 2 0 4 4 1 1 4 4 0 2 4 3 3 0 4 3 2 1 4 3 1 2 4 3 0 3 4 2 4 0 4 2 3 1 4 2 2 2 4 2 1 3 4 2 0 4 4 1 5 0 4 1 4 1 4 1 3 2 4 1 2 3 4 1 1 4 4 1 0 5 4 0 6 0 4 0 5 1 4 0 4 2 4 0 3 3 4 0 2 4 4 0 1 5 4 0 0 6 3 7 0 0 3 6 1 0 3 6 0 1 3 5 2 0 3 5 1 1 3 5 0 2 3 4 3 0 3 4 2 1 3 4 1 2 3 4 0 3 3 3 4 0 3 3 3 1 3 3 2 2 3 3 1 3 3 3 0 4 3 2 5 0 3 2 4 1 3 2 3 2 3 2 2 3 3 2 1 4 3 2 0 5 3 1 6 0 3 1 5 1 3 1 4 2 3 1 3 3 3 1 2 4 3 1 1 5 3 1 0 6 3 0 7 0 3 0 6 1 3 0 5 2 3 0 4 3 3 0 3 4 3 0 2 5 3 0 1 6 3 0 0 7 2 8 0 0 2 7 1 0 2 7 0 1 2 6 2 0 2 6 1 1 2 6 0 2 2 5 3 0 2 5 2 1 2 5 1 2 2 5 0 3 2 4 4 0 2 4 3 1 2 4 2 2 2 4 1 3 2 4 0 4 2 3 5 0 2 3 4 1 2 3 3 2 2 3 2 3 2 3 1 4 2 3 0 5 2 2 6 0 2 2 5 1 2 2 4 2 2 2 3 3 2 2 2 4 2 2 1 5 2 2 0 6 2 1 7 0 2 1 6 1 2 1 5 2 2 1 4 3 2 1 3 4 2 1 2 5 2 1 1 6 2 1 0 7 2 0 8 0 2 0 7 1 2 0 6 2 2 0 5 3 2 0 4 4 2 0 3 5 2 0 2 6 2 0 1 7 2 0 0 8 1 9 0 0 1 8 1 0 1 8 0 1 1 7 2 0 1 7 1 1 1 7 0 2 1 6 3 0 1 6 2 1 1 6 1 2 1 6 0 3 1 5 4 0 1 5 3 1 1 5 2 2 1 5 1 3 1 5 0 4 1 4 5 0 1 4 4 1 1 4 3 2 1 4 2 3 1 4 1 4 1 4 0 5 1 3 6 0 1 3 5 1 1 3 4 2 1 3 3 3 1 3 2 4 1 3 1 5 1 3 0 6 1 2 7 0 1 2 6 1 1 2 5 2 1 2 4 3 1 2 3 4 1 2 2 5 1 2 1 6 1 2 0 7 1 1 8 0 1 1 7 1 1 1 6 2 1 1 5 3 1 1 4 4 1 1 3 5 1 1 2 6 1 1 1 7 1 1 0 8 1 0 9 0 1 0 8 1 1 0 7 2 1 0 6 3 1 0 5 4 1 0 4 5 1 0 3 6 1 0 2 7 1 0 1 8 1 0 0 9 0 10 0 0 0 9 1 0 0 9 0 1 0 8 2 0 0 8 1 1 0 8 0 2 0 7 3 0 0 7 2 1 0 7 1 2 0 7 0 3 0 6 4 0 0 6 3 1 0 6 2 2 0 6 1 3 0 6 0 4 0 5 5 0 0 5 4 1 0 5 3 2 0 5 2 3 0 5 1 4 0 5 0 5 0 4 6 0 0 4 5 1 0 4 4 2 0 4 3 3 0 4 2 4 0 4 1 5 0 4 0 6 0 3 7 0 0 3 6 1 0 3 5 2 0 3 4 3 0 3 3 4 0 3 2 5 0 3 1 6 0 3 0 7 0 2 8 0 0 2 7 1 0 2 6 2 0 2 5 3 0 2 4 4 0 2 3 5 0 2 2 6 0 2 1 7 0 2 0 8 0 1 9 0 0 1 8 1 0 1 7 2 0 1 6 3 0 1 5 4 0 1 4 5 0 1 3 6 0 1 2 7 0 1 1 8 0 1 0 9 0 0 10 0 0 0 9 1 0 0 8 2 0 0 7 3 0 0 6 4 0 0 5 5 0 0 4 6 0 0 3 7 0 0 2 8 0 0 1 9 0 0 0 10

NB. Find allocation with highest Sharpe ratio
bestalloc=: 3 : 0
  Ps=. +/"2 AllAllocs *"1 _ Prices
  DRs=. dailyretp Ps
  SRs=. sharpe DRs
  {. AllAllocs \: SRs
)

SPY=: Dates read_price_y_ 'SPY'

NB. Plot given allocation and
NB. compare it to SPY
plot_with_spy=: 3 : 0
  CR=. cumret +/"2 y *"1 _ Prices
  CRSPY=. cumret SPY
  plot CR,:CRSPY
  {: CR
)