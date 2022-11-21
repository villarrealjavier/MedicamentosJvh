<%@page import="com.jacaranda.Carrito"%>
<%@page import="java.util.List"%>
<%@page import="com.jacaranda.Medicine"%>
<%@page import="com.jacaranda.CRUDMedicine"%>
<%@page import="com.jacaranda.Item"%>
<%@page import="com.jacaranda.purchase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>
</head>
<body>
	<%String name = String.valueOf(request.getParameter("value"));
	Medicine m = CRUDMedicine.getMedicineName(name).get(0);
	Item i = new Item(1, m,m.getPrice()); 
	Carrito c = (Carrito) session.getAttribute("Carrito");
	c.addItem(i);%>
	


</body>
</html>