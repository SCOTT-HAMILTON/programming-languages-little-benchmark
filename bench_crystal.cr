include Math

MAX1 = 950
MAXLOOP = 1000
MAX2 = 38

it_total = 0
result = 0

return_val = recursive_2(0, it_total, result)

it_total = return_val[0]
result = return_val[1]

puts("total iterations : #{it_total}")
puts("result : #{result}")

def recursive_1(it_cur, it_total, result)
	if it_cur == MAX1
		return {it_total, result}
	end
	
	it_cur+=1
	it_total+=1
	result += sqrt(3123456.0/0.000123456)*cos(it_total)/sin(cos(it_total*it_total)*5)
	return recursive_1(it_cur, it_total, result)
end

def recursive_2(it_current, it_total, result)
	if it_current == MAX2
		return {it_total, result}
	end
	i = 0
	while (i < MAXLOOP)
		return_val = recursive_1(0, it_total, result)
		it_total = return_val[0]
		result = return_val[1]
		i+=1
	end
	puts("#{it_current*100/MAX2}%")
	it_current+=1
	it_total+=1


	return recursive_2(it_current, it_total, result)
end
