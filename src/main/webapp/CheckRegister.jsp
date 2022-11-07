<%@page import="com.jacaranda.CRUDUser"%>
<%@page import="com.jacaranda.Users"%>
<%@page import="com.jacaranda.EncriptarMD5"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checking Register</title>
</head>
<body>
<%String user= String.valueOf(request.getParameter("username"));
String pass = String.valueOf(request.getParameter("passwordR"));
String first= String.valueOf(request.getParameter("first"));
String last= String.valueOf(request.getParameter("last"));
LocalDate birthday= LocalDate.parse(String.valueOf(request.getParameter("birth")));
String gender = String.valueOf(request.getParameter("gender"));
int admin = Integer.valueOf(request.getParameter("admin"));

String passEncript = EncriptarMD5.getMD5(pass);

Users u = new Users(user,passEncript,admin,first,last,birthday,gender);
CRUDUser.saveUser(u);
response.sendRedirect("Login.jsp");
%>

</body>
</html>