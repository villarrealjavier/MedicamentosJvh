<%@page import="com.jacaranda.Item"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.jacaranda.Carrito"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito Jsp</title>
<link rel="stylesheet" type="text/css" href="css/grid.css">
</head>
<body>
<div class="header">
<form action="ListMedicine" method="post">
	<div class="izq">
			<button><img src="images/iconoSinFondo.png" width="120px" height="80px" id="logo"></button>
	</div>
	<div class="der">
		<h1 class="tit" align="center">MEDICAMENTOS JVH</h1>
	</div>
	</form>
</div>
<div class="grid-container">
<!-- <form action="" method="POST"> -->
<%
Carrito c = (Carrito) session.getAttribute("carrito");
Iterator<Item> iterador = c.getListShopping().iterator();

while(iterador.hasNext()){%>
<%Item it = iterador.next(); %>
        <div class="card">
            <div class="titulo">
                <h1>Medicina: </h1>
            </div>
            <div class="texto"><p align="center"><b>Nombre:</b> <%=it.getMedicine().getName() %><br>
            <b>Cantidad </b><input type="number" name="cant" min=1 max=50 default=1 required></p></div>
        </div>
        <%} %>
        <button type="submit" name="enviar">Buy now</button>
        
 </div>

</body>
</html>