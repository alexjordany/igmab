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

import datos.DtCita;
import datos.DtParentesco;
import entidades.Cita;
import entidades.Parentesco;

/**
 * Servlet implementation class SL_GuardarCita
 */
@WebServlet("/SL_GuardarActor")
public class SlCita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlCita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			DtCita dtc= new DtCita();
			Cita cita=new Cita();
			ArrayList<Cita> listaCita=new ArrayList<Cita>();
			
			int pacienteId=0, sesion=0;
			
			pacienteId=Integer.parseInt(request.getParameter("pacienteID"));
			
			sesion=Integer.parseInt(request.getParameter("numSesion"));
			
			
			String fechaStr = request.getParameter("fecha");
			DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			
			Date fecha = sdf.parse(fechaStr);
			
			String horaStr = request.getParameter("hora");			
			DateFormat shf = new SimpleDateFormat("HH:mm:ss");	
			
			Date hora = shf.parse(horaStr);
			
			
			Date fechaCreacion=new Date();
			fechaCreacion.getTime();
			
			cita.setFecha(fecha);
			cita.setHora(hora);
			cita.setPacienteId(pacienteId);
			cita.setNumSesion(sesion);
			cita.setFechaCreacion(fechaCreacion);
			
			if(dtc.guardarCita(cita)){
				listaCita=dtc.listaCitas();
				
				response.setContentType("text/html; charset=UTF-8");
				String out="";
				
				out+="<thead>";
				out+="<tr>";
				out+="<th>Paciente</th>";
				out+="<th>Fecha</th>";
				out+="<th>Sesión</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(Cita enti : listaCita)
				{
					out+="<tr>";
					out+="<td>"+enti.getPacienteId()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getFecha()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getHora()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getNumSesion()+"</td>";
					out+="</tr>";
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>Paciente</th>";
				out+="<th>Fecha</th>";
				out+="<th>Sesión</th>";
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
