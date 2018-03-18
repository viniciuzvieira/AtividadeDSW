package pacote.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Editar
 */
@WebServlet("/editar")
public class Editar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
                String descricao   = request.getParameter("descricao");
                double precoCompra = Double.parseDouble(request.getParameter("precoCompra"));
                double precoVenda  = Double.parseDouble(request.getParameter("precoVenda"));
                int quantidade     = Integer.parseInt(request.getParameter("quantidade"));
                
		
		request.setAttribute("nome", nome);
		request.getRequestDispatcher("editarProduto.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> lista = (List<String>)request.getSession().getAttribute("lista");
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		
		lista.remove(id);
		lista.add(nome);
		
		request.setAttribute("lista", lista);
		request.getRequestDispatcher("ListaProdutos.jsp").forward(request, response);
	}

}
