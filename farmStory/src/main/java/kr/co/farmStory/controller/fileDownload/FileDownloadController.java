package kr.co.farmStory.controller.fileDownload;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.FileDTO;
import kr.co.farmStory.service.FileService;

@WebServlet("/file/download.do")
public class FileDownloadController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private FileService service = FileService.instance;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fno = req.getParameter("fno");
		
		FileDTO filedto = service.findFile(fno);
		service.downloadCountUp(fno);
		
		
		req.setAttribute("filedto", filedto);
		
		
		
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
	}
	
	
	
	
}
