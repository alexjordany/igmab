package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;

import entidades.Asistencia;
import entidades.Psicologo;

public class DTAsistencia {
	Connection cn = null;
	PreparedStatement ps =null;
	ResultSet rs =null;
	
	public ArrayList<Asistencia> CargarAsistencias()
	{
		ArrayList<Asistencia> listaAsistencia = new ArrayList<Asistencia>();
		String sql = ("SELECT * from igmab.asistencia");
		try 
		{
			cn = Conexion.getConnection();
			ps = cn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) 
			{
				Asistencia a = new Asistencia();
				a.setFecha(rs.getDate("Fecha"));
				a.setHoraEntrada(rs.getTime("Horaentrada"));
				a.setHoraSalida(rs.getTime("Horasalida"));
				a.setAsistenciaId(rs.getInt("AsistenciaID"));
				a.setPsicologoID(rs.getInt("PsicologID"));
				
				listaAsistencia.add(a);
				
			}
			ps.close();
			cn.close();
		} 
		catch (Exception e) 
		{
			System.err.println("METODO CARGAR ASISTENCIA: "+e.getMessage());
		}
		
		return listaAsistencia;
	}

	public void guardarAsistenciaInnerEntrada(Asistencia a, Psicologo p)
	{
		
		java.util.Date d = new java.util.Date();
		SimpleDateFormat plantilla = new SimpleDateFormat("dd/mm/yy");
		java.sql.Date date2 = new java.sql.Date(d.getTime());
		
		LocalTime ti = LocalTime.now();
//		int x = 0;
//		boolean g = false;
		try 
		{
			
			String sql = ("INSERT INTO igmab.asistencia (Fecha, Horaentrada, PsicologoID) VALUES ("+date2+", "+ti+", "+p.getPsicologoID()+")");
			cn = Conexion.getConnection();
			Statement s = cn.createStatement();
//			rs = s.executeQuery("SELECT * from igmab.psicologo");
//			rs.moveToInsertRow();
//			rs.updateString("Carnet", p.getCarnet());
//			rs.updateString("Nombre1", p.getNombre1());
//			rs.updateString("Nombre2", p.getNombre2());
//			rs.updateString("Apellido1", p.getApellido1());
//			rs.updateString("Apellido2", p.getApellido2());
//			rs.insertRow();
//			rs.moveToCurrentRow();
			s.executeQuery(sql);
			s.close();
			cn.close();
		}
		catch (Exception e) 
		{
			System.err.println("ERROR GUARDAR Asistencia" + e.getMessage());
			e.printStackTrace();
		}
	}
	
	
	//FALTA EL DE LA HORA DE SALIDA
	
}
