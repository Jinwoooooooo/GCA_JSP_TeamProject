package kr.co.farmStory.controller.myInfo;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.UserService;

@WebServlet("/myInfo/modifyInfo.do")
public class ModifyController extends HttpServlet {

	private static final long serialVersionUID = -8348817414728702534L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private UserService service = UserService.INSTANCE;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		if (sessUser == null) {
		    resp.sendRedirect("/farmStory/index.jsp");
		    return;
		}
		
		String uid = sessUser.getUid();
		UserDTO dto = service.findUserId(uid);
		req.setAttribute("user", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/myInfo/modifyInfo.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String nick = req.getParameter("nick");
		String email = req.getParameter("email");
		String hp = req.getParameter("hp");
		String zip = req.getParameter("zip");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		String regDate = req.getParameter("regDate");
		
		UserDTO dto = new UserDTO();
		dto.setPass(pass);
		dto.setName(name);
		dto.setNick(nick);
		dto.setEmail(email);
		dto.setHp(hp);
		dto.setZip(zip);
		dto.setAddr1(addr1);
		dto.setAddr2(addr2);
		dto.setRegDate(regDate);
		
		service.modifyUser(dto);
		
		resp.sendRedirect("/farmStory/index.jsp");
	}
	
}
