package Unidad2;

public class InputTag 
{
	private String name;
	private String id;
	private String placeholder;
	
	public InputTag(String name, String id, String placeholder)
	{
		this.name = name;
		this.id = id;
		this.placeholder = placeholder;
	}
	
	public String print()
	{
		return String.format("<nput name=`%s` id=`%s` placeholder=`%s`>",this.name,this.id,this.placeholder);
	}

	public String getName() 
	{
		return name;
	}

	public String getId() 
	{
		return id;
	}

	public String getPlaceholder() 
	{
		return placeholder;
	}
}
