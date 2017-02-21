package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entidades.Parentesco;

public class DtParentesco {
	public ArrayList<Parentesco> listaParentesco(){
		ArrayList<Parentesco> listaParentesco = new ArrayList<Parentesco>();
		String sql = ("SELECT * FROM igmab.Parentesco");
		
		try{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next()){
				Parentesco p = new Parentesco();
				p.setParentescoID(rs.getInt("ParentescoID"));
				p.setParentesco(rs.getString("Parentesco"));
			
			}
			ps.close();
			cn.close();
		}
		catch(Exception e){
			System.err.println("Datos: Error "+e.getMessage());
		}
		return listaParentesco;
	}
	
	////////Método para guardar/////
	public boolean guardarPariente(Parentesco p){
		int x= 0;
		boolean g = false;
	
		try{
			String SQL = ("INSERT INTO igmab.Parentesco(Parentesco) "
					+ "VALUES (?)");
	
			Connection cn = Conexion.getConnection();
			PreparedStatement s = cn.prepareStatement(SQL);
	
			s.setString(1, p.getParentesco());
			x = s.executeUpdate();
			g= x>0;
	
			s.close();
			cn.close();
		
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Datos: Error al guardar el parentesco");
		
		}
		return g;
	
	}
}
