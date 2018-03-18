<%@page import="com.javatpoint.dao.ProdutoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Produto"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i=ProdutoDao.save(u);
    if(i>0){
    response.sendRedirect("adduser-success.jsp");
    }else{
    response.sendRedirect("adduser-error.jsp");
    }
%>