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
 * Servlet implementation class SlParentescoAjax
 */
@WebServlet("/SlParentescoAjax")
public class SlParentescoAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SlParentescoAjax() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		///////////////////////////// SE DECLARAN LAS VARIABLES QUE ALMACENAN
		///////////////////////////// LOS DATOS DE LA INTERFAZ DE
		///////////////////////////// USUARIO////////////////////////////////
		String opcion = request.getParameter("opcion").trim();
		String parentesco = "";
		DtParentesco dtp = new DtParentesco();

		switch (opcion) {

		/////////////////////////// EN CASO DE
		/////////////////////////// GUARDAR////////////////////////////////
		case "guardar":
			Parentesco par = new Parentesco();

			try {
				parentesco = request.getParameter("fparentesco");
				par.setParentesco(parentesco);

				if (dtp.guardarParentesco(par)) {
					refrescar(request, response);
				}
			} catch (Exception e) {
				System.out.println("SL: error en el servlet:" + e.getMessage());
				e.printStackTrace();
			}
			break;

		/////////////////////////// EN CASO DE
		/////////////////////////// ACTUALIZAR////////////////////////////////
		case "actualizar":
			refrescar(request, response);
			break;

		/////////////////////////// EN CASO DE
		/////////////////////////// ELIMINAR////////////////////////////////
		case "eliminar":
			refrescar(request, response);
			break;

		/////////////////////////// EN CASO DE
		/////////////////////////// REFRESCAR LA
		/////////////////////////// TABLA////////////////////////////////
		case "refrescar":
			refrescar(request, response);
			break;
			
		default: 
			System.out.println("Nothing to show");
			break;
		}

		/*try {
			// DtParentesco dtp = new DtParentesco();
			Parentesco par = new Parentesco();
			ArrayList<Parentesco> listaParentesco = new ArrayList<Parentesco>();

			parentesco = request.getParameter("fparentesco");
			System.out.println("fparentesco " + parentesco);

			par.setParentesco(parentesco);

			if (dtp.guardarParentesco(par)) {
				listaParentesco = dtp.listaParentescos();

				response.setContentType("text/html; charset=UTF-8");
				String out = "";

				out += "<thead>";
				out += "<tr>";
				out += "<th>Tipo de parentesco</th>";
				out += "</tr>";
				out += "</thead>";

				out += "<tbody>";
				for (Parentesco enti : listaParentesco) {
					out += "<tr>";
					out += "<td>" + enti.getParentesco() + "</td>";
					out += "</tr>";
				}
				out += "</tbody>";

				out += "<tfoot>";
				out += "<tr>";
				out += "<th>Tipo de parentesco</th>";
				out += "</tr>";
				out += "</tfoot>";

				PrintWriter pw = response.getWriter();
				pw.write(out);
				pw.flush();
				boolean error = pw.checkError();
				System.out.println("Error: " + error);
			} else {
				// Msj de Error
			}

		} catch (Exception e) {
			System.out.println("SL: error en el servlet:" + e.getMessage());
			e.printStackTrace();
		}*/
	}

	protected void refrescar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			DtParentesco dtp = new DtParentesco();
			// Parentesco par = new Parentesco();
			ArrayList<Parentesco> listaParentesco = new ArrayList<Parentesco>();

			listaParentesco = dtp.listaParentescos();

			response.setContentType("text/html; charset=UTF-8");
			String out = "";

			out += "<thead>";
			out += "<tr>";
			out += "<th>Tipo de parentesco</th>";
			out += "<th>Acciones</th>";
			out += "</tr>";
			out += "</thead>";

			out += "<tbody>";
			for (Parentesco enti : listaParentesco) {
				out += "<tr>";
				out += "<td>" + enti.getParentesco() + "</td>";
				out +="<td>";
				out +="<button id='btnID' value="+enti.getParentescoID()+"class='btn btn-danger ajax-link action' onClick='eliminar();'>Eliminar</button>";
				out += "<button value="+enti.getParentescoID()+ "class='btn btn-info'>Actualizar</button>";	
				out +="</td>";
				out += "</tr>";
			}
			out += "</tbody>";

			out += "<tfoot>";
			out += "<tr>";
			out += "<th>Tipo de parentesco</th>";
			out += "<th>Acciones</th>";
			out += "</tr>";
			out += "</tfoot>";

			PrintWriter pw = response.getWriter();
			pw.write(out);
			pw.flush();
			boolean error = pw.checkError();
			System.out.println("Error: " + error);

		} catch (Exception e) {
			System.out.println("SL: error en el servlet:" + e.getMessage());
			e.printStackTrace();
		}

	}

}
