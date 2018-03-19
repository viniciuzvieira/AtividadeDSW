<%@page import="com.dao.ProdutoDao"%>
<jsp:useBean id="u" class="com.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
ProdutoDao.delete(u);
response.sendRedirect("consultaProduto.jsp");
%>