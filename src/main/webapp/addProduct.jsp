<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mvp.css">
</head>
<body>
<div id="header">
<a href="Index"><img src="images/iconoSinFondo.png" width="150px" height="120px" id="logo"></a>
    	
</div>
	<div id="addElement">
	<form action="" method="Post">
	<h1>Add Product:</h1>
		<label>Name:</label>
		<input type="text" name="nameProduct" required>
		<label>Description</label>
		<textarea name="descriptionProduct" placeholder="Escribe aqui la descripcion" required>
		</textarea>
		<label>Price</label>
		<input type="number" step="any" name="priceProduct" required>
		<label>Image</label>
		<input type="file" name="fileProduct" required>
		<input type="submit" name="send" value="Send">
	</form>	
	</div>
	

</body>
</html>