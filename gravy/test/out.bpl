procedure foo(n: int) returns (r: int)
  requires n >= 0;  
  ensures r<0; 
{
	r := n + 1;
}

procedure bar() returns (r: int)
{
	var x : int;
	var y : int;
	x:=3;
	call y := foo(x);
	r := y + 2;
}
