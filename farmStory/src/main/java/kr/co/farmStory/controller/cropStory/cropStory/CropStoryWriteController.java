package kr.co.farmStory.controller.cropStory.cropStory;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.service.ArticleService;

@WebServlet("/cropStory/cropStoryWrite.do")
public class CropStoryWriteController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private ArticleService service = ArticleService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/cropStory/cropStoryWrite.jsp");
		dispatcher.forward(req, resp);
	
	
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 데이터 수신
		String uid = req.getParameter("uid");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String file = req.getParameter("file");
		String writer = req.getParameter("writer");
		String regip = req.getRemoteAddr();
		
		
		
		ArticleDTO dto = new ArticleDTO();
		dto.setUid(uid);
		dto.setTitle(title);
		dto.setContent(content);
		//dto.setFile(file);
		dto.setWriter(writer);
		dto.setRegip(regip);
		
		logger.debug(dto.toString());
		
		service.registeArticle(dto);
		
		
		resp.sendRedirect("/farmStory/cropStory/cropStoryList.do");
				
	}
	
	
}
