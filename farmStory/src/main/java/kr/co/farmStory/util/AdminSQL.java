package kr.co.farmStory.util;

public class AdminSQL {
	
	// 관리자 메인 리스트
	public static final String SELECT_ALL_MAIN_PRO = "SELECT `pid`,`pName`,`types`, `price`,`stock`,`pDate` FROM `product`";
	
	//  상품등록
	public static final String INSERT_PRODUCT = "insert into `product` SET pid = ?, pName = ?, types = ?, price = ?, point = ?, discount = ?, charge = ?, stock = ?, pDate = NOW(), pImage = ?, other = ?";

	
	// 상품목록
	public static final String SELECT_ALL_PRODUCT = "SELECT `pid`, `pName`, `types`, `price`, `stock`, `pDate` FROM `product`";

	
	

}
