package kr.co.farmStory.util;

public class ArticleSQL {
	
	
	//CropStory
	public static final String INSERT_ARTICLE = "insert into `post` set "
																+ "`uid`=?,"
																+ "`title`=?,"
																+ "`content`=?,"
																+ "`file`=?,"
																+ "`writer`=?,"
																+ "`cate`='cropStory',"
																+ "`regip`=?,"
																+ "`wdate`=now()";
	
	

	public static final String SELECT_ARTICLE = "select * from `post` where `postNo`=?";
	
	public static final String SELECT_ARTICLE_WITH_FILE = "select p.*, f.* from `post` as p "
																		+ "join `file` as f"
																		+ "on p.postNo=f.postNo "
																		+ "where a.postNo=?";
	
	
	public static final String SELECT_ALL_ARTICLE = "select * from `post`"
															+ "order by `postNo` desc";
	
	public static final String SELECT_MAX_NO = "SELECT MAX(`postNo`) FROM `post`";
	
	
}
