package kr.co.farmStory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.dto.ProFileDTO;
import kr.co.farmStory.service.AdminService;
import kr.co.farmStory.service.ProFileService;



@WebServlet("/adminPro/register.do")
@MultipartConfig( 
	    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	    maxFileSize = 1024 * 1024 * 10,      // 10MB (파일 하나의 최대 크기)
	    maxRequestSize = 1024 * 1024 * 50    // 50MB (전체 요청 크기)
	    )
public class AdminProRegister extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private AdminService service = AdminService.INSTANCE;
	
	private ProFileService ProfileService = ProFileService.instance;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// View forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/adminProductManagement/adminProductR.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pid = req.getParameter("pid");
		String pName = req.getParameter("pName");
		String types = req.getParameter("types");
		String price = req.getParameter("price");
		String point = req.getParameter("point");		
		String discount = req.getParameter("discount");
		String charge = req.getParameter("charge");
		String stock = req.getParameter("stock");
		String pImage = req.getParameter("pImage");
		String other = req.getParameter("other");
		
		//List<ProFileDTO> profiles = ProfileService.uploadFile(req);
		
		AdminDTO dto = new AdminDTO();
		dto.setPid(pid);
		dto.setpName(pName);
		dto.setTypes(types);
		dto.setPrice(price);
		dto.setPoint(point);
		dto.setDiscount(discount);
		dto.setCharge(charge);
		dto.setStock(stock);
		dto.setpImage(pImage);
		dto.setOther(other);

		
		service.registerProduct(dto);
		
		resp.sendRedirect("/farmStory/adminMain/list.do");
	}
	
	
}
