package com.mk.Welcomepage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.Product;
import com.mk.UserDao;

/**
 * Servlet implementation class WelcomePageController
 */
@WebServlet("/MainPageController")
public class MainPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MainPageController()
    {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	     
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
