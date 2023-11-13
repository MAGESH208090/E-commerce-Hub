package com.mk.Login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.UserBean;
import com.mk.UserDao;



public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() 
    {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String Email=request.getParameter("User_Email");
		String Password = request.getParameter("User_Pass");
		
		UserBean user= new UserBean(Email, Password);
		
		UserDao userdao=new UserDao();
		String check = userdao.login(user,request);
		
		if(check.equals("User login Successful"))
		{
			
			HttpSession session=request.getSession();
			session.setAttribute("email", Email);
			RequestDispatcher rd=request.getRequestDispatcher("MainPageModel.jsp");
			rd.forward(request, response);
		}
		
		else
		{
			request.setAttribute("ErrorMessage", check);
			RequestDispatcher rd=request.getRequestDispatcher("LoginModel.jsp");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
