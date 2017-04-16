#write your code here
def add(m,n)
	m+n
end

def subtract(m,n)
	m-n
end

def sum(array)
	array.inject(0, :+)
end

def sum1(array)
	tot=0
	array.each {|i| tot +=i}
	return tot
end
