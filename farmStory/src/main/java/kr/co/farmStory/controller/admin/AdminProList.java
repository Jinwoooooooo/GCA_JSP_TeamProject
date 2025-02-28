package kr.co.farmStory.controller.admin;

import java.io.IOException;
import java.util.List;

import DTO.AdminDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AdminService;

@WebServlet("/adminMain/adminProList.do")
public class AdminProList  extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private AdminService service = AdminService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/adminProductManagement/adminProduct.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
