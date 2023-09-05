package com.third.app.infra.modules.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.third.app.infra.common.base.Base;

public class Board extends Base {
	private String seq;
	private	Integer delNy;
	private Integer defaultNy;
	private String author;
	private String title;
	private String body;
	private Integer comment;
	private Integer like;
	private Date regDate;
	private Date modDate;
	private String member_seq;
	
	private MultipartFile[] uploadImgProfile;
	private Integer uploadImgProfileType;	
	private Integer uploadImgProfileMaxNumber;
	private String[] uploadImgProfileDeleteSeq;
	private String[] uploadImgProfileDeletePathFile;	
	
	private MultipartFile[] uploadImg;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	
	private MultipartFile[] uploadFile;
	private Integer uploadFileType;
	private Integer uploadFileMaxNumber;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
//	----
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public Integer getComment() {
		return comment;
	}
	public void setComment(Integer comment) {
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
	public MultipartFile[] getUploadImgProfile() {
		return uploadImgProfile;
	}
	public void setUploadImgProfile(MultipartFile[] uploadImgProfile) {
		this.uploadImgProfile = uploadImgProfile;
	}
	public Integer getUploadImgProfileType() {
		return uploadImgProfileType;
	}
	public void setUploadImgProfileType(Integer uploadImgProfileType) {
		this.uploadImgProfileType = uploadImgProfileType;
	}
	public Integer getUploadImgProfileMaxNumber() {
		return uploadImgProfileMaxNumber;
	}
	public void setUploadImgProfileMaxNumber(Integer uploadImgProfileMaxNumber) {
		this.uploadImgProfileMaxNumber = uploadImgProfileMaxNumber;
	}
	public String[] getUploadImgProfileDeleteSeq() {
		return uploadImgProfileDeleteSeq;
	}
	public void setUploadImgProfileDeleteSeq(String[] uploadImgProfileDeleteSeq) {
		this.uploadImgProfileDeleteSeq = uploadImgProfileDeleteSeq;
	}
	public String[] getUploadImgProfileDeletePathFile() {
		return uploadImgProfileDeletePathFile;
	}
	public void setUploadImgProfileDeletePathFile(String[] uploadImgProfileDeletePathFile) {
		this.uploadImgProfileDeletePathFile = uploadImgProfileDeletePathFile;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer getUploadFileType() {
		return uploadFileType;
	}
	public void setUploadFileType(Integer uploadFileType) {
		this.uploadFileType = uploadFileType;
	}
	public Integer getUploadFileMaxNumber() {
		return uploadFileMaxNumber;
	}
	public void setUploadFileMaxNumber(Integer uploadFileMaxNumber) {
		this.uploadFileMaxNumber = uploadFileMaxNumber;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
}
