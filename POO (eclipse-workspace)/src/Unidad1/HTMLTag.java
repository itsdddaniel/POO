package Unidad1;

public class HTMLTag
{
	protected String name;
	protected String style;
	
	public HTMLTag(){}
	
	public HTMLTag(String name,String style)
	{
		this.name = name;
		this.style = style;
	}
	
	public void setName(String name){}
	public void setStyle(String style){}
	public String getName(){return this.name;}
	public String getStyle(){return this.style;}
}

