package com.third.app.infra.modules.dto;

import java.sql.Date;

import com.third.app.infra.common.base.Base;

public class Comment extends Base {
	private String seq;
    private Integer delNy;
    private Integer defaultNy;
    private String commentAuthor;
    private String comment;
    private Integer like;
    private Date regDate;
    private Date modDate;
    private String member_seq;
    private String board_seq;
//  ----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getCommentAuthor() {
		return commentAuthor;
	}
	public void setCommentAuthor(String commentAuthor) {
		this.commentAuthor = commentAuthor;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Integer getLike() {
		return like;
	}
	public void setLike(Integer like) {
		this.like = like;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
}
