package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

import com.cursoceat.model.Autorizacion;
import com.cursoceat.model.nino;
import com.cursoceat.model.tutor;
import com.oracle.wls.shaded.org.apache.bcel.generic.RETURN;
import com.oracle.wls.shaded.org.apache.bcel.verifier.exc.StaticCodeConstraintException;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 //datos niño
	String nombreNino=request.getParameter("nombreNino");
	String apellidoNino=request.getParameter("apellidoNino");
	String fNacimiento=request.getParameter("fNacimiento");
	String direccionN=request.getParameter("direccionNino");
	String poblacionN=request.getParameter("poblacionNino");
	String cpNino=request.getParameter("codigoPostalNino");
	String alergias=request.getParameter("alergias");
	String alergiasAli=request.getParameter("alergiasAlimentarias");
	String intolerancias=request.getParameter("intolerancias");
	String medicacion=request.getParameter("medicacion");
	String observaciones=request.getParameter("observaciones");
	
	//datos tutor
	String nombreTutor1=request.getParameter("nombreApellidoFamiliar1");
	String dniT1=request.getParameter("dniFamiliar1");
	String profesionT1=request.getParameter("profesionFamiliar1");
	
	//Ejemplo de un casting a entero
	//int telefono=Integer.parseInt(request.getParameter(TelefonoT1));
	String telefonoT1=request.getParameter("telFamiliar1");
	String emailT1=request.getParameter("mailFamiliar1");
	String parentesco=request.getParameter("parentesco1");
	
	
	
		
	
	//datos autorizados
	
	
			int autorizados=1;
	        String Autor1=request.getParameter("Autor1");
			String dniAutor1=request.getParameter("dniAutor1");
			String telAutor1=request.getParameter("telAutor1");			
			String parenAutor1=request.getParameter("parenAutor1");
			
			
	
	
	
	//leer todos los datos del formulario
	//crear mis objetos -> clases
	
			
			
			//En la siguiente coleccion tipo array list vamps a giardar todos los posibles errores que el usuario tenga al insertar los datos
		      ArrayList<String> listaErrores= new ArrayList<>();
			
		     
		      //valido dni
		      if(!validarDNI(dniAutor1)) {
		    	  listaErrores.add("Verifique DNI");
		      }
			
		      //valido que el niño tenga menos de 6 años o como mucho vaya a venir dentro de 1
		      if(!validarFN(fNacimiento)) {
		    	  listaErrores.add("El niño  no cumple con la edad para este centro");
		      }
		      
		      //valido que el telefono tenga 9 dijitos y comience por 6,7,8,9
		      if(!validarTel(telAutor1)) {
		    	  listaErrores.add("El telefono no es correcto reviselo");
		      }
		      
		      
			
		      //validamos que los campos obligatorios no estén vacios
				if(nombreNino.isEmpty() || apellidoNino.isEmpty() || fNacimiento.isEmpty()|| direccionN.isEmpty() || poblacionN.isEmpty() || cpNino.isEmpty()
			|| nombreTutor1.isEmpty()|| dniT1.isEmpty()	|| telefonoT1.isEmpty()|| parentesco.isEmpty() || Autor1.isEmpty() || dniAutor1.isEmpty()
			|| telAutor1.isEmpty()|| parenAutor1.isEmpty()) {
					listaErrores.add("hay campos vacios");
					
		String error="los campos requeridos son obligatorios";
		request.setAttribute("error", error);//no se envia hasta que se despache
		request.getRequestDispatcher("index.jsp").forward(request, response);// no se muestra si no tengo quien lo muestre
	}
				if(!listaErrores.isEmpty()) {
					request.setAttribute("listaErrores", listaErrores);//envia los errores en forma de array
					request.getRequestDispatcher("index.jsp").forward(request, response);//no se muestra si tengo quien lo muestre
					listaErrores.clear(); //limpia el array de errores
				}
				
				else {
		request.getRequestDispatcher("confirmacion.jsp").forward(request, response);
		
		
		
		//AQU FALTA VALIDAR QUE LA SESION SE CREE CUANDO SE PULSE "TODo CORRECTO"
		
		List<nino> miNiList=new ArrayList<nino>();		
		List<tutor> tutoList=new ArrayList<tutor>();		
		List<Autorizacion> AutoList=new ArrayList<Autorizacion>();		
	
		nino miNino=new nino(nombreNino, apellidoNino, direccionN, poblacionN, cpNino, fNacimiento, alergias, alergiasAli, intolerancias, medicacion, observaciones);
		//crear la coleccion de niños en alta 
		miNiList.add(miNino);
		System.out.println(miNino.toString());
		int idNino=miNino.getIdNino();
		
		tutor elTutor= new tutor(idNino, nombreTutor1, dniT1, telefonoT1, profesionT1, emailT1, parentesco);
		tutoList.add(elTutor);
		System.out.println(elTutor.toString());
		
		Autorizacion auto1=new Autorizacion(idNino, Autor1, dniAutor1, telefonoT1,parenAutor1);
		AutoList.add(auto1);
		
		
		//datos tutor 2
		
			String nombreTutor2=request.getParameter("nombreApellidoFamiliar2");
			if(!nombreTutor2.isEmpty()) {
			String dniT2=request.getParameter("dniFamiliar2");
			String profesionT2=request.getParameter("profesionFamiliar2");
			String telefonoT2=request.getParameter("telFamiliar2");
			String emailT2=request.getParameter("mailFamiliar2");
			String parentesco2=request.getParameter("parentesco2");
			tutor elTutor2= new tutor(idNino, nombreTutor2, dniT2, telefonoT2, profesionT2, emailT2, parentesco2);
			tutoList.add(elTutor2);
			}
			
			
			
			String autor2=request.getParameter("autor2");
			if(!autor2.isEmpty()) {
			String dniAutor2=request.getParameter("dniAutor2");
			String telAutor2=request.getParameter("telAutor2");			
			String parenAutor2=request.getParameter("parenAutor2");
			Autorizacion auto2=new Autorizacion(idNino, autor2, dniAutor2, telAutor2,parenAutor2);
			AutoList.add(auto2);
			}
			
			
					
		
	
		
		//sesiones para poder recupeerar la informacion dentro de la aplicacion 
		HttpSession sesion=request.getSession(); //crea le objeto tipo sesion
		System.out.println(sesion.getId()); //mostrar el id de la sesion
        request.getSession().setAttribute("idNino", idNino);
        request.getSession().setAttribute("nombreN", nombreNino);
		
	}
	}
	
	
	//area de validación 
	/**
	 * 
	 * @param tele
	 * @return boolean
	 * @description Validamos telefono según formato español
	 */
	public boolean validarTel(String tele) {
		if((!tele.startsWith("9") && !tele.startsWith("6") && tele.startsWith("7") )|| tele.length()!=9){
			return false;
		}else {
			return true;
		}
	}
	
	
	/**
	 * 
	 * @param fNacimiento
	 * @return boolean
	 * @description validamos que el niño sea menor de 6 años 
	 */
	public boolean validarFN(String fNacimiento) {
	
		LocalDate fechaN=LocalDate.parse(fNacimiento);
    
		 int aniosNino=fechaN.getYear();
		 int anioActual=LocalDate.now().getYear();
		 
		 if((anioActual-aniosNino)>6)  //habria que verificarf que tampoco fuese una fecha superiror a un año desde el dia de inscripcion 
			 return false;
		 		else 
			 return true;
		
	}
	
	
	
	public boolean validarDNI(String dni) {
		String letra="TRWAGMYFPDXBNJZSQVHLCKE";
		String intDni=dni.substring(0,8);//Dividimos el dni, aqui las 8 primeras posiciones
		
		
		try {  //inteta hacer esto
		//esta linea puede dar error y el programador tiene que saber controlar ese posible error 
		int dniEntero=Integer.parseInt(intDni)%23;//convertimos esas 8 posiciones a entero y sacamos su modulo(resto de divivdir el num entre 23)
		char letraDni=dni.toUpperCase().charAt(8);//convertimos a tipo char la poscion 9 que deberia ser la letra y la pasamos a mayuscula
		char letraCorrecta=letra.charAt(dniEntero); //me trae la letra correcta segun el algoritmo de la policia
		                                                 //(la letra correcta es el indice en 'letra' que dicte el entero de 'dniEntero')
		
	
		/**
		 * condicional para verificar que el dni tenga 9 posiciones y la letraa sea igual a la del algoritmo de la policia 
		 */
		
		if(dni.length()==9 && letraDni==letraCorrecta) { 
			return false;
		}else {
			return true;}		
	
		}//si no lo puedes hacer
		catch(Exception e) {//capturamos el error 
			System.out.println(e);
			System.out.println("error numero del dni ");
		return false;
		}finally {
			//esta vacío 
		}
	
	}
	
	
	
	/**
	 * 
	 * @param texto
	 * @return texto con la primera letra en mayus 
	 * @description Metodo para pasar la primera letra de cualquier texto a mayus
	 */
	public String mayuscula(String texto) {
		
		texto=texto.toLowerCase(); //paso todo el texto a minuscula
		
		String[] arrayTexto=texto.split(" "); //si es nas de una palabra lo separamos en un array
		
		String temp=" ";//creo la variable que se formará por cada interaccion del bcle que recorre el array;
		for(int i=0; i<arrayTexto.length;i++) {//recorro el array 
			arrayTexto[i]=arrayTexto[i].substring(0,1).toUpperCase()+arrayTexto[i].substring(1);//pasamos la primera letra de cada palabra a mayus
			temp+=arrayTexto[i]+" ";//lo acumulamos en temp;
		}
			return temp.trim();//enviamos le temp ya formateado y quitando espacios del pricipio y final(.trim) 
	}
	
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
