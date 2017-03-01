package entidades;
import java.util.Date;


/**
 * La consulta es una nota/descripci�n de los psic�logos acerca de cada sesi�n con
 * el paciente.
 * @author Gang of Seven
 * @version 1.0
 * @created 12-Feb-2017 11:17:16 AM
 */
public class Consulta {
	
	private int consultaid;

	/**
	 * Si el paciente asiste a la cita o no.
	 */
	private int asistencia;
	/**
	 * La especificaci�n de lo que hace y habla el psic�logo con el paciente en la
	 * consulta.
	 */
	private String descripcion;
	/**
	 * Fecha en que se realiza la consulta.
	 */
	private Date fecha;
	/**
	 * Fecha en que se crea el registro.
	 */
	private Date fechaCreacion;
	/**
	 * Fecha en que se elimina el registro.
	 */
	private Date fechaEliminacion;
	/**
	 * Fecha en que se modifica el registro.
	 */
	private Date fechaModificacion;
	/**
	 * Id del usuario que crea el registro.
	 */
	private int usuarioCreacion;
	/**
	 * Id del usuario que elimina el registro.
	 */
	private int usuarioEliminacion;
	/**
	 * Id del usuario que modifica el registro.
	 */
	private int usuarioModificacion;

	public Consulta(){

	}
	

	public int getAsistencia() {
		return asistencia;
	}


	public void setAsistencia(int asistencia) {
		this.asistencia = asistencia;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public Date getFecha() {
		return fecha;
	}


	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}


	public Date getFechaCreacion() {
		return fechaCreacion;
	}


	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}


	public Date getFechaEliminacion() {
		return fechaEliminacion;
	}


	public void setFechaEliminacion(Date fechaEliminacion) {
		this.fechaEliminacion = fechaEliminacion;
	}


	public Date getFechaModificacion() {
		return fechaModificacion;
	}


	public void setFechaModificacion(Date fechaModificacion) {
		this.fechaModificacion = fechaModificacion;
	}


	public int getUsuarioCreacion() {
		return usuarioCreacion;
	}


	public void setUsuarioCreacion(int usuarioCreacion) {
		this.usuarioCreacion = usuarioCreacion;
	}


	public int getUsuarioEliminacion() {
		return usuarioEliminacion;
	}


	public void setUsuarioEliminacion(int usuarioEliminacion) {
		this.usuarioEliminacion = usuarioEliminacion;
	}


	public int getUsuarioModificacion() {
		return usuarioModificacion;
	}


	public void setUsuarioModificacion(int usuarioModificacion) {
		this.usuarioModificacion = usuarioModificacion;
	}


	public void finalize() throws Throwable {

	}

}