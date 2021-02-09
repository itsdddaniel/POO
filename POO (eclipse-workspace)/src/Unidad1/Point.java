package Unidad1;

public class Point 
{
	private int x;
	private int y;
	
	public Point(String pointAsString) 
	{
		pointAsString = pointAsString.trim();
		if(pointAsString.matches("\\d+,\\d+")) {
			String[] temporalPoint = pointAsString.split(",");
			this.x = Integer.parseInt(temporalPoint[0]);
			this.y = Integer.parseInt(temporalPoint[1]);
		}
		else
		{
			this.y=0;
			this.x=0;
		}
	}

	/**
	 * @return the x
	 */
	public int getX() {
		return x;
	}

	/**
	 * @return the y
	 */
	public int getY() {
		return y;
	}
}
