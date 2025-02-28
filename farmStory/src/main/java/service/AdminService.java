package service;

import java.util.List;

import DAO.AdminDAO;
import DTO.AdminDTO;

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
