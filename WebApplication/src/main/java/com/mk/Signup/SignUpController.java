package com.mk.Signup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import com.mk.UserBean;
import com.mk.UserDao;

public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SignUpController() 
    {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		PrintWriter out=res.getWriter();
		
		
		String name=req.getParameter("Name");
    	String email=req.getParameter("Email");
    	String phone_no=req.getParameter("Phone_Number");
    	String password = req.getParameter("User_Password");
    	
    	UserBean user=new UserBean(name, email, phone_no, password);
		UserDao userdao = new UserDao();
		String insert = userdao.insert(user);
		
		String redirectUrl="";
		
		if(insert.equals("Data Entered Successfully"))
		{
			redirectUrl="LoginModel.jsp";
		}
		else
		{
			redirectUrl="SignUpModel.jsp";
		}
		
		res.sendRedirect(redirectUrl);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}
