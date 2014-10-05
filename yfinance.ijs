NB. Working with Yahoo!Finance CSV files

load 'tables/csv'

strtodayno=: [: todayno getdate

data_dir=: '~/projects/qstk/yahoo/'

NB. Read CSV file for given path string
read_csv=: |. @: }. @: readcsv @: jpath

NB. Read CSV file for given stock symbol
NB. Example:
NB. AAPL=. read_csv_symbol 'AAPL'
read_csv_symbol=: read_csv @: (data_dir&,) @: (,&'.csv')

NB. Columns in Yahoo!Finance CSV file
date=:      0&{"1
open=:      1&{"1
high=:      2&{"1
low=:       3&{"1
close=:     4&{"1
volume=:    5&{"1
adj_close=: 6&{"1

date_close=: date ,. adj_close
dayno=: strtodayno @: > @: {."1

between=: 4 : 0
  'from to' =. strtodayno"1 > x
  dates=. dayno y
  filter=. from&<: *. to&>:
  i=. filter dates
  i # y
)

price=: ". @: > @: adj_close

NB. Read prices for given date range and stock symbol
NB. Example:
NB. AAPL=. ('2011-01-01';'2011-12-31') read_price 'AAPL'
read_price=: price@:between [: read_csv_symbol ]