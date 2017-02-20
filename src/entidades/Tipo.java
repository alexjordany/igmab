package entidades;


/**
 * Catálogo que almacena la clasificación de las preguntas.
 * @author Gang of Seven
 * @version 1.0
 * @created 12-Feb-2017 11:17:17 AM
 */
public class Tipo {

	/**
	 * Tipo de pregunta mostrada al paciente: Su Infancia y adolescencia; Sensaciones
	 * físicas; Pensamientos; Conductas; Relaciones Interpersonales
	 */
	private String descripcion;
	private RespuestaCatalogo m_RespuestaCatalogo;

	public Tipo(){

	}
	

	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public RespuestaCatalogo getM_RespuestaCatalogo() {
		return m_RespuestaCatalogo;
	}


	public void setM_RespuestaCatalogo(RespuestaCatalogo m_RespuestaCatalogo) {
		this.m_RespuestaCatalogo = m_RespuestaCatalogo;
	}


	public void finalize() throws Throwable {

	}

}