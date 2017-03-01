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

import datos.DTPsicologo;
import entidades.Psicologo;

/**
 * Servlet implementation class SLPsicologo
 */
@WebServlet("/SLPsicologo")
public class SLPsicologo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SLPsicologo() {
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
			DTPsicologo dtp= new DTPsicologo();
			Psicologo p=new Psicologo();
			ArrayList<Psicologo> listaPsicologo=new ArrayList<Psicologo>();
			
			//int PsicologoID=0;
			String nombre1,  nombre2, apellido1 , apellido2, carnet ;
			nombre1=(request.getParameter("Nombre1"));
			nombre2=(request.getParameter("Nombre2"));
			apellido1=(request.getParameter("Apellido1"));
			apellido2=(request.getParameter("Apellido2"));
			carnet=(request.getParameter("Carnet"));
//			PsicologoID=Integer.parseInt(request.getParameter("PsicologoID"));
//			
//
//			
//			
//			String fechaStr = request.getParameter("fecha");
//			DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
//			
//			Date fecha = sdf.parse(fechaStr);
//			
//			String horaStr = request.getParameter("hora");			
//			DateFormat shf = new SimpleDateFormat("HH:mm:ss");	
//			
//			Date hora = shf.parse(horaStr);
			
			
			Date fechaCreacion=new Date();
			fechaCreacion.getTime();
			
			p.setFechaCreacion(fechaCreacion);
			p.setNombre1(nombre1);
			p.setNombre2(nombre2);
			p.setApellido1(apellido1);
			p.setApellido2(apellido2);
			p.setCarnet(carnet);
			
			
			if(dtp.guardarPsicolgo(p)){
				listaPsicologo=dtp.psicologos();
				
				response.setContentType("text/html; charset=UTF-8");
				String out="";
				
				out+="<thead>";
				out+="<tr>";
				out+="<th>nombre1</th>";
				out+="<th>nombre2</th>";
				out+="<th>Apellido1</th>";
				out+="<th>Apellido2</th>";
				out+="<th>Carnet</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(Psicologo enti : listaPsicologo)
				{
					out+="<tr>";
					out+="<td>"+enti.getNombre1()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getNombre2()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getApellido1()+"</td>";
					out+="</tr>";
					
					out+="<tr>";
					out+="<td>"+enti.getApellido2()+"</td>";
					out+="</tr>";

					out+="<tr>";
					out+="<td>"+enti.getCarnet()+"</td>";
					out+="</tr>";

				
				
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>nombre1</th>";
				out+="<th>nombre2</th>";
				out+="<th>Apellido1</th>";
				out+="<th>Apellido2</th>";
				out+="<th>Carnet</th>";
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
