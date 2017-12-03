<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form name="form" action="crudDisciplina.jsp" method="get">
		<I>Código: </I>
		<input type="text" name="codigo" /> <br>
		<I>Descrição: </I>
		<input type="text" name="descricao" /> <br>
		<I>Carga Horária: </I>
		<input type="text" name="carga" /> <br>
		<input type="submit" name="crud" value="Inserir" />
		<input type="submit" name="crud" value="Alterar" />
		<input type="submit" name="crud" value="Excluir" />
		<input type="submit" name="crud" value="Pesquisar" />
	</form>

</body>
</html>