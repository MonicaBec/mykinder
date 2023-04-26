<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<body>


	<!--  link al documento header -->
	<jsp:include page="header.jsp"></jsp:include>

		<div class="container">
		
			<h3
				class="container bg-success-subtle border border-light-subtle my-4 shadow p-3 mb-5 bg-body-tertiary rounded">
				Datos del niño</h3>
			<div class="row">
				<!-- formulario copiado de boostrap -->

				<div class="col-6">
					Nombre:
					<c:out value="${param.nombreNino}"></c:out>
				</div>

				<div class="col-6">
					Apellidos:
					${param.apellidoNino}
				</div>

				<div class="col-6">
					<!-- esto hace :centrar texto fecha nacimiento -->
					<label for="fNacimiento">Fecha nacimiento :</label>
					<c:out value="${param.fNacimiento}"/>
				</div>

				<div class="col-6">
					Dirección :
					<c:out value="${param.direccionNino}"></c:out>
				</div>

				<div class="col-6">
					Población :
					<c:out value="${param.poblacionNino}"></c:out>
				</div>

				<div class="col-6">
					Código Postal:
					<c:out value="${param.codigoPostalNino}"></c:out>
				</div>

			</div>

			<h3
				class="container bg-success-subtle border border-light-subtle my-4 
			shadow p-3 mb-5 bg-body-tertiary rounded">
				Datos Familiares</h3>


			<div class="row">
				<div class="col-6">
					Nombre y Apellidos :
					<c:out value="${param.nombreApellidoFamiliar1}"></c:out>
				</div>

				<div class="col-6">
					DNI :
					<c:out value="${param.dniFamiliar1}"></c:out>
				</div>

			</div>

			<div class="row">
				<div class="col-6">
					Profesión :
					<c:out value="${param.profesionFamiliar1}"></c:out>
				</div>

				<div class="col-6">
					Teléfono :
					<c:out value="${param.telFamiliar1}"></c:out>
				</div>
			</div>

			<div class="row">
				<div class="col-6">
					Mail:
					<c:out value="${param.mailFamiliar1}"></c:out>
				</div>

				<div class="col-6">

					Parentesco :
					<c:out value="${param.parentesco1}"></c:out>
				</div>

				<br>
			</div>

			<hr>

			<div class="row">
				<div class="col-6">
					Nombre y Apellidos:
					<c:out value="${param.nombreApellidoFamiliar2}"></c:out>
				</div>

				<div class="col-6">
					DNI :
					<c:out value="${param.dniFamiliar2}"></c:out>
				</div>
			</div>
			<div class="row">

				<div class="col-6">
					Profesión :
					<c:out value="${param.profesionFamiliar2}"></c:out>
				</div>

				<div class="col-6">
					Teléfono :
					<c:out value="${param.telFamiliar2}"></c:out>
				</div>
			</div>
			<div class="row">

				<div class="col-6">
					Mail :
					<c:out value="${param.mailFamiliar2}"></c:out>
				</div>

				<div class="col-6">


					Parentesco :
					<c:out value="${param.parentesco1}"></c:out>
				</div>

				<h3
					class="container bg-success-subtle border border-light-subtle my-4 shadow p-3 mb-5 bg-body-tertiary rounded">
					Otros datos</h3>


				<div class="row">
					<div class="col-6">
						Alergias :
						<c:out value="${param.alergias}"></c:out>
					</div>

					<div class="col-6">
						Alergias alimentarias :
						<c:out value="${param.alergiasAlimentarias}"></c:out>
					</div>

				</div>


				<div class="row">
					<div class="col-6">
						Intolerancias :
						<c:out value="${param.intolerancias}"></c:out>
					</div>

					<div class="col-6">
						Medicación :
						<c:out value="${param.medicacion}"></c:out>
					</div>

				</div>
				<div class="row">
					<div class="col">
						Observaciones :
						<c:out value="${param.observaciones}"></c:out>
					</div>
				</div>

				<h3
					class="container bg-success-subtle border border-light-subtle my-4 
			shadow p-3 mb-5 bg-body-tertiary rounded">
					Autorizaciones</h3>

				<div class="input-group mb-3">

					Nombre y Apellido :
					<c:out value="${param.Autor1}"></c:out>

					DNI :
					<c:out value="${param.dniAutor1}"></c:out>

					Teléfono:
					<c:out value="${param.telAutor1}"></c:out>

					Parentesco :
					<c:out value="${param.parenAutor1}"></c:out>

				</div>

				<div class="input-group mb-3">

					Nombre y Apellido :
					<c:out value="${param.Autor2}"></c:out>

					DNI :
					<c:out value="${param.dniAutor2}"></c:out>

					Teléfono :
					<c:out value="${param.telAutor2}"></c:out>

					Parentesco :
					<c:out value="${param.parenAutor2}"></c:out>

				</div>

				<div class="input-group mb-3">

					Nombre y Apellido :
					<c:out value="${param.Autor3}"></c:out>

					DNI :
					<c:out value="${param.dniAutor3}"></c:out>

					Teléfono :
					<c:out value="${param.telAutor3}"></c:out>

					Parentesco :
					<c:out value="${param.parenAutor3}"></c:out>

				</div>

				<div class="input-group mb-3">

					Nombre y Apellido :
					<c:out value="${param.Autor4}"></c:out>

					DNI :
					<c:out value="${param.dniAutor4}"></c:out>

					Teléfono :
					<c:out value="${param.telAutor4}"></c:out>

					Parentesco :
					<c:out value="${param.parenAutor4}"></c:out>

				</div>



			</div>
			

	<div class="row-4 ">

				<div class="col">
					<a href="saludo.jsp" class="btn btn-success large">Todo correcto</a>
				</div>
	
				<div class="col " >
				<!-- se pueden insertar comandos javascript dentro del mismo jsp -->
				 <a href="javascript:history.go(-1)" class="btn  btn-outline-secondary" role="button"> Corregir</a>
				</div>
		
				
				<div class="col">
				<a href="javascript: window.print()" class="btn btn-light " role="button"> &#128424;</a>
				</div>
				
			</div>
</div>
		


</body>
</html>