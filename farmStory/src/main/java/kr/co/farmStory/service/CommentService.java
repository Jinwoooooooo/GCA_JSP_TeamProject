package kr.co.farmStory.service;


import java.util.List;

import kr.co.farmStory.dao.CommentDAO;
import kr.co.farmStory.dto.CommentDTO;

public enum CommentService {
		
	instance;
	private CommentDAO dao = CommentDAO.getInstance();
	
	
	public CommentDTO registerComment(CommentDTO dto) {
		
		int generatedKey = dao.insertComment(dto);
		
		return dao.selectComment(generatedKey);
		
	}
	
	
	public CommentDTO findComment(int cno) {
		return dao.selectComment(cno);
	}
	
	public List<CommentDTO> findAllComment(String postNo) {
		return dao.selectAllComment(postNo);
	}
	
	public CommentDTO modifyComment(CommentDTO dto) {
		return dao.updateComment(dto);
	}
	
	public void deleteComment(String cno) {
		dao.deleteComment(cno);
	}

	
}
