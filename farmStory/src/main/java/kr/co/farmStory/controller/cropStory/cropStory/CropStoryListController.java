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

@WebServlet("/cropStory/cropStoryList.do")
public class CropStoryListController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ArticleService service = ArticleService.INSTANCE;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<ArticleDTO> articles = service.findAllArticle();
		
		req.setAttribute("articles", articles);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/cropStory/cropStoryList.jsp");
		dispatcher.forward(req, resp);
	
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
	}
	
}
