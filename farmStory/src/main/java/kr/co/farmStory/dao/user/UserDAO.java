package kr.co.farmStory.dao.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.SQL;

public class UserDAO extends DBHelper {
	
	private static final UserDAO INSTANCE = new UserDAO();
	public static UserDAO getInstance() {
		return INSTANCE;
	}
	private UserDAO() {}
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertUser(UserDTO dto) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.INSERT_USER);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getNick());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getHp());
			pstmt.setString(7, dto.getZip());
			pstmt.setString(8, dto.getAddr1());
			pstmt.setString(9, dto.getAddr2());
			pstmt.setString(10, dto.getRegip());
			pstmt.executeUpdate();
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public int selectCountUser(String type, String value) {
		
		int count = 0;
		
		//String 불변성을 고려해 StringBuilder로 동적 SQL 생성
		StringBuilder sql = new StringBuilder(SQL.SELECT_COUNT_USER);
		
		if(type.equals("uid")) {
			sql.append(SQL.WHERE_UID);
		} else if(type.equals("nick")) {
			sql.append(SQL.WHERE_NICK);
		} else if(type.equals("email")) {
			sql.append(SQL.WHERE_EMAIL);
		} else if(type.equals("hp")) {
			sql.append(SQL.WHERE_HP);
		}
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, value);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return count;
	}
	
	public UserDTO selectUser(UserDTO dto) {
		
		UserDTO userDTO = null; 
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.SELECT_USER);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getPass());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDTO = new UserDTO();
				userDTO.setUid(rs.getString(1));
				userDTO.setPass(rs.getString(2));
				userDTO.setName(rs.getString(3));
				userDTO.setNick(rs.getString(4));
				userDTO.setEmail(rs.getString(5));
				userDTO.setHp(rs.getString(6));
				userDTO.setRole(rs.getString(7));
				userDTO.setPoint(rs.getInt(8));
				userDTO.setZip(rs.getString(9));
				userDTO.setAddr1(rs.getString(10));
				userDTO.setAddr2(rs.getString(11));
				userDTO.setRegip(rs.getString(12));
				userDTO.setRegDate(rs.getString(13));
				userDTO.setLeaveDate(rs.getString(14));
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return userDTO;
	}
}
