package kr.co.farmStory.util;

public class SQL {
	
	//User
	public static final String SELECT_COUNT_USER = "SELECT COUNT(*) FROM user ";
	public static final String SELECT_ALL_USER = "SELECT * FROM user ";
	public static final String SELECT_USER = "SELECT * FROM user WHERE uid = ? and pass = SHA2(?, 256)";
	public static final String WHERE_UID = "WHERE uid=?";
	public static final String WHERE_NICK = "WHERE nick=?";
	public static final String WHERE_EMAIL = "WHERE email=?";
	public static final String WHERE_HP = "WHERE hp=?";
	public static final String INSERT_USER = "INSERT INTO user SET "
															+ "uid = ?,"
															+ "pass = SHA2(?, 256),"
															+ "name = ?,"
															+ "nick = ?,"
															+ "email = ?,"
															+ "hp = ?,"
															+ "zip = ?,"
															+ "addr1 = ?,"
															+ "addr2 = ?,"
															+ "regip = ?,"
															+ "regDate = NOW()";
}
