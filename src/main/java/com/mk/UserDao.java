package com.mk;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserDao {
	
	String url="jdbc:mysql://localhost:3306/client";
	String uname="root";
	String pass ="Magesh@090802";
	
	private String dbdriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	 {
	 try {
	 Class.forName(dbDriver);
	 } catch (ClassNotFoundException e) {
	 
	 e.printStackTrace();
	 }
	 }
	public String insert(UserBean userDetails) {
	    loadDriver(dbdriver);
	    String result = "Data Entered Successfully";

	    try {
	        Connection con = DriverManager.getConnection(url, uname, pass);
	        String query = "INSERT INTO userinfo (name, email, phone_number, password) VALUES (?, ?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

	        String hashedPassword = BCrypt.hashpw(userDetails.getPassword(), BCrypt.gensalt());
	        ps.setString(1, userDetails.getName());
	        ps.setString(2, userDetails.getEmail());
	        ps.setString(3, userDetails.getPhone_no());
	        ps.setString(4, hashedPassword);

	        int affectedRows = ps.executeUpdate();

	        if (affectedRows > 0) {
	            ResultSet generatedKeys = ps.getGeneratedKeys();
	            if (generatedKeys.next()) {
	                int userId = generatedKeys.getInt(1);
	                System.out.println("User ID generated: " + userId);
	 
	            }
	            generatedKeys.close();
	        }

	        ps.close();
	        con.close();
	    } catch (SQLException e) {
	        result = "Data Not Entered Successfully";
	        e.printStackTrace();
	    }

	    return result;
	}

	public String login(UserBean userLogin, HttpServletRequest req) {
	    loadDriver(dbdriver);
	    String userData = "Invalid email or password";

	    try {
	        Connection con = DriverManager.getConnection(url, uname, pass);
	        String query = "SELECT * FROM userinfo WHERE email=?";
	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setString(1, userLogin.getEmail());
	        ResultSet rs = ps.executeQuery();

	        if (rs.next() && BCrypt.checkpw(userLogin.getPassword(), rs.getString("password"))) {

	            UserBean userinformation = new UserBean();

	            userData = "User login Successful";
	            userinformation.setUserid(rs.getInt(1)); 
	            userinformation.setName(rs.getString(2));
	            userinformation.setEmail(rs.getString(3));
	            userinformation.setPhone_no(rs.getString(4));

	            req.setAttribute("User", userinformation);

	            System.out.println(
	                rs.getString(2) + " : " + rs.getString(3) + " : " + rs.getString(4));
	        }

	        rs.close();
	        ps.close();
	        con.close();

	    } catch (SQLException e) {
	        e.printStackTrace();
	        userData = "Error occurred while processing your request";
	    }

	    return userData;
	}
	
	public String ProductDetails(HttpServletRequest req) {
		List<Product> products = new ArrayList<>();
	    loadDriver(dbdriver);
	    String prod="no products";

	    try {
	        Connection con = DriverManager.getConnection(url, uname, pass);
	        String query = "SELECT *  FROM products";
	        PreparedStatement ps = con.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            int productId = rs.getInt("product_id");
	            String productName = rs.getString("product_name");
	            double productPrice = rs.getDouble("product_price");
	            String productDescription = rs.getString("product_description");
	            System.out.println(productId + productDescription);
	            products.add(new Product(productId, productName, productPrice, productDescription));
	            prod="products available";
	        }

	        req.setAttribute("products", products);

	        rs.close();
	        ps.close();
	        con.close();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return prod;
	}
	
	public String insertProd(Product product) {
	    loadDriver(dbdriver);
	    String result = "Data Entered Successfully";

	    try {
	        Connection con = DriverManager.getConnection(url, uname, pass);
	        String query = "INSERT INTO products (product_name, product_price, product_description) VALUES (?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
	        
	        ps.setString(1, product.getProductName());
	        ps.setDouble(2, product.getProductPrice());
	        ps.setString(3, product.getProductDescription());

	        int affectedRows = ps.executeUpdate();

	        if (affectedRows > 0) {
	            ResultSet generatedKeys = ps.getGeneratedKeys();
	            if (generatedKeys.next()) {
	                int product_id = generatedKeys.getInt(1);
	                System.out.println("Product ID generated: " + product_id);
	 
	            }
	            generatedKeys.close();
	        }

	        ps.close();
	        con.close();
	    } catch (SQLException e) {
	        result = "Data Not Entered Successfully";
	        e.printStackTrace();
	    }

	    return result;
	}


}
