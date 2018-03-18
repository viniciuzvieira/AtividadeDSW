package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Produto;
public class ProdutoDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("org.gjt.mm.mysql.Driver");
		con=DriverManager.getConnection("jdbc:mysql://186.202.152.53/miteste?autoReconnect=true","miteste","startup258");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Produto u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into produto(nome,descricao,precoCompra,precoVenda,quantidade) values(?,?,?,?,?)");
		ps.setString(1,u.getNome());
		ps.setString(2,u.getDescricao());
		ps.setDouble(3,u.getPrecoCompra());
		ps.setDouble(4,u.getPrecoVenda());
		ps.setInt(5,u.getQuantidade());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Produto u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update produto set nome=?,descricao=?,precoCompra=?,precoVenda=?,quantidade=? where id=?");
		ps.setString(1,u.getNome());
		ps.setString(2,u.getDescricao());
		ps.setDouble(3,u.getPrecoCompra());
		ps.setDouble(4,u.getPrecoVenda());
		ps.setInt(5,u.getQuantidade());
		ps.setInt(6,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Produto u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from produto where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Produto> pegarProdutos(){
	List<Produto> list=new ArrayList<Produto>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from produto");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Produto u=new Produto();
			u.setId(rs.getInt("id"));
			u.setNome(rs.getString("nome"));
			u.setDescricao(rs.getString("descricao"));
			u.setPrecoCompra(rs.getDouble("precoCompra"));
			u.setPrecoVenda(rs.getDouble("precoVenda"));
			u.setQuantidade(rs.getInt("quantidade"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Produto getRecordById(int id){
	Produto u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from produtos where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Produto();
			u.setId(rs.getInt("id"));
			u.setNome(rs.getString("nome"));
			u.setDescricao(rs.getString("descricao"));
			u.setPrecoCompra(rs.getDouble("precoCompra"));
			u.setPrecoVenda(rs.getDouble("precoVenda"));
			u.setQuantidade(rs.getInt("quantidade"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
