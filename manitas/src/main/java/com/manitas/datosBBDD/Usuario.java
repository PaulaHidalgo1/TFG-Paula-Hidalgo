package com.manitas.datosBBDD;
   

	public class Usuario {
	    public String username;
	    public String ubicacion;
	    public int tarifa;
	    
	    public Usuario(String username, String password, String email, int number, String servicio, String ubicacion, int tarifa) {
	        // Constructor
	    }

	    public Usuario(String username, String ubicacion, int tarifa) {
	        this.username = username;
	        this.ubicacion = ubicacion;
	        this.tarifa = tarifa;
	    }
    

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public int getTarifa() {
		return tarifa;
	}

	public void setTarifa(int tarifa) {
		this.tarifa = tarifa;
	}
}
