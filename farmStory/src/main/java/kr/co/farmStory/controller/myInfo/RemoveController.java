package kr.co.farmStory.controller.myInfo;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.UserService;

@WebServlet("/myInfo/removeUser.do")
public class RemoveController extends HttpServlet {

	private static final long serialVersionUID = -1513515373221949841L;
	private UserService service = UserService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		if(sessUser == null) {
			resp.sendRedirect("/farmStory/index.jsp");
			return;
		}
		
		String uid = sessUser.getUid();
		logger.debug("CheckUid: " + uid);
		
		// 유효한 uid인지 확인 후 삭제
		if (uid != null && !uid.isEmpty()) {
			service.removeUser(uid);
		}
		
		// 삭제 후, 메인 페이지로 리디렉션
		resp.sendRedirect("/farmStory/index.jsp");
	}
	
}
