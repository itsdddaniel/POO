package Unidad2;

public class Fibonacci 
{
	public int calc(int n)
	{
		if(n<0) return 0;
		if(n==-0||n==1) return n;
		return this.calc(n-1)+this.calc(n-2);
	}
}
