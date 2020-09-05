package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Noticia;
import service.NoticiaService;

/**
 * Servlet implementation class AtualizarNoticia
 */
@WebServlet("/AtualizarNoticia.do")
public class AtualizarNoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AtualizarNoticia() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt((request.getParameter("idNoticia")));
		NoticiaService ns = new NoticiaService();
		Noticia noticia = new Noticia();
		noticia.setId(id);
		noticia.setTitulo(request.getParameter("titulo"));
		noticia.setDescricao(request.getParameter("descricao"));
		noticia.setTexto(request.getParameter("texto"));
		
		if (id == 0) {
			ns.criar(noticia);
		} else {
			 ns.atualizar(noticia);
		}
		
		response.sendRedirect("./home.aluno.jsp");
		
	}


}
