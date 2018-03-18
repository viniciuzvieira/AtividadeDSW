<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.ProdutoDao,com.javatpoint.bean.Produto"%>

<%
    String id=request.getParameter("id");
    Produto u=ProdutoDao.getRecordById(Integer.parseInt(id));
%>

<h1>Editar Produto</h1>
<form action="editarProduto.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>Nome:</td><td><input type="text" name="nome"/></td></tr>
<tr><td>Descrição:</td><td><input type="text" name="Descricao"/></td></tr>
<tr><td>Preco Compra:</td><td><input type="text" name="precoCompra"/></td></tr>
<tr><td>Preco Venda:</td><td><input type="text" name="precoVenda"/></td></tr>
<tr><td>Quantidade:</td><td><input type="text" name="precoVenda"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Editar Produto"/></td></tr>
</table>
</form>

</body>
</html>