package kr.co.farmStory.controller.comment;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.service.CommentService;

@WebServlet("/comment/remove.do")
public class RemoveCommentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private CommentService service = CommentService.instance;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    
		String cno = req.getParameter("cno");
	    String postNo = req.getParameter("postNo"); // postNo를 요청에서 가져옴

	    
	    logger.debug("cno : " + cno);
	    logger.debug("postNo : " + postNo);

	    service.deleteComment(cno);

	    
	    //req.getRequestDispatcher("/farmStory/cropStory/cropStoryView.do?postNo=" + postNo).forward(req, resp);
	    
	    resp.sendRedirect("/farmStory/cropStory/cropStoryView.do?postNo=" + postNo);
	    
	
	}

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
}
