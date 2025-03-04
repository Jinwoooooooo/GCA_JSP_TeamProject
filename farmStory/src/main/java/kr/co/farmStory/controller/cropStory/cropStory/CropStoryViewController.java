package kr.co.farmStory.controller.cropStory.cropStory;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.CommentDTO;
import kr.co.farmStory.service.ArticleService;
import kr.co.farmStory.service.CommentService;

@WebServlet("/cropStory/CropStoryView.do")
public class CropStoryViewController extends HttpServlet{


	private static final long serialVersionUID = 1L;
	
	private ArticleService service = ArticleService.INSTANCE;
	private CommentService commentService = CommentService.instance;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 글번호 수신
		String postNo = req.getParameter("postNo");
		
		// 글 조회 서비스 호출
		ArticleDTO articledto = service.findArticle(postNo);
		
		List<CommentDTO> comments = commentService.findAllComment(postNo);
		
		req.setAttribute("articledto", articledto);
		req.setAttribute("comments", comments);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/cropStory/cropStoryView.jsp");
		dispatcher.forward(req, resp);
	
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
}
