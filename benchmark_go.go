package main

import (
	"fmt"
	"math"
)

const (
	MAX1    = 950
	MAXLOOP = 1000
	MAX2    = 38
)

var result float64 = 0.0
var itTotal uint64 = 0

func main() {
	fmt.Println("MAX 1 :", MAX1)
	fmt.Println("MAXLOOP :", MAXLOOP)
	fmt.Println("MAX 2 :", MAX2)

	fmt.Println("Start ! :")

	rec2(0)

	fmt.Println("result :", result)
	fmt.Println("total iterations :", itTotal)
}

func rec(itCur int) int {
	if itCur == MAX1 {
		return itCur
	}

	itCur++
	itTotal++

	result += math.Sqrt(3123456.0/0.000123456) * math.Cos(float64(itTotal)) / math.Sin(math.Cos(float64(itTotal*itTotal))*5)
	return rec(itCur)
}

func rec2(itCur int) int {
	if itCur == MAX2 {
		return itCur
	}
	for i := 1; i < MAXLOOP+1; i++ {
		rec(0)
	}
	fmt.Println(fmt.Sprint(itCur*100/MAX2, "%"))
	itCur++
	itTotal++
	return rec2(itCur)
}
