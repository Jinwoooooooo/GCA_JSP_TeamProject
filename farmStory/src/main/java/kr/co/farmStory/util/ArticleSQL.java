package kr.co.farmStory.util;

public class ArticleSQL {
	
	
	//CropStory
	public static final String INSERT_ARTICLE = "insert into `post` set "
																+ "`uid`=?,"
																+ "`title`=?,"
																+ "`content`=?,"
																+ "`file`=?,"
																+ "`nick`=?,"
																+ "`cate`='cropStory',"
																+ "`regip`=?,"
																+ "`wdate`=now()";
	
	

	public static final String SELECT_ARTICLE = "select * from `post` where `postNo`=? and `cate`='cropStory'";
	
	public static final String SELECT_ARTICLE_WITH_FILE = "SELECT p.*, f.* FROM `post` AS p "
																		+ "left JOIN `file` AS f "
																		+ "ON p.postNo=f.postNo "
																		+ "WHERE p.postNo=? and p.cate='cropStory'";
	
	
	public static final String SELECT_ALL_ARTICLE = "select * from `post` as p "
															+ "LEFT JOIN `user` AS u "
															+ "ON u.uid=p.uid "
															+ "WHERE `cate`='cropStory' "
															+ "order by `postNo` desc "
															+ "LIMIT ?, 10";
	
	public static final String SELECT_MAX_NO = "SELECT MAX(`postNo`) FROM `post`"
																	+ "where `cate`='cropStory'";
	
	
	public static final String SELECT_COUNT_ARTICLE = "SELECT COUNT(*) FROM `post` where `cate`='cropStory'";
	
	
	
	public static final String UPDATE_ARTICLE = "UPDATE `post` SET "
														+ "`title`= ?, "
														+ "`content`= ? "
														+ "WHERE `postNo`=?";
	
	public static final String DELETE_ARTICLE = "delete from `post` where `postNo`=? and `cate`='cropStory'";
	
}
