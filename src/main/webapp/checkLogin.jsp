<%@page import="com.jacaranda.UtilUsers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
	String usuario = request.getParameter("user");
   	String password = request.getParameter("password");
            	
    
    
    if(usuario !=null && password !=null){
    	if(UtilUsers.userAdminIsValid(usuario, password)){
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
         	response.sendRedirect(request.getContextPath() + "/Index");
       		
    		
            		
    	} else { 
       		response.sendRedirect("error.jsp?msg_error=true");
  	 	}
	 } 
%>
</body>
</html>