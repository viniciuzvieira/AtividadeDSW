<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estiloEditaProd.css" rel="stylesheet">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.dao.ProdutoDao,com.bean.Produto"%>

<%
String id=request.getParameter("id");
Produto u=ProdutoDao.getRecordById(Integer.parseInt(id));
%>

<h1>Editar Produto</h1>
    <form action="editarProduto.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
    <tr><td>Nome:</td><td><input type="text" name="nome" value="<%=u.getNome()%>"/></td></tr>
    <tr><td>Descrição:</td><td><input type="text" name="descricao" value="<%=u.getDescricao()%>"/></td></tr>
    <tr><td>Preço Compra:</td><td><input type="text" name="precoCompra" value="<%=u.getPrecoCompra()%>"/></td></tr>
    <tr><td>Preço Venda:</td><td><input type="text" name="precoVenda" value="<%=u.getPrecoVenda()%>"/></td></tr>
    <tr><td>Quantidade:</td><td><input type="text" name="quantidade" value="<%=u.getQuantidade()%>"/></td></tr>
    <tr><td colspan="2"><input type="submit" value="Editar Produto"/></td></tr>
</table>
</form>

</body>
</html>
