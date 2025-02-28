package kr.co.farmStory.service;

import java.util.List;

import kr.co.farmStory.dao.AdminDAO;
import kr.co.farmStory.dto.AdminDTO;

public enum AdminService {
	
	INSTANCE;
	private AdminDAO dao = AdminDAO.getIntance();
	
	public void registerProduct(AdminDTO dto) {
		dao.insertAdminPro(dto);
	}
	
	public List<AdminDTO> findAllProduct() {
		return dao.selectAllPro();
	}
}
