<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ page import="br.com.prog3.trabalho5pc3.DanielSouza.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados</title>
</head>
<body>


	<%
		String valor = request.getParameter("crud");
		Integer codigo;
		String descricao;
		Integer carga;
	%>
	<%
		List<Disciplina> lista = new ArrayList<>();
		CrudDisciplina disc = new CrudDisciplina();
		if (valor.equals("Pesquisar")) {
			if (request.getParameter("codigo").equals("")) {
				lista = disc.listarTodos();
				out.println("Lista completa: <br> <br>");
				for (int i = 0; i < lista.size(); i++) {
					out.println("Descri��o: " + lista.get(i).getDescricao() + "<br>");
					out.println("C�digo: " + lista.get(i).getCodigo() + " <br>");
					out.println("Carga Hor�ria: " + lista.get(i).getCargaHoraria() + " <br> <br>");
				}
			} else {
				Disciplina x;
				codigo = Integer.valueOf(request.getParameter("codigo"));
				x = disc.buscarPeloCodigo(codigo);
				if (x != null) {
					out.println("Item solicitado: <br> <br>");
					out.println("Descri��o: " + x.getDescricao() + "<br>");
					out.println("C�digo: " + x.getCodigo() + " <br>");
					out.println("Carga Hor�ria: " + x.getCargaHoraria() + " <br> <br>");
				} else{
					out.println("O item solicitado nao existe na lista. <br> <br>");
				}
			}
		} else {
			if (valor.equals("Inserir")) {
				codigo = Integer.valueOf(request.getParameter("codigo"));
				descricao = request.getParameter("descricao");
				carga = Integer.valueOf(request.getParameter("carga"));
				Disciplina x = disc.buscarPeloCodigo(codigo);
				if (x != null) {
					out.println("J� existe uma disciplina com este c�digo. <br> <br> ");
				} else {
					x = new Disciplina();
					out.println("Disciplina inserida: <br> <br>");
					x.setCodigo(codigo);
					x.setDescricao(descricao);
					x.setCargaHoraria(carga);
					disc.inserir(x);
				}
			} else if (valor.equals("Excluir")) {
				codigo = Integer.valueOf(request.getParameter("codigo"));
				Disciplina x;
				x = disc.buscarPeloCodigo(codigo);
				disc.excluir(x);
			} else if (valor.equals("Alterar")) {
				codigo = Integer.valueOf(request.getParameter("codigo"));
				descricao = request.getParameter("descricao");
				carga = Integer.valueOf(request.getParameter("carga"));
				Disciplina x;
				x = disc.buscarPeloCodigo(codigo);
				x.setCodigo(codigo);
				x.setDescricao(descricao);
				x.setCargaHoraria(carga);
				disc.alterar(x);
			}
			lista = disc.listarTodos();
			for (int i = 0; i < lista.size(); i++) {
				out.println("Descri��o: " + lista.get(i).getDescricao() + "<br>");
				out.println("C�digo: " + lista.get(i).getCodigo() + " <br>");
				out.println("Carga Hor�ria: " + lista.get(i).getCargaHoraria() + " <br> <br>");
			}
		}
	%>

</body>
</html>