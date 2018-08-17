const MAX1 = 950
const MAXLOOP = 1000
const MAX2 = 38

let result = 0
let it_total = 0

let recursive_1 = (it_current) => {
	if (it_current == MAX1){
		return 1;
	}

	it_current++
	it_total++
	result += Math.sqrt(3123456.0/0.000123456)*Math.cos(it_total)/Math.sin(Math.cos(it_total*it_total)*5)
	return recursive_1(it_current)
};

let recursive_2 = (it_current) => {
	if (it_current == MAX2)return 1;
	for (var i = 0;  i < MAXLOOP; i++){
		recursive_1(0)
	}
	console.log(it_current*100/MAX2, "%")
	it_current++
	it_total++
	return recursive_2(it_current)
};

console.log("Start !!")
recursive_2(0)
console.log("total iterations : ",it_total)
console.log("result : ", result)
