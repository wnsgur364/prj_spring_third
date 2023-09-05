package com.third.app.infra.modules.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.third.app.infra.modules.dto.Board;
import com.third.app.infra.modules.vo.BoardVo;

public interface BoardService {
	public int selectOneCount(BoardVo vo);
	public List<Board> selectList(BoardVo vo);
	public Board selectOne(BoardVo vo);
	public int update (Board dto) throws Exception;
	public int updateLike (Board dto);
	public int delete (Board dto);
	public int insert (Board dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Board dto, String tableName, int type, int maxNumber) throws Exception;
}
