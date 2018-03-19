<%@page import="com.dao.ProdutoDao"%>
<jsp:useBean id="u" class="com.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ProdutoDao.update(u);
response.sendRedirect("consultaProduto.jsp");
%>