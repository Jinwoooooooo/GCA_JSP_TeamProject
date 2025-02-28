package kr.co.farmStory.dao;

import kr.co.farmStory.dto.FileDTO;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.FileSQL;

public class FileDAO extends DBHelper{

	private static final FileDAO instance = new FileDAO();
	public static FileDAO getInstance() {
		return instance;
	}
	
	private FileDAO() {}
	
	public void insertFile(FileDTO dto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(FileSQL.INSERT_FILE);
			pstmt.setInt(1, dto.getPostNo());
			pstmt.setString(2, dto.getoName());
			pstmt.setString(3, dto.getsName());
			pstmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
