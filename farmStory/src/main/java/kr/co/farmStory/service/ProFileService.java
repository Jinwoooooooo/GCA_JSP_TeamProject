package kr.co.farmStory.service;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import kr.co.farmStory.dao.ProFileDAO;
import kr.co.farmStory.dto.ProFileDTO;


public enum ProFileService {
	
	instance;
	
	private ProFileDAO dao = ProFileDAO.getInstance();
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void registeFile(ProFileDTO dto) {
		dao.insertProFile(dto);
	}
	
	
	
	
	// 파일 업로드
	/*public List<ProFileDTO> uploadFile(HttpServletRequest req){
		
		List<ProFileDTO> files = new ArrayList<ProFileDTO>();
		
		// 파일 업로드 경로 구하기
		ServletContext ctx = req.getServletContext();
		String uploadPath = ctx.getRealPath("/uploads");
		
		// 파일 업로드 디렉터리가 존재하지 않으면 디렉터리 생성
		File uploadDir = new File(uploadPath);
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		try {
			// 첨부파일 객체 가져오기
			Collection<Part> parts = req.getParts();
			
			for(Part part : parts) {
				logger.debug(part.toString());
				
				// 파일명 추출
				String oName = part.getSubmittedFileName();
				logger.debug(oName);
				
				// 파일을 첨부했으면
				if(oName != null && !oName.isEmpty()) {
					// 고유 파일명 생성
					int idx = oName.lastIndexOf(".");
					String ext = oName.substring(idx);
					String sName = UUID.randomUUID().toString() + ext;

					// 파일 저장
					part.write(uploadPath + File.separator + sName);
					
					// FileDTO 객체 생성
					ProFileDTO dto = new ProFileDTO();
					dto.setoName(oName);
					dto.setsName(sName);
					
					files.add(dto);
				}				
			}
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return files;
		
	}
	*/
	
	public List<ProFileDTO> uploadFile(HttpServletRequest req) {
	    List<ProFileDTO> files = new ArrayList<>();

	    // 파일 업로드 경로 설정
	    ServletContext ctx = req.getServletContext();
	    String uploadPath = ctx.getRealPath("/uploads");

	    // 디렉토리 없으면 생성
	    File uploadDir = new File(uploadPath);
	    if (!uploadDir.exists()) {
	        uploadDir.mkdirs();
	    }

	    try {
	        // 특정 파일 필드("pImage")만 가져오기
	        Part part = req.getPart("pImage");
	        
	        if (part != null && part.getSubmittedFileName() != null && !part.getSubmittedFileName().isEmpty()) {
	            // 파일명 추출
	            String oName = part.getSubmittedFileName();
	            logger.debug("파일명: " + oName);

	            // 고유 파일명 생성
	            String ext = oName.substring(oName.lastIndexOf("."));
	            String sName = UUID.randomUUID().toString() + ext;

	            // 파일 저장
	            part.write(uploadPath + File.separator + sName);
	            logger.debug("파일 저장 완료: " + sName);

	            // DTO 생성 후 리스트에 추가
	            ProFileDTO dto = new ProFileDTO();
	            dto.setoName(oName);
	            dto.setsName(sName);
	            files.add(dto);
	        } else {
	            logger.warn("파일이 첨부되지 않았거나 유효하지 않음.");
	        }
	    } catch (Exception e) {
	        logger.error("파일 업로드 중 오류 발생: " + e.getMessage());
	    }

	    return files;
	}

	
	
	
	
	
	
	
	
	
}
