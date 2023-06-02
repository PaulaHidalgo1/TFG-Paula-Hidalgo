package com.manitas.mensajes;

public class Mensajes {
	public String usuario;
	public String fecha;
	public String mensaje;
	
	public Mensajes() {
		
	}

	public Mensajes(String usuario, String fecha, String mensaje) {
		this.usuario = usuario;
		this.fecha = fecha;
		this.mensaje = mensaje;
	}
	
	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
}