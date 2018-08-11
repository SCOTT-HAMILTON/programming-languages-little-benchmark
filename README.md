# programming-languages-little-benchmark
A little benchmark comparing the runtime speed of C , C++, Python Rust  and others.

Credits:
Big thanks to Absolute-Code for his great help on Rust and the scala's code! 

####RESULTS : 

this is all average timing done
on a Toshiba tecra S11-114
made of an intel core i7 @620M, NVS 2100M and 4Go DDR3 of ram


####WIndows 7 PRO
| language benched| execution time         | comments  |
| ------------------------|---------------------------|----------------|
|python                    |      8min 7s
|c++                        |       5,4644 s
|   c                           |       5,182 s
| rust                        |   4,8419283258 s

####Ubuntu 18.04
| language benched| execution time                    | comments            |
| ------------------------|------------------------------------|----------------          |
|  python                  |                  5m23,214s        |Python 3.4 numpy|
|  c++                      |                  6,139s                | Clang 6                 |
|  c                            |                 5,951s	              |Clang 6                  |
|  rust	                 |                 7,0702s              | rust 1.28.0            |
| Crystal                   |                  5.4168s             |Crystal 0.25.1        |

Wanted output : 
```
result : 281726329711.800900
total iterations : 36100038
```
