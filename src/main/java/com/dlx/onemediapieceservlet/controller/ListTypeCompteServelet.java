package com.dlx.onemediapieceservlet.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dlx.onemediapieceservlet.model.TypeCompte;
import com.dlx.onemediapieceservlet.service.TypeCompteService;
import com.dlx.onemediapieceservlet.service.impl.TypeCompteServiceImpl;

/**
 * Servlet implementation class AddTypeCompteServelet
 */
@WebServlet("/ListTypeCompte")
public class ListTypeCompteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private  final  TypeCompteService service = TypeCompteServiceImpl.getInstance();
       
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<TypeCompte> typeComptes = service.findAll();
		request.setAttribute("typeComptes", typeComptes);
		request.getServletContext().getRequestDispatcher("/WEB-INF/TypeCompteList.jsp").forward(request, response);
	}

}
