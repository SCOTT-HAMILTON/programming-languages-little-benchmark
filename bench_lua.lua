MAX1 = 950
MAXLOOP = 1000
MAX2 = 38

it_total = 0
result = 0.0

function recursive_1(it_cur)
	if it_cur == MAX1 then
		return
	end

	it_cur = it_cur+1
	it_total = it_total+1

	result = result + math.sqrt(3123456.0/0.000123456)*math.cos(it_total)/math.sin(math.cos(it_total*it_total)*5)
	return recursive_1(it_cur)
end

function recursive_2(it_cur) 
	if it_cur == MAX2 then
		return
	end
	for i = 1, MAXLOOP, 1 do
		recursive_1(0)
	end
	print(it_cur*100/MAX2)
	it_cur = it_cur+1
	it_total = it_total+1
	return recursive_2(it_cur)
end

print("STart!!")
recursive_2(0)
print("total iterations : ",it_total)
print("result : ",result)
