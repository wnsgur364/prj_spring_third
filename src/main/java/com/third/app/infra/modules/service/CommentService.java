package com.third.app.infra.modules.service;

import java.util.List;

import com.third.app.infra.modules.dto.Comment;
import com.third.app.infra.modules.vo.CommentVo;

public interface CommentService {
	public int selectOneCount(CommentVo vo);
	public List<Comment> selectList(CommentVo vo);
	public Comment selectOne(CommentVo vo);
	public int update (Comment dto);
	public int updateLike (Comment dto);
	public int delete (Comment dto);
	public int insert (Comment dto);
}
