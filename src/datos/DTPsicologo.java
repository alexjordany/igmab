package datos;

import datos.Conexion;

import entidades.Psicologo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

public class DTPsicologo {

		Connection cn = null;
		PreparedStatement ps =null;
		ResultSet rs =null;
		
		public ArrayList<Psicologo> psicologos()
		{
			ArrayList<Psicologo> listaPsicologo = new ArrayList<Psicologo>();
			String sql = ("SELECT * from igmab.psicologo");
			try 
			{
				cn = Conexion.getConnection();
				ps = cn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while (rs.next()) 
				{
					Psicologo p = new Psicologo();
					p.setCarnet(rs.getString("Carnet"));
					p.setNombre1(rs.getString("Nombre1"));
					p.setNombre1(rs.getString("Nombre2"));
					p.setNombre1(rs.getString("Apellido1"));
					p.setNombre1(rs.getString("Apellido2"));
					
					listaPsicologo.add(p);
					
				}
				ps.close();
				cn.close();
			} 
			catch (Exception e) 
			{
				System.err.println("METODO CARGAR Psicologo: "+e.getMessage());
			}
			
			return listaPsicologo;
		}

		public void guardarActor(Psicologo p)
		{
//			int x = 0;
//			boolean g = false;
			try 
			{
				//DateFormat fecha = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
				//Date date = new Date();
//				String sql = ("INSERT INTO sakila.actor (first_name, last_name, last_update) VALUES (?,?,CURRENT_TIMESTAMP)");
				cn = Conexion.getConnection();
				Statement s = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				rs = s.executeQuery("SELECT * from igmab.psicologo");
				rs.moveToInsertRow();
				rs.updateString("Carnet", p.getCarnet());
				rs.updateString("Nombre1", p.getNombre1());
				rs.updateString("Nombre2", p.getNombre2());
				rs.updateString("Apellido1", p.getApellido1());
				rs.updateString("Apellido2", p.getApellido2());
				rs.insertRow();
				rs.moveToCurrentRow();
				
				s.close();
				cn.close();
			}
			catch (Exception e) 
			{
				System.err.println("ERROR GUARDAR " + e.getMessage());
				e.printStackTrace();
			}
		}
	}


