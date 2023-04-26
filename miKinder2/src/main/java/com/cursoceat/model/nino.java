package com.cursoceat.model;

public class nino {

	static  int id;
	private int idNino;
	private String nombreNino;
	private String apellidoNino;
	private String direccionNino;
	private String poblacionNino;
	private String cpNino;
	private String fechaNacimiento;
	private String alergias;
	private String alergiasali;
	private String intolerancias;
	private String medicacion;
	private String observaciones;
	
	public nino( String nombreNino, String apellidoNino, String direccionNino, String poblacionNino,
			String cpNino, String fechaNacimiento, String alergias, String alergiasali, String intolerancias,
			String medicacion, String observaciones) {
		super();
		
		this.nombreNino = nombreNino;
		this.apellidoNino = apellidoNino;
		this.direccionNino = direccionNino;
		this.poblacionNino = poblacionNino;
		this.cpNino = cpNino;
		this.fechaNacimiento = fechaNacimiento;
		this.alergias = alergias;
		this.alergiasali = alergiasali;
		this.intolerancias = intolerancias;
		this.medicacion = medicacion;
		this.observaciones = observaciones;
		this.idNino = ++id;
	}

	public nino() {
		super();
	}

	public int getIdNino() {
		return idNino;
	}

	public void setIdNino(int idNino) {
		this.idNino = idNino;
	}

	public String getNombreNino() {
		return nombreNino;
	}

	public void setNombreNino(String nombreNino) {
		this.nombreNino = nombreNino;
	}

	public String getApellidoNino() {
		return apellidoNino;
	}

	public void setApellidoNino(String apellidoNino) {
		this.apellidoNino = apellidoNino;
	}

	public String getDireccionNino() {
		return direccionNino;
	}

	public void setDireccionNino(String direccionNino) {
		this.direccionNino = direccionNino;
	}

	public String getPoblacionNino() {
		return poblacionNino;
	}

	public void setPoblacionNino(String poblacionNino) {
		this.poblacionNino = poblacionNino;
	}

	public String getCpNino() {
		return cpNino;
	}

	public void setCpNino(String cpNino) {
		this.cpNino = cpNino;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getAlergias() {
		return alergias;
	}

	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

	public String getAlergiasali() {
		return alergiasali;
	}

	public void setAlergiasali(String alergiasali) {
		this.alergiasali = alergiasali;
	}

	public String getIntolerancias() {
		return intolerancias;
	}

	public void setIntolerancias(String intolerancias) {
		this.intolerancias = intolerancias;
	}

	public String getMedicacion() {
		return medicacion;
	}

	public void setMedicacion(String medicacion) {
		this.medicacion = medicacion;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	@Override
	public String toString() {
		return "nino [idNino=" + idNino + ", nombreNino=" + nombreNino + ", apellidoNino=" + apellidoNino
				+ ", direccionNino=" + direccionNino + ", poblacionNino=" + poblacionNino + ", cpNino=" + cpNino
				+ ", fechaNacimiento=" + fechaNacimiento + ", alergias=" + alergias + ", alergiasali=" + alergiasali
				+ ", intolerancias=" + intolerancias + ", medicacion=" + medicacion + ", observaciones=" + observaciones
				+ "]";
	}
	 
	
	
	
	
}
