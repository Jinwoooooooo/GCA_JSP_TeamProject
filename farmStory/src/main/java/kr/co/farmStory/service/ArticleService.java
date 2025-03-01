package kr.co.farmStory.service;

import kr.co.farmStory.dao.ArticleDAO;
import kr.co.farmStory.dto.ArticleDTO;

public enum ArticleService {
	
	INSTANCE;
	private ArticleDAO dao = ArticleDAO.getIntance();
	
	public void registeArticle(ArticleDTO dto) {
		dao.insertArticle(dto);
	}
	
	

}
