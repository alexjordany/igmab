package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.DTUsuario;
import entidades.Usuario;

/**
 * Servlet implementation class SL_guardarUsuario
 */
@WebServlet("/SL_guardarUsuario")
public class SL_guardarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SL_guardarUsuario() {
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
		String nombre, apellido, usuario, pass;
		
		Usuario tu = new Usuario();
		DTUsuario dtu = new DTUsuario();
		
		nombre = request.getParameter("nombre");
		apellido = request.getParameter("apellido");
		usuario = request.getParameter("login");
		pass = request.getParameter("pwd");
		
		try 
		{
			tu.setNombres(nombre);
			tu.setApellidos(apellido);
			tu.setUsuario(usuario);
			tu.setPass(pass);
			if(dtu.guardarUsuario(tu))
			{
				response.sendRedirect("sistema.jsp#ajax/usuarios.jsp?guardado");
				System.out.println("USUARIO GUARDADO");
			}
		} 
		catch (Exception e) 
		{
			System.err.println("SL ERROR: "+e.getMessage());
		}
	}

}
