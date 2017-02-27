package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.DtParentesco;
import entidades.Parentesco;

/**
 * Servlet implementation class SlParentescoAjaxRefrescar
 */
@WebServlet("/SlParentescoAjaxRefrescar")
public class SlParentescoAjaxRefrescar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlParentescoAjaxRefrescar() {
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
			String f ="";
			f = request.getParameter("f");
			DtParentesco dtp = new DtParentesco();
			//Parentesco par = new Parentesco();
			ArrayList<Parentesco> listaParentesco = new ArrayList<Parentesco>();
			
			//String parentesco ="";
			
			//parentesco = request.getParameter("fparentesco");
			
			//System.out.println("fparentesco " + parentesco);
			
			//par.setParentesco(parentesco);
			
			//if(dtp.guardarParentesco(par))
			//{
				listaParentesco = dtp.listaParentescos();
				
				response.setContentType("text/html; charset=UTF-8");
				String out = "";
				
				out+="<thead>";
				out+="<tr>";
				out+="<th>Tipo de parentesco</th>";
				out+="</tr>";
				out+="</thead>";
				
				out+="<tbody>";
				for(Parentesco enti : listaParentesco)
				{
					out+="<tr>";
					out+="<td>"+enti.getParentesco()+"</td>";
					out+="</tr>";
				}
				out+="</tbody>";
				
				out+="<tfoot>";
				out+="<tr>";
				out+="<th>Tipo de parentesco</th>";
				out+="</tr>";
				out+="</tfoot>";
				
				PrintWriter pw = response.getWriter();
				pw.write(out);
				pw.flush();
				boolean error = pw.checkError();
				System.out.println("Error: "+error);
//				System.out.println("REFRESCADO");
			//}
			//else
			//{
				//Msj de Error
			//}

		}
		catch(Exception e)
		{
			System.out.println("SL: error en el servlet:" +e.getMessage());
			e.printStackTrace();
		}

	}

}
