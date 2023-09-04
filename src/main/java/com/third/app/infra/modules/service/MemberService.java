package com.third.app.infra.modules.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.third.app.infra.modules.dto.Member;
import com.third.app.infra.modules.vo.MemberVo;

public interface MemberService {
	
	public int selectOneCount(MemberVo vo);
	public List<Member> selectList(MemberVo vo);
	public Member selectOne(MemberVo vo);
	public Member loginProc(MemberVo vo);
	public Member loginAdminProc(MemberVo vo);
	public int update(Member dto) throws Exception;
	public int insert(Member dto) throws Exception;
	public int delete(Member dto);
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;

}