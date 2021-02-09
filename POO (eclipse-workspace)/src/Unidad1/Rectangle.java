package Unidad1;

public class Rectangle 
{
	
	public Rectangle() {}
	
	public String draw(Point p, int h, int w, String color, int zIndex) 
	{
		StringBuilder result = new StringBuilder(String.format("<div style='border:1px solido black;background-color:%s;"
				+ "position:fixed;top:%svh;left:%svw;width:%svw;height:%svh;z-index:%s'>&nbsp;</div>", 
					color,
					p.getY(),
					p.getX(),
					h,
					w,
					zIndex
					));
		return result.toString();
	}
	public String draw(Point pointA, Point pointB,String color,int zIndex) 
	{
		int h = pointB.getY() - pointA.getY();
		int w = pointB.getX() - pointA.getX();
		return this.draw(pointA,h,w,color,zIndex);
	}
	public String draw(Point p, int h, int w, String color,int zIndex,int times) 
	{
		if(times < 1)
		{
			return this.draw(p, h, w, color,zIndex);
		}
		Point newP = new Point(String.format("%s,%s", p.getX()+2,p.getY()+2));
		return this.draw(p, h, w, color,zIndex).replace("&nbsp;", this.draw(newP,h,w,color,zIndex-1,times-1));
	}	
		StringBuilder result = new StringBuilder(String.format("<div style='border:1px solido black;background-color:%s;"
				+ "position:fixed;top:%svh;left:%svw;width:%svw;height:%svh;'>&nbsp;</div>", 
					color,
					p.getY(),
					p.getX(),
					h,
					w
					));
		return result.toString();
	}
	
}
