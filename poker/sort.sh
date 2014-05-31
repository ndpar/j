#!/usr/bin/jc

load 'poker.ijs'

read=: ];._2@:fread
eval=: [: poker hand
sort=: \: eval"1

echo sort read 'hands.txt'
exit ''
