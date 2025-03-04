package kr.co.farmStory.dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.FileDTO;
import kr.co.farmStory.util.ArticleSQL;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.SQL;

public class ArticleDAO extends DBHelper {
	
	private static final ArticleDAO instance = new ArticleDAO();
	public static ArticleDAO getIntance() {
		return instance;
	}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	private ArticleDAO() {}
	
	
	public int insertArticle(ArticleDTO dto) {
		
		int postNo = 0;
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.INSERT_ARTICLE);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getFile());
			pstmt.setString(5, dto.getWriter());
			pstmt.setString(6, dto.getRegip());
			
			pstmt.executeUpdate();
			
			// 글 번호 조회 쿼리 실행
			stmt = conn.createStatement();
			rs = stmt.executeQuery(ArticleSQL.SELECT_MAX_NO);
			if(rs.next()) {
				postNo = rs.getInt(1);
			}
			
			
			closeAll();
			
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return postNo;
	}
	
	public ArticleDTO selectArticle(String postNo) {
		
		ArticleDTO dto = null;
		
		List<FileDTO> files = new ArrayList<FileDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_ARTICLE_WITH_FILE);
			pstmt.setString(1, postNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				if(dto==null) {
					dto = new ArticleDTO();
					dto.setPostNo(rs.getInt(1));
					dto.setUid(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setContent(rs.getString(4));
					dto.setComment(rs.getInt(5));
					dto.setFile(rs.getInt(6));
					dto.setHit(rs.getInt(7));
					dto.setWriter(rs.getString(8));
					dto.setCate(rs.getString(9));
					dto.setRegip(rs.getString(10));
					dto.setWdate(rs.getString(11));
					
				}
				
				FileDTO filedto = new FileDTO();
				filedto = new FileDTO();
				filedto.setFno(rs.getInt(12));
				filedto.setPostNo(rs.getInt(13));
				filedto.setoName(rs.getString(14));
				filedto.setsName(rs.getString(15));
				filedto.setDownload(rs.getInt(16));
				filedto.setRdate(rs.getString(17));
				files.add(filedto);
				
			}
			
			dto.setFiles(files);
			
			closeAll();
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return dto;
		
	}
	
	public List<ArticleDTO> selectAllArticle() {
		
		List<ArticleDTO> articles = new ArrayList<ArticleDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_ALL_ARTICLE);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ArticleDTO dto = new ArticleDTO();
				dto.setPostNo(rs.getInt(1));
				dto.setUid(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setComment(rs.getInt(5));
				dto.setFile(rs.getInt(6));
				dto.setHit(rs.getInt(7));
				dto.setWriter(rs.getString(8));
				dto.setCate(rs.getString(9));
				dto.setRegip(rs.getString(10));
				dto.setWdate(rs.getString(11));
				articles.add(dto);
				
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return articles;
		
	}
	
	
	
}

