package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entidades.Paciente;

public class DtPaciente {
	public ArrayList<Paciente> listaPaciente(){
		ArrayList<Paciente> listaPaciente = new ArrayList<Paciente>();
		String sql = ("SELECT * FROM igmab.Paciente");
		
		try{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next()){
				Paciente p = new Paciente();
				p.setPacienteID(rs.getInt("ParienteID"));
				p.setExpediente("Expediente");
				p.setNombre1(rs.getString("Nombre1"));
				p.setNombre2(rs.getString("Nombre2"));
				p.setApellido1(rs.getString("Apellido1"));
				p.setApellido1(rs.getString("Apellido2"));
				p.setCelular(rs.getString("Celular"));
				p.setDireccion(rs.getString("Direccion"));
				p.setEdad(rs.getString("Edad"));
				p.setEstadoCivil(rs.getInt("Estadocivil"));
				p.setInternado(rs.getInt("Internado"));
				p.setInternadoAfirmativo(rs.getString("InternadoAfirmativo"));
				p.setSexo(rs.getInt("Sexo"));
				p.setTerapia(rs.getInt("Terapia"));
				p.setFechaNac(rs.getDate("Fechanac"));
				p.setEscolaridad(rs.getString("Escolaridad"));
				p.setConQuienVive(rs.getString("Conquienvive"));
				p.setFechaCreacion(rs.getDate("Fechacreacion"));
				p.setFechaModificacion(rs.getDate("Fechamodificacion"));
				p.setFechaEliminacion(rs.getDate("FechaEliminacion"));
				p.setLugarTrabajo(rs.getString("Lugartrabajo"));
				p.setEmpleo(rs.getString("Empleo"));
				p.setSalario(rs.getString("Salario"));
				p.setUsuarioCreacion(rs.getInt("Usuariocreacion"));
				p.setUsuarioEliminacion(rs.getInt("Usuarioeliminacion"));
				p.setUsuarioModificacion(rs.getInt("Usuariomodificacion"));
			
			}
			ps.close();
			cn.close();
		}
		catch(Exception e){
			System.err.println("Datos: Error "+e.getMessage());
		}
		return listaPaciente;
	}
}
