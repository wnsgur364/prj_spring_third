package com.third.app.infra.modules.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.third.app.infra.common.base.Base;

public class Code extends Base {
	private String seq;
	private Integer delNy;
	private String name;
	private Date regDate;
	private Date modDate;
	private String codeGroup_seq;
	private String codeGroupName;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	public String getCodeGroupName() {
		return codeGroupName;
	}
	public void setCodeGroupName(String codeGroupName) {
		this.codeGroupName = codeGroupName;
	}
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
}
