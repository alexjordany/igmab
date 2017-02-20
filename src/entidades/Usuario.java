package entidades;


/**
 * Usuarios del sistema
 * @author Gang of Seven
 * @version 1.0
 * @created 12-Feb-2017 11:17:18 AM
 */
public class Usuario {

	/**
	 * Contraseña correspondiente al usuario.
	 */
	private String contrasena;
	/**
	 * Nombre de usuario.
	 */
	private String usuario;

	public Usuario(){

	}
	

	public String getContrasena() {
		return contrasena;
	}


	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}


	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public void finalize() throws Throwable {

	}

}