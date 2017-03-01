package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.DtPariente;
import entidades.Pariente;

/**
 * Servlet implementation class SlParentescoAjax
 */
@WebServlet("/SlParienteAjax")
public class SlParienteAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlParienteAjax() 
    {
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
		// TODO Auto-generated method stub
		try
		{
			DtPariente dtp = new DtPariente();
			Pariente par = new Pariente();
			ArrayList<Pariente> listaPariente = new ArrayList<Pariente>();
			
			String primerNombre ="";
			String segundoNombre="";
			String primerApellido="";
			String segundoApellido="";
			int edad;
			String escolaridad="";
			String ocupacion="";
			String lugarTrabajo="";
			String cargo="";
			int salarioMensual;
			int tutor;
			int estadoVida;
			String causaMuerte="";

			
			
			
			primerNombre = request.getParameter("fprimerNombre");
			segundoNombre = request.getParameter("fsegundoNombre");
			primerApellido = request.getParameter("fprimerApellido");
			segundoApellido = request.getParameter("fsegundoApellido");
			edad = Integer.parseInt(request.getParameter("fedad"));
			escolaridad = request.getParameter("fescolaridad");
			ocupacion = request.getParameter("focupacion");
			lugarTrabajo = request.getParameter("flugarTrabajo");
			cargo = request.getParameter("fcargo");
			salarioMensual = Integer.parseInt(request.getParameter("fsalarioMensual"));
			tutor = Integer.parseInt(request.getParameter("ftutor"));
			estadoVida = Integer.parseInt(request.getParameter("festadoVida"));
			causaMuerte = request.getParameter("fcausaMuerte");
			
			
			par.setNombre1(primerNombre);
			par.setNombre2(segundoNombre);
			par.setApellido1(primerApellido);
			par.setApellido2(segundoApellido);
			par.setEdad(edad);
			par.setEscolaridad(escolaridad);
			par.setOcupacion(ocupacion);
			par.setLugarTrabajo(lugarTrabajo);
			par.setCargo(cargo);
			par.setSalarioMensual(salarioMensual);
			par.setTutor(tutor);
			par.setEstadoVida(estadoVida);
			par.setCausaMuerte(causaMuerte);
			
			
			
			//request.getParameter("opc");
			
			if(dtp.guardarPariente(par))
			{
				listaPariente = dtp.listaPariente();
				
				response.setContentType("text/html; charset=UTF-8");
				String out = "";
				
				out+="<thead>";
				out+="<tr>";
				out+="<th>Primer nombre</th>";
				out+="<th>Segundo nombre</th>";
				out+="<th>Primer apellido</th>";
				out+="<th>Segundo apellido</th>";
				out+="<th>Edad</th>";
				out+="<th>Escolaridad</th>";
				out+="<th>Ocupacion</th>";
				out+="<th>Lugar de trabajo</th>";
				out+="<th>Cargo</th>";
				out+="<th>Salario mensual</th>";
				out+="<th>Tutor</th>";
				out+="<th>Estado de vida</th>";
				out+="<th>Causa de muerte</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(Pariente enti : listaPariente)
				{
					out+="<tr>";
					out+="<td>"+enti.getNombre1()+"</td>";
					out+="<td>"+enti.getNombre2()+"</td>";
					out+="<td>"+enti.getApellido1()+"</td>";
					out+="<td>"+enti.getApellido2()+"</td>";
					out+="<td>"+enti.getEdad()+"</td>";
					out+="<td>"+enti.getEscolaridad()+"</td>";
					out+="<td>"+enti.getOcupacion()+"</td>";
					out+="<td>"+enti.getLugarTrabajo()+"</td>";
					out+="<td>"+enti.getCargo()+"</td>";
					out+="<td>"+enti.getSalarioMensual()+"</td>";
					out+="<td>"+enti.getTutor()+"</td>";
					out+="<td>"+enti.getEstadoVida()+"</td>";
					out+="<td>"+enti.getCausaMuerte()+"</td>";
					out+="</tr>";
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>Primer nombre</th>";
				out+="<th>Segundo nombre</th>";
				out+="<th>Primer apellido</th>";
				out+="<th>Segundo apellido</th>";
				out+="<th>Edad</th>";
				out+="<th>Escolaridad</th>";
				out+="<th>Ocupacion</th>";
				out+="<th>Lugar de trabajo</th>";
				out+="<th>Cargo</th>";
				out+="<th>Salario mensual</th>";
				out+="<th>Tutor</th>";
				out+="<th>Estado de vida</th>";
				out+="<th>Causa de muerte</th>";
				out+="</tr>";
				out+="</tfoot>";
				
				PrintWriter pw = response.getWriter();
				pw.write(out);
				pw.flush();
				boolean error = pw.checkError();
				System.out.println("Error: "+error);
			}
			else
			{
				//Msj de Error
			}

		}
		catch(Exception e)
		{
			System.out.println("SL: error en el servlet:" +e.getMessage());
			e.printStackTrace();
		}
	}

}
