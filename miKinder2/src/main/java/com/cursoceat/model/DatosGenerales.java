package com.cursoceat.model;

public class DatosGenerales {

	protected int idNino;
	protected String nombreApellido;
	protected String dni;
	protected String telefono;
	
	
	public DatosGenerales(int idNino, String nombreApellido, String dni, String telefono) {
		super();
		this.idNino = idNino;
		this.nombreApellido = nombreApellido;
		this.dni = dni;
		this.telefono = telefono;
	}


	public DatosGenerales() {
		super();
	}


	public int getIdNino() {
		return idNino;
	}


	public void setIdNino(int idNino) {
		this.idNino = idNino;
	}


	public String getNombreApellido() {
		return nombreApellido;
	}


	public void setNombreApellido(String nombreApellido) {
		this.nombreApellido = nombreApellido;
	}


	public String getDni() {
		return dni;
	}


	public void setDni(String dni) {
		this.dni = dni;
	}


	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	@Override
	public String toString() {
		return "DatosGenerales [idNino=" + idNino + ", nombreApellido=" + nombreApellido + ", dni=" + dni
				+ ", telefono=" + telefono + "]";
	}
	

	
	
}
