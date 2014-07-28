
procedure loop1 ( x : int ) {
	var y : int;
	 y := x;
	 
	 loopHead:
	 	if (y<=0) { 
	 		goto loopExit;
	 	}
	 	y := y - 1;
	 	goto loopHead;
	 loopExit:
	 	if (y<=0) {
	 		return;
	 	} else {	 		
	 		return; //infeasible
	 	}
}