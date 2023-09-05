package com.third.app.infra.modules.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.third.app.infra.modules.dto.CodeGroup;
import com.third.app.infra.modules.vo.CodeGroupVo;

@Repository
public class CodeGroupDao {
	@Inject
	@Resource(name =  "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.third.app.infra.modules.mpp.CodeGroupMpp";
	
	public int selectOneCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<CodeGroup> selectList(CodeGroupVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public CodeGroup selectOne(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	public int delete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert", dto); }
}
