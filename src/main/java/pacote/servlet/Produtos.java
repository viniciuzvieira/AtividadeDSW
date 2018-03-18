package pacote.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Produtos")
public class Produtos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CadastrodoProduto.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		
		HttpSession session = request.getSession();
		List<String> produtos = (List<String>) session.getAttribute("lista");
		
		if (produtos == null) {
			produtos = new ArrayList<String>();
			session.setAttribute("lista", produtos);
		}
		
		produtos.add(nome);
		
		request.setAttribute("lista", produtos);
		request.getRequestDispatcher("ListaProdutos.jsp").forward(request, response);
	}

}
