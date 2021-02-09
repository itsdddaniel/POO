<%@page import="Unidad2.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    
    User user = new User();
    user.setName("Daniel");
    user.setPassword("roy");
    
    session.setAttribute("user",user);
    session.setAttribute("form", "");
    session.setAttribute("temporal", "");
    session.setAttribute("shop", "");
    response.sendRedirect("page2.jsp");
    
    %>