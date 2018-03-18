<%@page import="com.javatpoint.dao.ProdutoDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ProdutoDao.update(u);
response.sendRedirect("consultaProduto.jsp");
%>