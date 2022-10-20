package com.inventory.controller;

import java.io.IOException;

import com.inventory.web.dao.RegisterDao;
import com.inventory.web.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private RegisterDao registerDao;

	public void init() {
		registerDao = new RegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String emailId = request.getParameter("email");
		String phoneNumber = request.getParameter("phone");
//		String password = request.getParameter("password");

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmailId(emailId);
		user.setPhoneNumber(phoneNumber);
		user.setPassword("123");
		
		//
		if (firstName.isEmpty() || lastName.isEmpty() || emailId.isEmpty() || phoneNumber.isEmpty()) {
            RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
            System.out.println("<font color=red>Please fill all the fields</font>");
            rd.include(request, response);
        } else {
			try {
				registerDao.registerUser(user);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            RequestDispatcher rd = request.getRequestDispatcher("userDetails.jsp");
            rd.forward(request, response);
        }
		//
	
//        String userRegistered="";
//		try {
//			userRegistered=registerDao.registerUser(user);
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//		if(userRegistered.equals("SUCCESS")) {
//            request.getRequestDispatcher("/userDetails.jsp").forward(request, response);
//		}else {
//			request.setAttribute("errMessage", userRegistered);
//            request.getRequestDispatcher("/UserRegister.jsp").forward(request, response);
//		}
        
		// doGet(request, response);
	}

}
