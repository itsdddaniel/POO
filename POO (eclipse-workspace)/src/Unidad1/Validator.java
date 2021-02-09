package Unidad1;

public class Validator {

	public String cleanUserName(String userName) {
		userName = userName.trim().replaceAll("[^\\w]+", "");
		return userName;
	}
	
	public int cleanAge(String age) {
		
		age = age.trim().replaceAll("\\D", "");
		return Integer.parseInt(age);
	}
	
	public String cleanHTMLContent(String htmlContent)
	{
		htmlContent = htmlContent.trim().replaceAll("</?[^>]+>", "");
		return htmlContent;
	}
	
	public int maxInt(String numericValue, int min, int max) 
	{
		numericValue = numericValue.trim();
		if(numericValue.matches("\\d+")) 
		{
			int number = Integer.parseInt(numericValue);
			if(number >= min && number <= max) 
			{
				return number;
			}
		}
		return 0;
	}
	public String color(String color)
	{
		color = color.trim();
		if(color.matches("(([a-z]{3,8})"))
		{
			return color;
		}
		if(color.matches("([\\da-f]{2}){3}"))
		{
			return String.format("#%s", color);
		}
		return "red";
	}
	
}
