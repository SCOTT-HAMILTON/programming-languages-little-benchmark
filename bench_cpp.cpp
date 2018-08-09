#include <cstdio>
#include <cmath>
#include <ctime>

using ULL = unsigned long long;

constexpr const ULL max1 = 950;
constexpr const ULL maxLoop = 1000;
constexpr const ULL max2 = 38;

double result = 0.0;
ULL it_total = 0;

const ULL &f( ULL &it_cur)
{
	if (it_cur == max1)return it_cur;
	it_cur++;
	it_total++;
	result += static_cast<double>(std::sqrt(3123456.0/0.000123456)*std::cos(it_total)/
	std::sin(std::cos(it_total*it_total)*5));
	
	return f(it_cur);
}

const ULL &f2( ULL &it_cur)
{
	if (it_cur == max2){
		return it_cur;
	}
	ULL start = 0;
	for (size_t i = 1; i < maxLoop+1; i++){
		start = 0;
		f(start);
	}
	std::printf("%f%%\n", static_cast<double>(it_cur)*100.0/static_cast<double>(max2));
	it_cur++;
	it_total++;
	return f2(it_cur);
} 

int main(){
	clock_t t = std::clock();
	std::puts("start !!!");
	ULL start = 0;
	f2(start);
	
	std::printf("result : %f\n", result);
	std::printf("total iterations : %ld\n", it_total);
	clock_t time_exec = clock()-t;
	std::printf("time : %f", static_cast<double>(time_exec)/static_cast<double>(CLOCKS_PER_SEC));
	return 0;
}