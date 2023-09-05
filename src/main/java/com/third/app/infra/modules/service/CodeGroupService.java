package com.third.app.infra.modules.service;

import java.util.List;

import com.third.app.infra.modules.dto.CodeGroup;
import com.third.app.infra.modules.vo.CodeGroupVo;

public interface CodeGroupService {
	public int selectOneCount(CodeGroupVo vo);
	public List<CodeGroup> selectList(CodeGroupVo vo);
	public CodeGroup selectOne(CodeGroupVo vo);
	public int update(CodeGroup dto);
	public int insert(CodeGroup dto);
	public int delete(CodeGroup dto);
}
