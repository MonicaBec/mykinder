<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>



 <!-- Con la siguiente linea, llamo aal archivo header.jsp y lo inserta aquí, por eso borramos el head de aqui ya que tenemos el de es archivo  -->
 	<!--  link al documento header  -->
	<jsp:include page="header.jsp"></jsp:include>
 

<body>

	<div class="container">
	
	<c:if test="${not empty listaErrores }"> <!-- asi se crean condicionales del lado cliente -->
	<ul class="list-group">
	<li class="list-group active bg-danger txt-white border border-danger mb-4 p-2">Existen errores</li>
	<c:forEach items="${listaErrores}" var="error"> <!-- crear recorridco de listas desde el cliente -->
	
	
	
	<li class="list-group border border-danger">
			<!-- c:out Muestra información en la página, se presenta 
	la expresión contenida en el atributo value  -->
	<c:out value="${error}"></c:out> <!-- este valor viene del servidor Controler.java -->
	
	
	
	</li>
	</c:forEach>
	
	</ul>
	
	
	</c:if>
	
	
	<p>(*) Campos obligatorios</p>
	
	
	<!-- El metodo get envía los datos al formulario por medio de la url -->
		<form action="Controller" method="get" class="needs-validation" novalidate>
			<h3
				class="container bg-success-subtle border border-light-subtle my-4 shadow p-3 mb-5 bg-body-tertiary rounded">
				Datos del niño</h3>
			<div class="row">
				<!-- formulario copiado de boostrap -->

	<!--${param.nombre} obtiene el valor del parametro de contexto en JSP   -->

				<div class="col-6">
					<input type="text" class="form-control text-capitalize" placeholder="*Nombre"
						aria-label="Nimbre del niño/a" name="nombreNino"  required value="${param.nombreNino}" pattern="[a-zA-Z ]+">
				</div>

				<div class="col-6">
					<input type="text" class="form-control  text-capitalize" placeholder="*Apellidos"
						aria-label="Apellidos del niño/a" name="apellidoNino" required value="${param.apellidoNino}" pattern="[a-zA-Z ]+">
				</div>

				<div>
					<!-- esto hace :centrar texto fecha nacimiento -->
					<label for="fNacimiento">*Fecha nacimiento :</label>

				</div>

				<div class="col-6">
					<input type="date" class="form-control  text-capitalize"
						aria-label="Fecha nacimiento del niño/a" name="fNacimiento" required value="${param.fNacimiento}">
				</div>

				<div class="col-6">
					<input type="text" class="form-control  text-capitalize" placeholder="*Dirección"
						aria-label="Direccion del niño/a" name="direccionNino" required value="${param.direccionNino}">
				</div>

				<div class="col-6">
					<input type="text" class="form-control text-capitalize" placeholder="*Población"
						aria-label="Población del niño/a" name="poblacionNino" required value="${param.poblacionNino}" pattern="[a-zA-Z ]+">
				</div>

				<div class="col-6">
					<input type="text" class="form-control text-capitalize" placeholder="*Código Postal"
						aria-label="codigo postal del niño/a" name="codigoPostalNino" required value="${param.codigoPostalNino}" pattern=[0-9]{5}>
				</div>

			</div>

			<h3 class="container bg-success-subtle border border-light-subtle my-4 
			shadow p-3 mb-5 bg-body-tertiary rounded"> Datos Familiares</h3>


	<div class="row">
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="*Nombre y Apellidos"
					aria-label="nombre y apellidos familiar uno" name="nombreApellidoFamiliar1" required value="${param.nombreApellidoFamiliar1}" pattern="[a-zA-Z ]+" >
			</div>
			
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="*DNI"
					aria-label="dni familiar uno" name="dniFamiliar1" required value="${param.dniFamiliar1}" pattern="[0-9]{8}[A-Za-z]{1}" >
			</div>
			
			</div>
			
			<div class="row">
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="*Profesión"
					aria-label="profesión familiar uno" name="profesionFamiliar1" required value="${param.profesionFamiliar1}" pattern="[a-zA-Z ]+">
			</div>
			
			<div class="col-6">
				<input type="tel" class="form-control text-capitalize" placeholder="*Teléfono"
					aria-label="telefono familiar uno" name="telFamiliar1" required value="${param.telFamiliar1}" pattern="[6789]{1}[0-9]{8}">
			</div>
			</div>
			
			<div class="row">
			<div class="col-6">
				<input type="email" class="form-control text-capitalize" placeholder="*e-mail"
					aria-label="correo electrónico familiar uno" name="mailFamiliar1" required value="${param.mailFamiliar1}" >
			</div>
			
			<div class="col-6">
			
				
				<select class="form-select" id="parentesco1" aria-label="parentesco familiar uno" name="parentesco1" required value="${param.parentesco1}" >
            
                <option selected="Parentesco">*Parentesco</option>
                <option value="Padre">Padre</option>
                <option value="Madre">Madre</option>
                <option value="Tutor">Tutor</option>
              
            </select>
            </div>
            
            <br>
			</div>
			
			<hr>

		<div class="row">
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="Nombre y Apellidos"
					aria-label="nombre y apellidos familiar dos" name="nombreApellidoFamiliar2" pattern="[a-zA-Z ]+">
			</div>
			
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="DNI"
					aria-label="dni familiar dos" name="dniFamiliar2" pattern="[0-9]{8}[A-Za-z]{1}">
			</div>
			</div>
			<div class="row">
			
			<div class="col-6">
				<input type="text" class="form-control text-capitalize" placeholder="Profesión"
					aria-label="profesión familiar dos" name="profesionFamiliar2" pattern="[a-zA-Z ]+">
			</div>
			
			<div class="col-6">
				<input type="tel" class="form-control text-capitalize" placeholder="Teléfono"
					aria-label="telefono familiar dos" name="telFamiliar2" pattern="[6789]{1}[0-9]{8}">
			</div>
			</div>
			<div class="row">
			
			<div class="col-6">
				<input type="email" class="form-control text-lowercase" placeholder="e-mail"
					aria-label="correo electrónico familiar dos" name="mailFamiliar2">
			</div>
			
			<div class="col-6">
			
				
				<select class="form-select" id="parentesco2" aria-label="parentesco familiar dos" name="parentesco1">
            
                <option selected="Parentesco">Parentesco</option>
                <option value="Padre">Padre</option>
                <option value="Madre">Madre</option>
                <option value="Tutor">Tutor</option>
              
            </select>
   
     </div>
     
     <h3 class="container bg-success-subtle border border-light-subtle my-4 shadow p-3 mb-5 bg-body-tertiary rounded">
		Otros datos</h3>
     
     
     <div class="row">
     <div class="col-6">
				<input type="text" class="form-control" placeholder="Alergias"
					aria-label="Alergias del niño" name="alergias">
			</div>
			
     <div class="col-6">
				<input type="text" class="form-control" placeholder="Alergias alimentarias"
					aria-label="Alergias alimentarias del niño" name="alergiasAlimentarias">
			</div>
			
     </div>
     
   
     <div class="row">
     <div class="col-6">
				<input type="text" class="form-control" placeholder="Intolerancias"
					aria-label="Intolerancias del niño" name="intolerancias">
			</div>
			
     <div class="col-6">
				<input type="text" class="form-control" placeholder="Medicación"
					aria-label="Medicacion del niño" name="medicacion">
			</div>
			
     </div>
     <div class="row">
     <div class="col">
      <textarea  class="form-control" placeholder="Observaciones" aria-label="observaciones"
       id="observaciones" rows="3" name="observaciones"></textarea>
       </div>
     </div>
     
     		<h3 class="container bg-success-subtle border border-light-subtle my-4 
			shadow p-3 mb-5 bg-body-tertiary rounded"> Autorizaciones</h3>
   
   <div class="input-group mb-3">
   
   <span class="input-group-text">*Nombre y Apellido</span>
   <input type="text" class="form-control  text-capitalize" aria-label="Username" name="Autor1" required value="${param.Autor1}" pattern="[a-zA-Z ]+">
   
   <span class="input-group-text">*DNI</span>
   <input type="text" class="form-control text-capitalize" aria-label="server" name="dniAutor1" required value="${param.dniAutor1}" pattern="[0-9]{8}[A-Za-z]{1}">
   
   <span class="input-group-text">*Teléfono</span>
   <input type="text" class="form-control text-capitalize" aria-label="server" name="telAutor1" required value="${param.telAutor1}" pattern="[6789]{1}[0-9]{8}">
   
   <span class="input-group-text">*Parentesco</span>
   <input type="text" class="form-control text-capitalize" aria-label="server" name="parenAutor1"  required value="${param.parenAutor1}">
   
   </div>
   
      <div class="input-group mb-3">
   
   <span class="input-group-text">Nombre y Apellido</span>
   <input type="text" class="form-control" aria-label="Username" name="Autor2">
   
   <span class="input-group-text">DNI</span>
   <input type="text" class="form-control" aria-label="server" name="dniAutor2">
   
   <span class="input-group-text">Teléfono</span>
   <input type="text" class="form-control" aria-label="server" name="telAutor2">
   
   <span class="input-group-text">Parentesco</span>
   <input type="text" class="form-control" aria-label="server" name="parenAutor2">
   
   </div>
  
   
     </div>
			<div class="row-4 ">

				<div class="col">
				<!-- el submit hace que la action del formulario se ejecute a través del metodo declarado.
				Debe estar dentro de la etiqueta form -->
					<input type="submit" name="enviar" value="Enviar Datos"
						class="btn btn-outline-success subtle ">
				</div>
			</div>

		</form>
		
	</div>
	
	
	
	

<script>
<!--Example starter JavaScript for disabling form submissions if there are invalid fields-->
(() => {
  'use strict'

  <!--Fetch all the forms we want to apply custom Bootstrap validation styles to-->
  const forms = document.querySelectorAll('.needs-validation')

  <!-- Loop over them and prevent submission-->
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

</script>


</body>
</html>