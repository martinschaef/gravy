
procedure loop1 ( a : int, b : int, c : int ) {
	var x : int;
	var y : int;
	x := a;
	y := b;	
	 
	 loopHead:
	 	if (y<=0) { 
	 		goto loopExit;
	 	}
	 	y := y - 1;

	 	if (c==0) {
	 		x:=0;
	 		return;
	 	}
	 		 	x := x + 3;
	 	goto loopHead;
	 loopExit:
	 	if (x==0) {
	 		return;
	 	} else {	 		
	 		return;
	 	}
}
