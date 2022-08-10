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
String address=request.getParameter("address");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String quantity=request.getParameter("quantity");
String unit=request.getParameter("unit");
String date=request.getParameter("date");
String idnumber=request.getParameter("idnumber");

%>
<%@ include file="config.jsp" %>
<% 
PreparedStatement ps;
String sql="INSERT INTO customer(name,address,email,phone,quantity,unit,dates,idnumber)values(?,?,?,?,?,?,?,?)";
ps=conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, address);
ps.setString(3, email);
ps.setString(4, phone);
ps.setString(5, quantity);
ps.setString(6, unit);
ps.setString(7, date);
ps.setString(8, idnumber);
int i=ps.executeUpdate();
if(i>0)
{
	out.println("<script>alert('Data has been inserted ');window.location='add-client.jsp';</script>");
}
else
{
	out.println("<script>alert('Data has not been inserted');window.location='add-client.jsp';</script>");
}
%>