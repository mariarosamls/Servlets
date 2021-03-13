package com.senati.web.jsps.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.senati.web.jsps.servlets.vo.VOLogin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginWeb.jr")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		//doGet(request, response);
		String usuario = request.getParameter("usuario");
		// obtener el valor de la clave
		String clave = request.getParameter("clave");

		// si usuario y clave son correctos
		if (usuario.equals("maria") && clave.equals("123456")){
			VOLogin vo = new VOLogin();
			vo.setUsuario(usuario);
			vo.setClave(clave);
			vo.setIdproducto("112547");
			vo.setProducto("Carpetas");
			vo.setGrupo("Papeleria");
			vo.setProveedor("Papelería Jímenez");
			vo.setObservaciones("Tamaño Folio");
			vo.setIdproveedor("12");
			System.out.println("Bienvenido " + usuario);
			HttpSession session = request.getSession(true);
			//Agregando lista
			List<VOLogin> lista = new ArrayList<VOLogin>();
			session.setAttribute("usuarioLogueado",vo);
			//Devolviendo lista
			session.setAttribute("listaUsuario", lista);
			request.getRequestDispatcher("bienvenida.jsp").forward(request,response);
		}else{
			System.out.println("No tiene acceso");
			//response.sendRedirect("login.html");

		}
	}
	}


