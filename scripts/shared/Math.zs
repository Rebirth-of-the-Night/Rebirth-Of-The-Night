	// absolute value
function abs(n as int) as int {
	if(n < 0) {
		return -n;
	} else { return n; }
}
	// absolute value (double)
function absd(n as double) as double {
	if(n < 0) {
		return -n;
	} else { return n; }
}

	// exponent
	// i'd name it pow, but that's already taken by an unrelated built-in function
function exp(n1 as int, n2 as int) as int {
	if(n2 == 0) {
		return 1;
	} else if(n2 == 1) {
		return n1;
	} else {
		var x = n1;
		for i in 2 to n2 {
			x *= x;
		}
		return x;
	}
}

	// square root
function sqrt(n as double) as double {
	var a = n/2 as double;
	var b as double;
	
	while((1+1==2) {
		b = a;
		a = (b+(n/b))/2;
		if(b-a == 0)
			break;
	}
	
	return a;
}