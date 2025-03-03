package kr.co.farmStory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.util.AdminSQL;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.ShoppingSQL;

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
			pstmt.setInt(5, dto.getPoint());
			pstmt.setString(6, dto.getDiscount());
			pstmt.setInt(7, dto.getCharge());
			pstmt.setInt(8, dto.getStock());
			pstmt.setString(9, dto.getpImage());
			pstmt.setString(10, dto.getOther());
			
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
				dto.setPrice(rs.getInt(4));
				dto.setStock(rs.getInt(5));
				dto.setpDate(rs.getString(6));
				Products.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}
	
	public List<AdminDTO> selectAllMinPro() {
		
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
				dto.setPrice(rs.getInt(4));
				dto.setStock(rs.getInt(5));
				dto.setpDate(rs.getString(6));
				Products.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}

	
	// 장보기 전체 목록
	public List<AdminDTO> selectAllShopping() {
		
		List<AdminDTO> Products = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(ShoppingSQL.SELECT_SHOPPING_PRO);
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setTypes(rs.getString(1));
				dto.setpName(rs.getString(2));
				dto.setDiscount(rs.getString(3));
				dto.setPoint(rs.getInt(4));
				dto.setPrice(rs.getInt(5));
				Products.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}
	
	// 과일 목록
	public List<AdminDTO> select_fruit(String types) {
		
		List<AdminDTO> fruits = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_FRUIT);
			pstmt.setString(1, types);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setTypes(rs.getString(1));
				dto.setpName(rs.getString(2));
				dto.setDiscount(rs.getString(3));
				dto.setPoint(rs.getInt(4));
				dto.setPrice(rs.getInt(5));
				fruits.add(dto);
			}
			
			closeAll();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fruits;
	}
	
	// 야채 목록 
	public List<AdminDTO> select_vegetable(String types) {
		
		List<AdminDTO> vegetables = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_VEGETABLE);
			pstmt.setString(1, types);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setTypes(rs.getString(1));
				dto.setpName(rs.getString(2));
				dto.setDiscount(rs.getString(3));
				dto.setPoint(rs.getInt(4));
				dto.setPrice(rs.getInt(5));
				vegetables.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vegetables;
	}
	
	// 곡류 목록 
	public List<AdminDTO> select_grains(String types) {
		
		List<AdminDTO> grainss = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_GRAINS);
			pstmt.setString(1, types);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setTypes(rs.getString(1));
				dto.setpName(rs.getString(2));
				dto.setDiscount(rs.getString(3));
				dto.setPoint(rs.getInt(4));
				dto.setPrice(rs.getInt(5));
				grainss.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return grainss;
	}

}
