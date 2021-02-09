<%@page import="Unidad2.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    
    User user = (User) session.getAttribute("user");
    
    %>
    
    Bienvenido <%=user.getName()%>