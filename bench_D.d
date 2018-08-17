immutable ulong MAX1 = 950;
immutable ulong MAXLOOP = 1000;
immutable ulong MAX2 = 38;

ulong it_total = 0;
real result = 0;

import std.math, std.stdio;

void recursive_1(ulong *it_cur)
{
	if (*it_cur == MAX1)return;
	(*it_cur)++;
	it_total++;
	real tmp_tot = cast(real)it_total;
	result += sqrt(3123456.0/0.000123456)*cos(tmp_tot)/sin(cos(tmp_tot*tmp_tot)*5);	
	return recursive_1(it_cur);
}

void recursive_2(ulong *it_cur){
	if (*it_cur == MAX2)return;
	for (size_t i = 0; i < MAXLOOP; i++){
		ulong start = 0;
		recursive_1(&start);	
	}
	writeln((*it_cur)*100/MAX2, "%");
	it_total++;
	(*it_cur)++;
	return recursive_2(it_cur);
}

void main()
{
	writeln("Start!!!");
	ulong start = 0;
	recursive_2(&start);
	writeln("total iterations : ", it_total);
	writeln("result : ",result);
}
