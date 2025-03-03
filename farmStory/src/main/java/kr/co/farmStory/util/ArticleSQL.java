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
		
}
