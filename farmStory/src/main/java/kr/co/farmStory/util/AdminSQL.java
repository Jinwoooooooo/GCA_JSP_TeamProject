package kr.co.farmStory.util;

public class AdminSQL {
	
	
	public static final String INSERT_PRODUCT = "insert into `product` values (?,?,?,?,?,?,?,?,?,?,NOW())";

	public static final String SELECT_ALL_PRODUCT = "SELECT `pid`, `pName`, `types`, `price`, `stock`, `pDate` FROM `product`";
}
