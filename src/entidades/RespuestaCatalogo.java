package entidades;


/**
 * Catálogo que contiene las respuestas que se muestran al paciente.
 * @author Gang of Seven
 * @version 1.0
 * @created 12-Feb-2017 11:17:17 AM
 */
public class RespuestaCatalogo {

	/**
	 * Una respuesta del catálogo en la ficha de admisión del paciente.
	 */
	private String descripcion;
	private int respuestaCtalogoID;
	private int tipoID;
	private Respuesta m_Respuesta;
	public RespuestaAbierta m_RespuestaAbierta;

	public RespuestaCatalogo(){

	}
	

	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public Respuesta getM_Respuesta() {
		return m_Respuesta;
	}


	public void setM_Respuesta(Respuesta m_Respuesta) {
		this.m_Respuesta = m_Respuesta;
	}


	public RespuestaAbierta getM_RespuestaAbierta() {
		return m_RespuestaAbierta;
	}


	public void setM_RespuestaAbierta(RespuestaAbierta m_RespuestaAbierta) {
		this.m_RespuestaAbierta = m_RespuestaAbierta;
	}


	public void finalize() throws Throwable {

	}


	public int getRespuestaCtalogoID() {
		return respuestaCtalogoID;
	}


	public void setRespuestaCtalogoID(int respuestaCtalogoID) {
		this.respuestaCtalogoID = respuestaCtalogoID;
	}


	public int getTipoID() {
		return tipoID;
	}


	public void setTipoID(int tipoID) {
		this.tipoID = tipoID;
	}

}