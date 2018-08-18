import 'dart:math';

const int MAX1 = 950;
const int MAXLOOP = 1000;
const int MAX2 = 38;

int it_total = 0;
double result = 0.00;

void recursive_1(int it_cur){
	if (it_cur == MAX1)return;
	it_cur++;
	it_total++;
	result += sqrt(3123456.0/0.000123456)*cos(it_total)/sin(cos(it_total*it_total)*5);
	return recursive_1(it_cur);
}

void recursive_2(int it_cur){
	if (it_cur == MAX2)return;
	for (int i = 0; i < MAXLOOP; i++){
		recursive_1(0);
	}
	print("${it_cur*100/MAX2}%");
	it_cur++;
	it_total++;
	return recursive_2(it_cur);
}

void main (){
	print("start !!");
	recursive_2(0);
	print("total iterations : $it_total");
	print("result : $result");
}

