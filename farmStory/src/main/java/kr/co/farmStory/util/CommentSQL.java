package kr.co.farmStory.util;

public class CommentSQL {
	
	public static final String INSERT_COMMENT = "INSERT INTO `comment` SET "
															+ "`postNo`= ?,"
															+ "`content`=?,"
															+ "`writer`=?,"
															+ "`regip`=?,"
															+ "`wdate`=NOW()";
	
	public static final String SELECT_ALL_COMMENT = "SELECT * FROM `comment` where `cno`=?";
	
	public static final String SELECT_ALL_COMMENT_BY_POSTNO = "SELECT * "
																	+ "FROM `comment` "
																	+ "WHERE `postNo`=? "
																	+ "ORDER BY `cno` ASC";
	
}
