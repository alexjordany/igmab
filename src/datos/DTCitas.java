package datos;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import entidades.Cita;

public class DTCitas 
{
	public ArrayList<Cita> Actores() 
	{
		ArrayList<Cita>listaCitas = new ArrayList<Cita>();
		String sql = ("SELECT * from IGMAB.Cita;");
		try 
		{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while (rs.next()) 
			{
				Cita c = new Cita();
				c.setCitaId(rs.getInt("CitaId"));
				c.setPacienteId(rs.getInt("PacienteId"));
				c.setAsistencia(rs.getInt("Asistencia"));
				c.setFecha(rs.getDate("Fecha"));
				c.setNumSesion(rs.getInt("Numsesion"));
				c.setHora(rs.getTime("Hora"));
				listaCitas.add(c);
				
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("Error en los datos "+e.getMessage());
			e.printStackTrace();
		}
		return listaCitas;
	}
	
	public void guardarCita(Cita c)
	{
//		int x = 0;
//		boolean g = false;
		try 
		{
			DateFormat fechaCompleta = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			DateFormat fecha = new SimpleDateFormat("yyyy/MM/dd");
			DateFormat shf = new SimpleDateFormat("HH:mm:ss");		
			Date date = new Date();
			
			Connection cn = Conexion.getConnection();
			Statement s = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = s.executeQuery("SELECT * from IGMAB.Cita;");
			
			rs.moveToInsertRow();
			rs.updateString("Fechacreacion",fechaCompleta.format(date));
			rs.updateString("Fecha", fecha.format(c.getFecha()));
			rs.updateString("Hora", shf.format(c.getHora()));
			rs.updateInt("Numsesion", c.getNumSesion());
			rs.insertRow();
			rs.moveToCurrentRow();
			
			s.close();
			cn.close();
		}
		catch (Exception e) 
		{
			System.err.println("Error al guardar " + e.getMessage());
			e.printStackTrace();
		}
	}
}
