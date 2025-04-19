package com.mediconnect.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.mediconnect.model.UserModel;
import com.mediconnect.service.LoginService;
import com.mediconnect.util.CookiesUtil;
import com.mediconnect.util.RedirectionUtil;
import com.mediconnect.util.SessionUtil;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	LoginService loginService;
	RedirectionUtil redirectionUtil;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        this.loginService = new LoginService();
        this.redirectionUtil = new RedirectionUtil();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserModel userModel = new UserModel(username, password);
		Boolean loginStatus = loginService.loginUser(userModel);
		String userRole = loginService.getUserRole(username);

		if(userRole == null) {
			System.out.println("User Role is null");
			return;
		}
		
		if(loginStatus != null && loginStatus) {
			SessionUtil.setAttribute(request, "username", username);
			SessionUtil.setAttribute(request, "role", userRole);
			if(userRole.equals("Admin")) {
				CookiesUtil.addCookie(response, "role", "admin", 5 * 30);
				redirectionUtil.redirectToPage(request, response, "AdminDashboard");
			}else if(userRole.equals("Customer")) {
				CookiesUtil.addCookie(response, "role", "customer", 5 * 30);
				redirectionUtil.redirectToPage(request, response, "index");
			}
		}else {
			handleLoginFailure(request, response, loginStatus);
		}
	}
	
	private void handleLoginFailure(HttpServletRequest request, HttpServletResponse response, Boolean loginStatus)
			throws ServletException, IOException {
		String errorMessage;
		if (loginStatus == null) {
			errorMessage = "Our server is under maintenance. Please try again later!";
		} else {
			errorMessage = "User credential mismatch. Please try again!";
		}
		request.setAttribute("error", errorMessage);
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

}