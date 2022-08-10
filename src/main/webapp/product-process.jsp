<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
String name=request.getParameter("name");
String quantity=request.getParameter("quantity");


%>
<%@ include file="config.jsp" %>
<% 
PreparedStatement ps;
String sql="INSERT INTO product(name,quantity)values(?,?)";
ps=conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, quantity);
int i=ps.executeUpdate();
if(i>0)
{
	out.println("<script>alert('Data has been inserted ');window.location='add-product.jsp';</script>");
}
else
{
	out.println("<script>alert('Data has not been inserted');window.location='add-product.jsp';</script>");
}
%>