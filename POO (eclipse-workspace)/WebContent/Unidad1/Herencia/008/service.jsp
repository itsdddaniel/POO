<%@page import="Unidad1.Validator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>
	<body>
		<%
		if( request.getParameter("htmlTAG") != null &&
			request.getParameter("htmlTAG").toString().trim().matches("((0)|(1)|(2)|(3))") &&
			request.getParameter("htmlContent") != null
		  )
		{
			Validator validator = new Validator();			
			int htmlTag = Integer.parseInt(request.getParameter("htmlTAG").trim().toString());
			String htmlContent = validator.cleanHTMLContent(request.getParameter("htmlContent").toString());
			
			if(htmlTag == 0)
			{
				SpanTag span = new SpanTag(htmlContent);
				span.setStyle("color:green;");
				out.print(span.print());
			}else
				if(htmlTag == 1)
				{
					ParagraphTag p = new ParagraphTag(htmlContent);
					p.setStyle("color:red;");
					out.print(p.print());			
				}else
					if(htmlTag == 2)
					{
						AnchorTag a = new AnchorTag("index.jsp",htmlContent);
						a.setStyle("color:red;");
						out.print(a.print());
					}else{
						DivTag div = new DivTag(htmlContent);
						div.setStyle("color:green;");
						out.print(div.print());
					}
			
		}
		else
		{
			out.print("totalmente increible que queras mandar html wey");	
		}
		%>
		
		<%!
			public class HTMLTag
			{
				protected String name;
				protected String style;
				protected String content;
				
				public HTMLTag(){
					this.name = "";
					this.style = "";
					this.content = "";
				}
				public HTMLTag(String name,String style,String content)
				{
					this.name = name;
					this.style = style;
					this.content = content;
				}
				
				public void setContent(String content){}
				public void setName(String name){}
				public void setStyle(String style){}
				public String getContent(){return this.content;}
				public String getName(){return this.name;}
				public String getStyle(){return this.style;}
				
				public String print()
				{
					StringBuilder styleTag = new StringBuilder("");
					if(this.style.length() >0)
					{
						styleTag.append(" style='");
						styleTag.append(this.content);
						styleTag.append("'");
					}
					StringBuilder result = new StringBuilder(String.format("<%s%s>",this.name,styleTag.toString()));
					result.append(this.content);
					result.append(String.format("<%s>",this.name));
					return result.toString();
				}
			}
		
		%>
		<%!
			public class ParagraphTag extends HTMLTag
			{
				public ParagraphTag()
				{
					this.name="p";	
				}
				public ParagraphTag(String content)
				{
					this.name="p";
					this.content = content;
				}
			}
		%>
		<%!
			public class SpanTag extends HTMLTag
			{
				public SpanTag()
				{
					this.name="span";	
				}
				public SpanTag(String content)
				{
					this.name="span";
					this.content = content;
				}
			}
		%>
		<%!
			public class AnchorTag extends HTMLTag
			{
				private String href;
				public AnchorTag()
				{
					this.name="a";	
					this.href="";
				}
				public AnchorTag(String content)
				{
					this.name="a";
					this.href="";
					this.content = content;
				}
				public AnchorTag(String href,String content)
				{
					this.name="a";
					this.href="";
					this.content = content;
				}
				public String print()
				{
					StringBuilder styleTag = new StringBuilder("");
					StringBuilder hrefTag = new StringBuilder("");
					if(this.style.length() >0)
					{
						styleTag.append(" style='");
						styleTag.append(this.content);
						styleTag.append("'");
					}
					if(this.href.length()>0)
					{
						hrefTag.append(String.format(" href='%s'",this.href));
					}
					StringBuilder result = new StringBuilder(String.format("<%s%s%s>",this.name,styleTag.toString(),hrefTag.toString()));
					result.append(this.content);
					result.append(String.format("<%s>",this.name));
					return result.toString();
				}
			}
		%>
		<%!
			public class DivTag extends HTMLTag
			{
				public DivTag()
				{
					this.name = "div";
				}
				public DivTag(String content)
				{
					this.name = "div";
					this.content = content;
				}
			}
		
		%>
	</body>
</html>