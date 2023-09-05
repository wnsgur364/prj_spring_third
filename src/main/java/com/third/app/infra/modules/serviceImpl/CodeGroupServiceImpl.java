package com.third.app.infra.modules.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.third.app.infra.modules.dao.CodeGroupDao;
import com.third.app.infra.modules.dto.CodeGroup;
import com.third.app.infra.modules.service.CodeGroupService;
import com.third.app.infra.modules.vo.CodeGroupVo;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;

	@Override
	public int selectOneCount(CodeGroupVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeGroup dto) {
		return dao.update(dto);
	}

	@Override
	public int insert(CodeGroup dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(CodeGroup dto) {
		return dao.delete(dto);
	}
}
