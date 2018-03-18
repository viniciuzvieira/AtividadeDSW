<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=uft-8">
<title>Produtos</title>
</head>
<body>

<%@page import="com.javatpoint.dao.ProdutoDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Produtos</h1>

<%
List<Produto> list=ProdutoDao.pegarProdutos();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Nome</th><th>Descrição</th><th>Preço da compra</th><th>Preço da Venda</th><th>Quantidade</th><th>Editar</th><th>Deletar</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getNome()}</td><td>${u.getDescricao()}</td><td>${u.getPrecoCompra()}</td><td>${u.getPrecoVenda()}</td><td>${u.getQuantidade()}</td><td><a href="editarProduto.jsp?id=${u.getId()}">Editar</a></td><td><a href="deletaProduto.jsp?id=${u.getId()}">Deletar</a></td></tr>
</c:forEach>
</table>
<br/><a href="formProduto.jsp">Adicionar</a>

</body>
</html>