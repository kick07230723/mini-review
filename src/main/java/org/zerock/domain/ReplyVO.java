package org.zerock.domain;

import java.sql.Timestamp;

public class ReplyVO {

	private int sno,rno;
	private String title,content,writer;
	private Timestamp regdate,updatedate;
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
		return "ReplyVO [sno=" + sno + ", rno=" + rno + ", title=" + title + ", content=" + content + ", writer="
				+ writer + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
	
}
