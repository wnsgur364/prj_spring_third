package com.third.app.infra.modules.service;

import java.util.List;

import com.third.app.infra.modules.dto.Code;
import com.third.app.infra.modules.vo.CodeVo;

public interface CodeService {
	public int selectOneCount(CodeVo vo);
	public List<Code> selectList(CodeVo vo);
	public Code selectOne(CodeVo vo);
	public int update (Code dto);
	public int delete (Code dto);
	public int insert (Code dto);
}
