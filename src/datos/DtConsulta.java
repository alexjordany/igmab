package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.util.*;

import entidades.Consulta;

public class DtConsulta {

	public ArrayList<Consulta> listaConsulta(){
		ArrayList<Consulta> listaConsulta = new ArrayList<Consulta>();
		String sql = ("SELECT * FROM igmab.Consulta");
		
		try {
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next()){
				Consulta c = new Consulta();
				c.setAsistencia(rs.getInt("Asistencia"));
				c.setDescripcion(rs.getString("Descripcion"));
				c.setFecha(rs.getDate("Fecha"));
				c.setFechaCreacion(rs.getDate("Fechacreacion"));
				c.setFechaModificacion(rs.getDate("Fechamodificacion"));
				c.setFechaEliminacion(rs.getDate("Fechaeliminacion"));
				c.setUsuarioCreacion(rs.getInt("Usuariocreacion"));
				c.setUsuarioModificacion(rs.getInt("Usuariomodificacion"));
				c.setUsuarioEliminacion(rs.getInt("Usuarioeliminacion"));
				
			}
			ps.close();
			cn.close();
		}
		catch(Exception e){
			System.err.println("Error en datos " + e.getMessage());
			e.printStackTrace();
		}
		return listaConsulta;
	}
	
	public boolean guardarConsulta(Consulta c)
	{
		int x = 0;
		boolean g = false;
		
		try 
		{
			String SQL = ("INSERT INTO igmab.consulta (Consulta) VALUES (asistencia, descripcion, fecha, fechacreacion);");
			
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(SQL);
			
			ps.setInt(1, c.getAsistencia());
			ps.setString(2, c.getDescripcion());
			ps.setDate(3, (Date) c.getFecha());
			ps.setDate(4, (Date) c.getFechaCreacion());
			x = ps.executeUpdate();
			g = x>0;
			
			ps.close();
			cn.close();
			
		}
		
		catch (Exception e)
		{
			System.out.println("Error al guardar" + e.getMessage());
			e.printStackTrace();
			}
		return g;
	}
}
