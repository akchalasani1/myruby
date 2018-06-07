# Methods as Arguments

def add(a, b)
	a + b
end

def sub(a, b)
	a - b
end

def mul(num1, num2)
	num1 * num2
end

# add(10,5)
# sub(10,5)

p mul(add(10,5), sub(10,5))		# methods add and sub as arguments.

