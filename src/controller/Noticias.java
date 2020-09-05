package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Materia;
import model.Noticia;
import model.Solicitacao;
import model.Usuario;
import service.MateriaService;
import service.NoticiaService;
import service.SolicitacaoService;
import service.UsuarioService;

/**
 * Servlet implementation class AtualizarNoticia
 */
@WebServlet("/Noticias.do")
public class Noticias extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Noticias() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		NoticiaService ns = new NoticiaService();
		Noticia noticia = new Noticia();

		String pAcao = request.getParameter("acao");
		noticia.setTitulo(request.getParameter("titulo"));
		noticia.setDescricao(request.getParameter("descricao"));
		noticia.setTexto(request.getParameter("conteudo"));

		if (pAcao.equals("Atualizar")) {

			int id = Integer.parseInt((request.getParameter("id")));
			noticia.setId(id);
			ns.atualizar(noticia);

			response.sendRedirect("./home.aluno.jsp");

		}

		else {
			ns.criar(noticia);
			response.sendRedirect("./home.aluno.jsp");
		}

	}
}
