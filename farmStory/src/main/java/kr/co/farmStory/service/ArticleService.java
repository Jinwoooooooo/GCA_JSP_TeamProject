package kr.co.farmStory.service;

import java.util.List;

import kr.co.farmStory.dao.ArticleDAO;
import kr.co.farmStory.dto.ArticleDTO;

public enum ArticleService {
	
	INSTANCE;
	private ArticleDAO dao = ArticleDAO.getIntance();
	
	public int registeArticle(ArticleDTO dto) {
		return dao.insertArticle(dto);
	}
	
	
	public ArticleDTO findArticle(String postNo) {
		return dao.selectArticle(postNo);
	}
	
	public List<ArticleDTO> findAllArticle() {
		return dao.selectAllArticle();
	}
	
	
	
	
}
