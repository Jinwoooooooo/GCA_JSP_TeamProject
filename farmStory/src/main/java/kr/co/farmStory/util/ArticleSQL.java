package kr.co.farmStory.util;

public class ArticleSQL {
	
	
	//CropStory
		public static final String INSERT_ARTICLE = "INSERT INTO `post` SET "
															+ "`uid`=?,"
															+ "`title`=?,"
															+ "`content`=?,"
															+ "`file`='cropStory',"
															+ "`cate`=?,"
															+ "`regip`=?,"
															+ "`wdate`=now()";
		
}
