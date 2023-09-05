package com.third.app.infra.modules.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.third.app.infra.modules.dto.Board;
import com.third.app.infra.modules.vo.BoardVo;

@Repository
public class BoardDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.third.app.infra.modules.mpp.BoardMpp";
	
	public int selectOneCount(BoardVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Board> selectList(BoardVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Board selectOne(BoardVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Board dto) { return sqlSession.update(namespace + ".update", dto); }
	public int updateLike(Board dto) { return sqlSession.update(namespace + ".updateLike", dto); }
	public int delete(Board dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Board dto) { return sqlSession.insert(namespace + ".insert", dto); }
//	uploaded
	public int insertUploaded(Board dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
