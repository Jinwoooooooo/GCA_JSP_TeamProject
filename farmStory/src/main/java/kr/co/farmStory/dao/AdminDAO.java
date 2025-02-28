package kr.co.farmStory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.util.AdminSQL;
import kr.co.farmStory.util.DBHelper;

public class AdminDAO extends DBHelper{
	private static final AdminDAO instance = new AdminDAO();
	public static AdminDAO getIntance() {
		return instance;
	}
	
	private AdminDAO() {}
	
	public void insertAdminPro(AdminDTO dto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(AdminSQL.INSERT_PRODUCT);
			pstmt.setInt(1, dto.getPid());
			pstmt.setString(2, dto.getpName());
			pstmt.setString(3, dto.getTypes());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setInt(5, dto.getDiscount());
			pstmt.setInt(6, dto.getCharge());
			pstmt.setInt(7, dto.getStock());
			pstmt.setString(8, dto.getpImage());
			pstmt.setString(9, dto.getOther());
			
			pstmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public List<AdminDTO> selectAllPro() {
		
		List<AdminDTO> Products = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(AdminSQL.SELECT_ALL_PRODUCT);
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setPid(rs.getInt(1));
				dto.setpName(rs.getString(2));
				dto.setTypes(rs.getString(3));
				dto.setPrice(rs.getInt(5));
				dto.setStock(rs.getInt(6));
				dto.setpDate(rs.getString(7));
				Products.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}
	
}
