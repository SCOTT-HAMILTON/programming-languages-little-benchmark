const MAX1 = 950
const MAXLOOP = 1000
const MAX2 = 38

function recursive_1(it_cur::UInt64, total::Array{UInt64}, result::Array{Float64})
	if it_cur == MAX1
		return 1
	end
	it_cur += 1
	total[1] += 1
	result[1] += sqrt(3123456.0/0.000123456)*cos(total[1])/sin(cos(total[1]*total[1])*5)
	return recursive_1(it_cur, total, result)
		
end

function recursive_2(it_cur::UInt64, total::Array{UInt64}, result::Array{Float64})
	if it_cur == MAX2
		return 1
	end
	for i in 1:MAXLOOP
		x = 0
		recursive_1(convert(UInt64, x), total, result)
	end
	println(it_cur*100/MAX2,"%")
	total[1]+=1
	it_cur+=1
	return recursive_2(it_cur, total, result)
end

it_total = convert(Array{UInt64}, [0])
result = convert(Array{Float64}, [0])

println("Start !!!");
x = 0
recursive_2(convert(UInt64, x), it_total, result)
println("total iterations : ", it_total[1])
println("result : ", result[1])
