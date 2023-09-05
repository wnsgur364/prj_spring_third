package com.third.app.infra.modules.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.third.app.infra.modules.dto.Comment;
import com.third.app.infra.modules.vo.CommentVo;

@Repository
public class CommentDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.third.app.infra.modules.mpp.CommentMpp";
	
	public int selectOneCount(CommentVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Comment> selectList(CommentVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Comment selectOne(CommentVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Comment dto) { return sqlSession.update(namespace + ".update", dto); }
	public int updateLike(Comment dto) { return sqlSession.update(namespace + ".updateLike", dto); }
	public int delete(Comment dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Comment dto) { return sqlSession.insert(namespace + ".insert", dto); }
}
