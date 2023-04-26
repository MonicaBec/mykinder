package com.cursoceat.model;

public class Autorizacion extends DatosGenerales{
	
	private String relacion;

	public Autorizacion(int idNino, String nombreApellido, String dni, String telefono, String relacion) {
		super(idNino, nombreApellido, dni, telefono);
		this.relacion = relacion;
	}

	public Autorizacion() {
		super();
	}

	public String getRelacion() {
		return relacion;
	}

	public void setRelacion(String relacion) {
		this.relacion = relacion;
	}

	 
	
	
}
