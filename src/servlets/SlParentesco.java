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
 * Servlet implementation class SlParentesco
 */
@WebServlet("/SlParentesco")
public class SlParentesco extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SlParentesco() {
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
		
		try
		{
			Parentesco p = new Parentesco();
			DtParentesco dtp = new DtParentesco();
			
			p.setParentesco(request.getParameter("parentesco"));
			
			if(dtp.guardarParentesco(p))
			{
				response.sendRedirect("index.jsp#ajax/parentesco.jsp?guardado");
			}
			else
			{
				response.sendRedirect("index.jsp#ajax/parentesco.jsp?error");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("ERROR EN EL SERVLET: "+e.getMessage());
		}
		
	}

}
