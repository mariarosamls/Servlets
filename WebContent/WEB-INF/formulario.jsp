<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.senati.web.jsps.servlets.vo.VOLogin"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link 
	rel="stylesheet"
	type="text/css" 
	href="css/bootstrap.min.css">
<script 
	src="js/bootstrap.min.js">
</script>
</head>
<body>
	<div class="container">
		<div class="row">			
			<div class="col-md-2">
								
			</div>
			<div class="col-md-8">
				<h2 class="text-center">Sistema</h2>
				<p class="text-center">		
					<%= ((VOLogin)session.getAttribute("usuarioLogueado")).getUsuario() %>
				</p>
				<br>
				<a href="productos/productos.jsp">Administración de Productos</a>
			</div>
			<div class="col-md-2">
								
			</div>
			
		</div>	
	</div>

</body>
</html>