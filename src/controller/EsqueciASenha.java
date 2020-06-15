package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import email.Email;
import model.Materia;
import model.Usuario;
import service.MateriaService;
import service.UsuarioService;

/**
 * Servlet implementation class EsqueciASenha
 */
@WebServlet("/EsqueciASenha.do")
public class EsqueciASenha extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		UsuarioService us = new UsuarioService();
		
		Usuario usuario = new Usuario(); 
		
		try {
			System.out.println("Valor da acao = "+request.getParameter("acao"));
			if(request.getParameter("acao").equals("Enviar")) {
				usuario= us.carregar(request.getParameter("email"));
				Email.linkParaTrocaDeSenha(request.getParameter("email"), "http://localhost:8080/ajudaSJ/redefinir-a-senha.jsp?id="+usuario.getId());
				request.setAttribute("erro", " <script>alert(\"Um email para troca de senha foi enviado!\");</script>");
				RequestDispatcher view = request.getRequestDispatcher("index.jsp");
				view.forward(request, response);
			}else {
				String pSenha = request.getParameter("senha");
				String pCSenha = request.getParameter("csenha");
				if(pSenha.equals(pCSenha)) {
				
					usuario= us.carregar(Integer.parseInt(request.getParameter("id")));
					System.out.println("Usuario antes da atualização: "+ usuario.toString());
					usuario.setSenha(pSenha);
					System.out.println("Usuario depois da atualização: "+ usuario.toString());
					request.setAttribute("erro", " <script>alert(\"Senha alterada com sucesso!\");</script>");
					RequestDispatcher view = request.getRequestDispatcher("index.jsp");
					view.forward(request, response);
					us.atualizar(usuario);
				}else {
					request.setAttribute("erro", " <script>alert(\"Campos de senha não coincidem, tente novamente!\");</script>");
					RequestDispatcher view = request.getRequestDispatcher("redefinir-a-senha.jsp?id="+usuario.getId());
					view.forward(request, response);
				}
			}
			

			request.setAttribute("erro", " <script>alert(\"Um email para troca de senha foi enviado!!\");</script>");
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("erro",
					" <script>alert(\"Ouve um erro não foi possível realizar a atualização!\");</script>");
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);

			e.printStackTrace();
		}
	}

}
