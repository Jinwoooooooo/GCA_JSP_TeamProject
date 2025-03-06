package kr.co.farmStory.util;

public class ShoppingSQL {

	// 장보기 전체 리스트
	public static final String SELECT_ALL_SHOPPING_PRO = "SELECT f.`sName`, p.`types`, p.`pName`, p.`discount`, p.`point`, p.`price` FROM `product` AS p\r\n"
			+ "JOIN `profile` AS f ON p.pid = f.proId";


	// 카테별 조회?
	public static final String SELECT_ALL_WHERE_PRO = "SELECT f.`sName`, p.`types`, p.`pName`, p.`discount`, p.`point`, p.`price` FROM `product` AS p "
			+ "JOIN `profile` AS f ON p.pid = f.proId "
			+ "WHERE p.`types`= ?";
	
}
