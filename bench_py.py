import numpy

max1 = numpy.uint64(950);
maxLoop = numpy.uint64(1000);
max2 = numpy.uint64(38);

print("sets : ");
print ("max1 : ",max1);
print("maxLoop : ",maxLoop);
print("max2 : ", max2);

def f(it_cur, it_total, result):
	if (it_cur == max1):
		return it_cur
	it_cur+=1
	it_total+=1
	result += numpy.float64(numpy.sqrt(3123456.0/0.000123456)*numpy.cos(it_total)/
	numpy.sin(numpy.cos(it_total*it_total)*5));
	return f(it_cur, it_total, result);
	
def f2(it_cur, it_total, result):
	if (it_cur == max2):
		return it_cur
	start = numpy.uint64(0);
	for i in range(maxLoop):
		i+=1
		start = numpy.uint64(0);
		f(start, it_total, result);
		
	print(numpy.float64(it_cur)*100.0/numpy.float64(max2),"%");
	it_cur+=1
	it_total+=1
	return f2(it_cur, it_total, result);

print("start !!!");
start = numpy.uint64(0);
result = numpy.float64(0);
it_total = numpy.uint64(0)
f2(start, it_total, result);

print("result : ",result);
print("total iterations : ",it_total);