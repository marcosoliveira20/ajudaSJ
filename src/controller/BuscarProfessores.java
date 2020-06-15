package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;
import model.Materia;
import service.MateriaService;

/**
 * Servlet implementation class BuscarProfessores
 */
@WebServlet("/BuscarProfessores.do")
public class BuscarProfessores extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BuscarProfessores() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String s = request.getParameter("pesquisarMaterias");
		String id = request.getParameter("id");
		MateriaService ms = new MateriaService();
		Materia materia = new Materia();
		if (s != null && s != "") {
			materia = ms.carregar(s);
		}else if(id != null && id!="") {
			materia = ms.carregar(Integer.parseInt(id));
			
		}
		UsuarioService us = new UsuarioService();
		if (materia.getId() != -1 && materia.getId() != 0) {
			ArrayList<Usuario> usuarios = us.buscarUsuarios(materia.getId());
			request.setAttribute("nomeMateria", materia.getNome());
			request.setAttribute("array", usuarios);
			RequestDispatcher view = request.getRequestDispatcher("fazersolicitacao.jsp");
			view.forward(request, response);
			
		} else {

			request.setAttribute("erro", "erro");
			request.setAttribute("erro", " <script>alert(\"Matéria não Encontrada, aqui estão todas as nossas matérias disponiveís!\");</script>");
			RequestDispatcher view = request.getRequestDispatcher("listar_materias.do");
			view.forward(request, response);

		}

		PrintWriter out = response.getWriter();


	}

}
