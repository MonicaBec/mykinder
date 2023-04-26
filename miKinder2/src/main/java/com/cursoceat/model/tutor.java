package com.cursoceat.model;

public class tutor extends DatosGenerales {

	
	 private String profesion;
	 private String email;
	 private String parentesco;
	 
	 
	public tutor(int idNino, String nombreApellido, String dni, String telefono, String profesion, String email,String parentesco) {
		super(idNino, nombreApellido, dni, telefono);
		this.profesion = profesion;
		this.email = email;
		this.parentesco = parentesco;
	}

 
	public tutor() {
		super();
	}





	public String getProfesion() {
		return profesion;
	}


	public void setProfesion(String profesion) {
		this.profesion = profesion;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getParentesco() {
		return parentesco;
	}


	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}
	 
	 
	
	
}
