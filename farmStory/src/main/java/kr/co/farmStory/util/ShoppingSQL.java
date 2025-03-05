package kr.co.farmStory.util;

public class ShoppingSQL {

	// 장보기 전체 리스트
	public static final String SELECT_SHOPPING_PRO = "SELECT `types`, `pName`, `discount`, `point`, `price` FROM `product`";


	// 과일 조회
	public static final String SELECT_FRUIT = "SELECT `types`, `pName`, `discount`, `point`, `price` FROM `product` WHERE `types` = ?";
	
	// 야채 조회
	public static final String SELECT_VEGETABLE= "SELECT `types`, `pName`, `discount`, `point`, `price` FROM `product` WHERE `types` = ?";
	
	// 곡류 조회
	public static final String SELECT_GRAINS = "SELECT `types`, `pName`, `discount`, `point`, `price` FROM `product` WHERE `types` = ?";
	
}
