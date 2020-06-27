<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Solicitacao"%>
<%@page import="service.SolicitacaoService"%>
<%@page import="model.Materia"%>
<%@page import="service.MateriaService"%>
<%@page import="model.Usuario"%>
<%@page import="service.UsuarioService"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	UsuarioService us = new UsuarioService();
Usuario userLog = (Usuario) session.getAttribute("usuario");
request.setAttribute("usuarioLogado", userLog);
request.setAttribute("url", request.getRequestURL());
%>
<c:choose>
	<c:when
		test="${ url == 'http://localhost:8080/ajudaSJ/home.aluno.jsp' || url == 'http://localhost:8080/ajudaSJ/materia/materias.jsp'}">

		<header>

			<nav
				class="navbar navbar-expand-md navbar-light bg-light border-bottom">
				<div class="container">
					<a href="home.aluno.jsp" class="navbar-brand"> <img
						src="img/logoteste2.png" width="142" height="70">
					</a>
					<button class="navbar-toggler" data-toggle="collapse"
						data-target="#nav-principal">
						<i class="fas fa-bars text-dark"></i>
					</button>
					<div class="collapse navbar-collapse menu" id="nav-principal">
						<ul class="navbar-nav">
							<li class="navbar-item"><a href="listar_materias.do">Matérias</a>
								<ul>
									<li><a
										href="BuscarProfessores.do?pesquisarMaterias=calculo">Calculo</a></li>
									<li><a href="BuscarProfessores.do?pesquisarMaterias=java">Java</a></li>
									<li><a
										href="BuscarProfessores.do?pesquisarMaterias=Banco+de+Dados">Banco
											de Dados</a></li>
								</ul></li>
							<li class="navbar-item"><a href="solicitacoes.jsp">Solicitações</a>
								<ul>

								</ul></li>
							<li class="navbar-item"><a href="aulas.jsp">Aulas</a></li>
							<li class="navbar-item"></li>
						</ul>
						<form class="form-inline pesquisa" action="./BuscarProfessores.do"
							method="get">
							<div class="form-group">
								<input type="text" class="form-control" id="pesquisarMaterias"
									name="pesquisarMaterias" placeholder="pesquisar matérias"
									style="min-width: 400px;"> <input type="submit"
									class="btn btn-outline-danger" style="margin: 5px;"></input>
							</div>
						</form>


						<ul class="navbar-nav">
							<li class="navbar-item"><img
								src='img/${usuarioLogado.foto }' width='60' height='60'>
								<ul>
									<li><a href="perfil.jsp">Configurar Perfil</a></li>
									<li><a href="foto-usuario.jsp">Alterar foto de Perfil</a></li>
									<li><a href="index.jsp">Sair</a></li>
								</ul></li>
						</ul>

					</div>
				</div>
			</nav>

		</header>
	</c:when>

	<c:otherwise>
		<header>
			<nav
				class="navbar navbar-expand-md navbar-light bg-light border-bottom">
				<div class="container">
					<a href="../home.aluno.jsp" class="navbar-brand"> <img
						src="../img/logoteste2.png" width="142" height="70">
					</a>
					<button class="navbar-toggler" data-toggle="collapse"
						data-target="#nav-principal">
						<i class="fas fa-bars text-dark"></i>
					</button>
					<div class="collapse navbar-collapse menu" id="nav-principal">
						<ul class="navbar-nav">
							<li class="navbar-item"><a href="../listar_materias.do">Matérias</a>
								<ul>
									<li><a
										href="../BuscarProfessores.do?pesquisarMaterias=calculo">Calculo</a></li>
									<li><a
										href="../BuscarProfessores.do?pesquisarMaterias=java">Java</a></li>
									<li><a
										href="../BuscarProfessores.do?pesquisarMaterias=Banco+de+Dados">Banco
											de Dados</a></li>
								</ul></li>
							<li class="navbar-item"><a href="../solicitacoes.jsp">Solicitações</a>
								<ul>
								</ul></li>
							<li class="navbar-item"><a href="../aulas.jsp">Aulas</a></li>
							<li class="navbar-item"></li>
						</ul>
						<form class="form-inline pesquisa"
							action="../BuscarProfessores.do" method="get">
							<div class="form-group">
								<input type="text" class="form-control" id="pesquisarMaterias"
									name="pesquisarMaterias" placeholder="pesquisar matérias"
									style="min-width: 400px;"> <input type="submit"
									class="btn btn-outline-danger" style="margin: 5px;"></input>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="navbar-item"><img
								src='../img/${usuarioLogado.foto }' width='60' height='60'>
								<ul>
									<li><a href="perfil.jsp">Configurar Perfil</a></li>
									<li><a href="foto-usuario.jsp">Alterar foto de Perfil</a></li>
									<li><a href="index.jsp">Sair</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

		</header>
	</c:otherwise>
</c:choose>

<c:if test="${ usuarioLogado.adm == 's'}">
	<c:choose>
		<c:when
			test="${ url == 'http://localhost:8080/ajudaSJ/home.aluno.jsp'}">
			<div id='lateral'>
				<nav class='menu navbar'>
					<h3 class='link-titulo'>Ferramentas</h3>
					<ul class='box navbar-nav'>
						<li class='navbar-item'><a
							href='administrador/adm.noticias.jsp' class='text-white'><i
								class='fas fa-newspaper mr-1'></i>Notícias</a></li>
						<li class='navbar-item'><a
							href='administrador/adm.alunos.jsp' class='text-white'><i
								class='fas fa-users mr-1'></i>Alunos</a></li>
						<li class='navbar-item'><a href='sCarregarDashboard.do'
							class='text-white'><i class='far fa-chart-bar mr-1'></i>Gráfico</a></li>
					</ul>
				</nav>
			</div>
		</c:when>
		<c:otherwise>
			<div id='lateral'>
				<nav class='menu navbar'>
					<h3 class='link-titulo'>Ferramentas</h3>
					<ul class='box navbar-nav'>
						<li class='navbar-item'><a
							href='../administrador/adm.noticias.jsp' class='text-white'><i
								class='fas fa-newspaper mr-1'></i>Notícias</a></li>
						<li class='navbar-item'><a
							href='../administrador/adm.alunos.jsp' class='text-white'><i
								class='fas fa-users mr-1'></i>Alunos</a></li>
						<li class='navbar-item'><a href='../CarregarDashboard.do'
							class='text-white'><i class='far fa-chart-bar mr-1'></i>Gráfico</a></li>
					</ul>
				</nav>
			</div>
		</c:otherwise>
	</c:choose>
</c:if>

