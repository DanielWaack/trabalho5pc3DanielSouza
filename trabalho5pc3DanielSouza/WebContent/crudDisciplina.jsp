<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Olar</title>
</head>
<body>
	<%@ page import="br.com.prog3.trabalho5pc3.DanielSouza.*"%>
	<%
		String valor = request.getParameter("crud");
		Integer codigo = Integer.valueOf(request.getParameter("codigo"));
		String descricao = request.getParameter("descricao");
		Integer carga = Integer.valueOf(request.getParameter("carga"));
	%>
	<%
	List<Disciplina> lista = new ArrayList<>();
	CrudDisciplina disc = new CrudDisciplina();
	lista = disc.listarTodos();
	if (valor.equals("Pesquisar")) {
			for(int i=0; i<lista.size();i++){
				out.println("Descrição: " + lista.get(i).getDescricao() + "<br>"); 
				out.println("Código: " + lista.get(i).getCodigo() + ". <br>"); 
				out.println("Carga Horária: " + lista.get(i).getCargaHoraria() + ". <br> <br>");
			}
	%>
	<%
		} else if(valor.equals("Inserir")){
			Disciplina x = new Disciplina();
			x.setCodigo(codigo);
			x.setDescricao(descricao);
			x.setCargaHoraria(carga);
			lista.add(x);
		} else if (valor.equals("Excluir")){
			Disciplina x = new Disciplina();
			x.setCodigo(codigo);
			x.setDescricao(descricao);
			x.setCargaHoraria(carga);
			lista.add(x);			
		}
	%>

</body>
</html>