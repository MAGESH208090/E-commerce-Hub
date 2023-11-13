package com.mk.Welcomepage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.Product;
import com.mk.UserBean;
import com.mk.UserDao;


@WebServlet("/ProductCreateController")
public class ProductCreateController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
   
    public ProductCreateController() 
    {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		PrintWriter out=response.getWriter();
		
		
		String Productname=request.getParameter("prodName");
    	double ProductPrice=Double.parseDouble(request.getParameter("price"));
    	String ProductDescription=request.getParameter("description");
    	
    	Product product=new Product(Productname, ProductPrice, ProductDescription);
		UserDao userdao = new UserDao();
		String insert = userdao.insertProd(product);
		
		String redirectUrl="";
		
		if(insert.equals("Data Entered Successfully"))
		{
			redirectUrl="MainPageModel.jsp";
		}
		else
		{
			redirectUrl="Services.jsp";
		}
		
		response.sendRedirect(redirectUrl);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		doGet(request, response);
	}

}
