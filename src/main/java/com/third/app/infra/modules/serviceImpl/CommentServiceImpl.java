package com.third.app.infra.modules.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.third.app.infra.modules.dao.CommentDao;
import com.third.app.infra.modules.dto.Comment;
import com.third.app.infra.modules.service.CommentService;
import com.third.app.infra.modules.vo.CommentVo;

@Service
public class CommentServiceImpl implements CommentService {
 
	@Autowired
	CommentDao dao;

	@Override
	public int selectOneCount(CommentVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Comment> selectList(CommentVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Comment selectOne(CommentVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Comment dto) {
		return dao.update(dto);
	}

	@Override
	public int updateLike(Comment dto) {
		return dao.updateLike(dto);
	}

	@Override
	public int delete(Comment dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Comment dto) {
		return dao.insert(dto);
	}
}
