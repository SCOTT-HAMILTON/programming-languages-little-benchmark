#include <stdio.h>
#include <math.h>
#include <time.h>

typedef unsigned long long ULL;

const ULL max1 = 950;
const ULL maxLoop = 1000;
const ULL max2 = 38;

double result = 0.0;
ULL it_total = 0;

ULL *f( ULL *it_cur)
{
	if (*it_cur == max1){
		return it_cur;
	}
	(*it_cur)++;
	it_total++;
	result += (double)(sqrt(3123456.0/0.000123456)*cos(it_total)/sin(cos(it_total*it_total)*5));
	return f(it_cur);
}

ULL *f2( ULL *it_cur)
{
	if (*it_cur == max2){
		return it_cur;
	}
	ULL start = 0;
	
	for (size_t i = 1; i < maxLoop+1; i++){
		start = 0;
		f(&start);
	}
	printf("%f%%\n", (double)(*it_cur)*100.0/(double)(max2));
	(*it_cur)++;
	it_total++;
	return f2(it_cur);
} 

int main(){
	clock_t t = clock();
	puts("start !!!");
	ULL start = 0;
	f2(&start);
	
	printf("result : %f\n", result);
	printf("total iterations : %llu\n", it_total);
	
	clock_t time_exec = clock()-t;
	printf("time : %f", (double)(time_exec)/(double)(CLOCKS_PER_SEC));
	return 0;
}
