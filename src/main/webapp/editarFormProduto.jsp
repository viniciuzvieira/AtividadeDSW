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
    <tr><td>Nome:</td><td><input type="text" name="nome" value="<%=u.getNome()%>"/></td></tr>
    <tr><td>Descri��o:</td><td><input type="text" name="descricao" value="<%=u.getDescricao()%>"/></td></tr>
    <tr><td>Preco Compra:</td><td><input type="text" name="precoCompra" value="<%=u.getPrecoCompra()%>"/></td></tr>
    <tr><td>Preco Venda:</td><td><input type="text" name="precoVenda" value="<%=u.getPrecoVenda()%>"/></td></tr>
    <tr><td>Quantidade:</td><td><input type="text" name="quantidade" value="<%=u.getQuantidade()%>"/></td></tr>
    <tr><td colspan="2"><input type="submit" value="Editar Produto"/></td></tr>
</table>
</form>

</body>
</html>