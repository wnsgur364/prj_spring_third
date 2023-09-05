package com.third.app.infra.modules.serviceImpl;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.third.app.infra.common.constants.Constants;
import com.third.app.infra.common.util.UtilDateTime;
import com.third.app.infra.modules.dao.BoardDao;
import com.third.app.infra.modules.dto.Board;
import com.third.app.infra.modules.service.BoardService;
import com.third.app.infra.modules.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao dao;

	@Override
	public int selectOneCount(BoardVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Board> selectList(BoardVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Board selectOne(BoardVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Board dto) throws Exception {
		uploadFiles(dto.getUploadImgProfile(), dto, "boardUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
		uploadFiles(dto.getUploadImg(), dto, "boardUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadFile(), dto, "boardUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());

		return dao.update(dto);
	}

	@Override
	public int updateLike(Board dto) {
		return dao.updateLike(dto);
	}

	@Override
	public int delete(Board dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Board dto) throws Exception {
		uploadFiles(dto.getUploadImgProfile(), dto, "boardUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
		uploadFiles(dto.getUploadImg(), dto, "boardUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadFile(), dto, "boardUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
		
		return dao.insert(dto);
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Board dto, String tableName, int type, int maxNumber) throws Exception {
		for(int i=0; i<multipartFiles.length; i++) {
	    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdirs();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		}
		
	}

}
