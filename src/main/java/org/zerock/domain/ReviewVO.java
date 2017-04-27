package org.zerock.domain;

import java.sql.Timestamp;

public class ReviewVO {
	
	private int rno;
	private String title, content, gubun, writer, pname;
	private Timestamp regdate, updatedate;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public Timestamp getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate) {
		this.updatedate = updatedate;
	}
	
	
	@Override
	public String toString() {
		return "ReviewVO [rno=" + rno + ", title=" + title + ", content=" + content + ", gubun=" + gubun + ", writer="
				+ writer + ", pname=" + pname + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	

}
