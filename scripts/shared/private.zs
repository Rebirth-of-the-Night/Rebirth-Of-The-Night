#priority 9999
// these are classes meant for use in utility functions n stuff ONLY! do not use them outside of the shared folder!!!

zenClass Combination {
	var set as string[][] = [];
	var out as string[] = [];
	
	zenConstructor(){
	}
	
	function concat(str as string[][]) as string[] {
		this.set = str;
		
		recConcat(0,"");
		return this.out;
	}
	
		// recursively concatenates; ensures that any number of different string arrays can be
		// combined together
	function recConcat(k as int, c as string) as void {
		var s = this.set;
		if(k == s.length) {
			this.out += c;
			return;
		}
		
		for i in 0 to s[k].length {
			recConcat(k + 1, c~s[k][i]);
		}
	}
}
