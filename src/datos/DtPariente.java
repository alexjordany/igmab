package datos;

import java.sql.*;
import java.util.ArrayList;
import entidades.Pariente;

public class DtPariente {
	public ArrayList<Pariente> listaPaciente(){
		ArrayList<Pariente> listaPaciente = new ArrayList<Pariente>();
		String sql = ("SELECT * FROM igmab.Pariente");
		
		try{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next()){
				Pariente p = new Pariente();
				p.setParienteId(rs.getInt("ParienteID"));
				p.setNombre1(rs.getString("Nombre1"));
				p.setNombre2(rs.getString("Nombre2"));
				p.setApellido1(rs.getString("Apellido1"));
				p.setApellido1(rs.getString("Apellido2"));
				p.setCargo(rs.getString("Cargo"));
				p.setCausaMuerte(rs.getString("Causamuerte"));
				p.setEdad(rs.getInt("Edad"));
				p.setEscolaridad(rs.getString("Escolaridad"));
				p.setEstadoVida(rs.getInt("Estadovida"));
				p.setFechaCreacion(rs.getDate("Fechacreacion"));
				p.setFechaModificacion(rs.getDate("Fechamodificacion"));
				p.setFechaEliminacion(rs.getDate("FechaEliminacion"));
				p.setLugarTrabajo(rs.getString("Lugartrabajo"));
				p.setOcupacion(rs.getString("Ocupacion"));
				p.setSalarioMensual(rs.getFloat("Salariomensual"));
				p.setUsuarioCreacion(rs.getInt("Usuariocreacion"));
				p.setUsuarioEliminacion(rs.getInt("Usuarioeliminacion"));
				p.setUsuarioModificacion(rs.getInt("Usuariomodificacion"));
				p.setParentescoId(rs.getInt("ParentescoID"));
			
			}
			ps.close();
			cn.close();
		}
		catch(Exception e){
			System.err.println("Datos: Error "+e.getMessage());
		}
		return listaPaciente;
	}

	////////Método para guardar/////
	public boolean guardarPariente(Pariente p){
		int x= 0;
		boolean g = false;
		
		try{
			String SQL = ("INSERT INTO igmab.Pariente(Apellido1, Apellido2, Cargo, Causamuerte, Edad, Escolaridad, Estadovida, Fechacreacion, Lugartrabajo, Nombre1, Nombre2, Ocupacion, Salariomensual, Tutor, Usuariocreacion,  ParentescoID) "
					+ "VALUES (?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP,?,?,?,?,?,?,?,?,?)");
		
		Connection cn = Conexion.getConnection();
		PreparedStatement s = cn.prepareStatement(SQL);
		
		s.setString(1, p.getApellido1());
		s.setString(2, p.getApellido2());
		s.setString(3, p.getCargo());
		s.setString(4, p.getCausaMuerte());
		s.setInt(5, p.getEdad());
		s.setString(6, p.getEscolaridad());
		s.setInt(7, p.getEstadoVida());
		s.setString(9, p.getLugarTrabajo());
		s.setString(10, p.getNombre1());
		s.setString(11, p.getNombre2());
		s.setString(12, p.getOcupacion());
		s.setFloat(13, p.getSalarioMensual());
		s.setInt(14, p.getTutor());
		s.setInt(16, p.getParentescoId());
		x = s.executeUpdate();
		g= x>0;
		
		s.close();
		cn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Datos: Error al guardar el pariente");
			
		}
		return g;
		
	}
	
}
