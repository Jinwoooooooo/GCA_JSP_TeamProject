package kr.co.farmStory.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.util.ArticleSQL;
import kr.co.farmStory.util.DBHelper;

public class ArticleDAO extends DBHelper {
	
	private static final ArticleDAO instance = new ArticleDAO();
	public static ArticleDAO getIntance() {
		return instance;
	}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	private ArticleDAO() {}
	
	
	public void insertArticle(ArticleDTO dto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.INSERT_ARTICLE);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getFile());
			pstmt.setString(5, dto.getRegip());
			
			pstmt.executeUpdate();
			
			closeAll();
			
			
			
		} catch (Exception e) {
			logger.debug(e.getMessage());
		}
		
	}
	
	
	
}

