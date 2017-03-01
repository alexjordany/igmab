package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Cita;
import entidades.Consulta;
import datos.DtConsulta;

@WebServlet("/SIConsulta")
public class SIConsulta extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public SIConsulta()
	{
		super();
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		try 
		{
			DtConsulta dtc = new DtConsulta();
			Consulta c = new Consulta();
			ArrayList<Consulta> listaConsulta = new ArrayList<Consulta>();
			
			int asistencia=0;
			asistencia = Integer.parseInt(request.getParameter("asistencia"));
			

			String descripcion = "";
			descripcion = request.getParameter("descripcion");
			
			Date fecha = new Date();
			fecha.getTime();
			
			Date fechaCreacion=new Date();
			fechaCreacion.getTime();
			
			c.setAsistencia(asistencia);
			c.setDescripcion(descripcion);
			c.setFecha(fecha);
			c.setFechaCreacion(fechaCreacion);
			
			if(dtc.guardarConsulta(c))
			{
				listaConsulta = dtc.listaConsulta();
				
				response.setContentType("text/html; charset=UTF-8");
				String out = "";
				out+="<thead>";
				out+="<tr>";
				out+="<th>Asistencia</th>";
				out+="<th>Descipcion</th>";
				out+="<th>Fecha</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(Consulta enti : listaConsulta)
				{
					out+="<tr>";
					out+="<td>"+enti.getAsistencia()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getDescripcion()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getFecha()+"</td>";
					out+="</tr>";
					
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>Asistencia</th>";
				out+="<th>Descipcion</th>";
				out+="<th>Fecha</th>";
				out+="</tr>";
				out+="</tfoot>";
				
				PrintWriter pw = response.getWriter();
				pw.write(out);
				pw.flush();
				boolean error = pw.checkError();
				System.out.println("Error: "+error);
				
			}
			
		} 
		catch(Exception e)
		{
			System.out.println("SL error en el servlet:" +e.getMessage());
			e.printStackTrace();
		}
		
		
	}
}
