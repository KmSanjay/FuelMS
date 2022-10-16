package com.inventory.web;

import java.io.IOException;

import org.eclipse.jdt.internal.compiler.apt.dispatch.RoundDispatcher;

import com.inventory.web.dao.AlienDao;
import com.inventory.web.model.Alien;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetAlienController
 */
public class GetAlienController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int aid=Integer.parseInt(request.getParameter("aid"));
		AlienDao alienDao= new AlienDao();
		Alien a1 = alienDao.getAlien(aid);
		
		request.setAttribute("alien", a1);
		RequestDispatcher rd = request.getRequestDispatcher("showAlien.jsp");
		rd.forward(request, response);
	}
}
