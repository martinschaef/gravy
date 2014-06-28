

procedure doWhile(N : int) 
{
  var n : int;
	root:
		n := 0;
		goto preloop;
	preloop:
		n := n + 1;
		goto loophead;
	loophead:
		goto loopexit, loopbody;
	loopbody:
		assume (n <= N);
		goto preloop;
	loopexit:
		assume (n > N);
		goto unifiedexit;
	unifiedexit:
		return;
}