package com.third.app.infra.modules.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.third.app.infra.modules.dto.Member;
import com.third.app.infra.modules.vo.MemberVo;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.third.app.infra.modules.mpp.MemberMpp";
	
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Member> selectList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public Member loginProc(MemberVo vo) { return sqlSession.selectOne(namespace + ".loginProc", vo); }
	public Member loginAdminProc(MemberVo vo) { return sqlSession.selectOne(namespace + ".loginXdmProc", vo); }
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int delete(Member dto) { return sqlSession.update(namespace + ".delete", dto); }
	public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int insertEmail(Member dto) { return sqlSession.insert(namespace + ".insertEmail", dto); }
	public int insertPhone(Member dto) { return sqlSession.insert(namespace + ".insertPhone", dto); }
	public int insertAddress(Member dto) { return sqlSession.insert(namespace + ".insertAddress", dto); }
//	uploaded
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }

}
