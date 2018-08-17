const MAX1 = int(950)
const MAXLOOP = int(1000)
const MAX2 = int(38)

var it_total = int(0)
var resultat = float(0)

import math

proc recursive_1(it_cur: var int): int = 
  if it_cur == MAX1:
    return 1
  
  it_cur+=1
  it_total+=1
  let tot_f = float64(it_total)
  let c = float(10)
  resultat += sqrt(3123456.0/0.000123456)*cos(tot_f)/sin(cos(tot_f*tot_f)*5)
  return recursive_1(it_cur)

proc recursive_2(it_cur: var int): int =
  if it_cur == MAX2:
    return 1
  for i in 1 .. MAXLOOP:
    var start = 0
    var n = recursive_1(start)
  echo it_cur*100/MAX2,"%"
  it_total+=1
  it_cur+=1
  return recursive_2(it_cur)  

echo "Start!!"
var start = int(0)
var n = recursive_2(start)
echo "total iterations : ",it_total
echo "result : ",resultat
