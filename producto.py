def multiplicar(a, b):
	producto = 0
	for i in xrange(0,b):
		producto += a
	return producto

def exponencial(base, exp):
	total = 1
	for i in xrange(0,exp):
		total = multiplicar(base,total)
	return total

def eval_pol(coef, exp, x):
	total = 0
	for i in xrange(0,len(coef)):
		total += multiplicar(coef[i], exponencial(x,exp[i]))
	return total

def factorial(num):
	if num <= 1:
		return 1
	else:
		return num*factorial(num-1)

print factorial(4)