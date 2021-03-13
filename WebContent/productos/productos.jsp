<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.senati.web.jsps.servlets.vo.VOLogin"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Control de Productos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link 
		rel="stylesheet"
		type="text/css" 
		href="../css/bootstrap.min.css">
	<script 
		src="../js/bootstrap.min.js">
	</script>
	<script>
		function guardar(){
			var forma = document.getElementById("formaUsuarios");
			forma.action = "../adminProductos.servlet";
			var accion = document.getElementById("accion");
			accion.value="guardar";
			forma.submit();
		}
		function actualizar(){
			var forma = document.getElementById("formaUsuarios");
			forma.action = "../adminProductos.servlet";
			var accion = document.getElementById("accion");
			accion.value="actualizar";
			forma.submit();
		}
		function eliminar() {
			var forma = document.getElementById("formaUsuarios");
			forma.action = "../adminProductos.servlet";
			var accion = document.getElementById("accion");
			accion.value="eliminar";
			forma.submit();
		}
		
		function carga(){
			document.getElementById("usuario").focus();
		}
	</script>
</head>
<body onload="carga();">
	<!--  Contenedor -->
	<div class="container">
	<!--  fila -->
		<div class="row">
			<!--  Grupo 1 de columnas -->			
			<div class="col-md-2">
								
			</div>
			<!--  Grupo 2 de columnas -->
			<div class="col-md-8">
				<h2 class="text-center">Sistema</h2>
				<p class="text-center">		
					<%= ((VOLogin)session.getAttribute("usuarioLogueado")).getUsuario() %>
				</p>
				<form action="" method="post" id="formaUsuarios">
					<input type="hidden" name="accion" id="accion">
					<div class="form-group">
						<label>IdProducto</label>
						<input type="text" name="idproducto" class="form-control">
						<label>Producto</label>
						<input type="text" name="producto" class="form-control">
						<label>Grupo</label>
						<input type="text" name="grupo" class="form-control">
						<label>Proveedor</label>
						<input type="text" name="proveedor" class="form-control">
						<label>Observaciones</label>
						<input type="text" name="Observaciones" class="form-control">
						<label>IdProveedor</label>
						<input type="text" name="idproveedor" class="form-control">
					</div>
					<div class="text-center">
					<input type="button" value="Guardar" class="btn  btn-primary btn-lg" onclick="guardar();">
					<input type="button" value="Actualizar" class="btn  btn-success btn-lg" onclick="actualizar();">
					<input type="button" value="Eliminar" class="btn  btn-danger btn-lg" onclick="eliminar();">					
					</div>
				</form>
				<!--  Crea una tabla -->
				<table class="table table-hover">
					<thead class="thead-dark">
					<tr>
						
						<th scope="col">IdProducto</th>
						<th scope="col">Producto</th>
						<th scope="col">Grupo</th>	
						<th scope="col">Proveedor</th>
						<th scope="col">Observaciones</th>
						<th scope="col">IdProveedor</th>
																	
					</tr>
					</thead>
					<%
						
						List<VOLogin> lista = (List<VOLogin>)session.getAttribute("listaUsuario");
						for (VOLogin obj: lista){							
					%>
					  
					<tr>
						<td>	<%= obj.getIdproducto() %></td>
						<td>	<%= obj.getProducto() %></td>
						<td>	<%= obj.getGrupo() %></td>
						<td>	<%= obj.getProveedor() %></td>
						<td>	<%= obj.getObservaciones() %></td>
						<td>	<%= obj.getIdproveedor() %></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<!--  Grupo 3 de columnas -->
			<div class="col-md-2">
								
			</div>
			
		</div>	
	</div>

</body>
</html>