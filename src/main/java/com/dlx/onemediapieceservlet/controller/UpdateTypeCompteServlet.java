package com.dlx.onemediapieceservlet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dlx.onemediapieceservlet.service.TypeCompteService;
import com.dlx.onemediapieceservlet.service.impl.TypeCompteServiceImpl;
import com.dlx.onemediapieceservlet.model.TypeCompte;

/**
 * Servlet implementation class UpdateTypeCompteServlet
 */
@WebServlet("/UpdateTypeCompte")
public class UpdateTypeCompteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String URL = "/WEB-INF/UpdateTypeCompte.jsp";
	
	private final TypeCompteService service =TypeCompteServiceImpl.getInstance();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTypeCompteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		request.getServletContext().getRequestDispatcher(URL).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String typeCompteLabel = request.getParameter("label");
		String id = request.getParameter("id");
		
		long idTypeCompte= Long.parseLong(id);
		
		TypeCompte tc = new TypeCompte();
		
		tc = service.find(idTypeCompte);
		
		tc.setLabel(typeCompteLabel);
		
		tc = service.update(tc);
		
		request.getServletContext().getRequestDispatcher(URL).forward(request, response);
	}

}
