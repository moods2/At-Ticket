package com.test.admin.customerqna;

public class QnaDTO {
	
	private String seq;
	private String subject;
	private String content;
	private String regdate;
	private String tag;
	private String mseq;
	private int qview;

	private String name;
	private int gap;
	private String id;
	private String commentcount;
	
	//답변
	private String ancontent;
	private String anregdate;
	
	public String getAncontent() {
		return ancontent;
	}
	public void setAncontent(String ancontent) {
		this.ancontent = ancontent;
	}
	public String getAnregdate() {
		return anregdate;
	}
	public void setAnregdate(String anregdate) {
		this.anregdate = anregdate;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getMseq() {
		return mseq;
	}
	public void setMseq(String mseq) {
		this.mseq = mseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGap() {
		return gap;
	}
	public void setGap(int gap) {
		this.gap = gap;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCommentcount() {
		return commentcount;
	}
	public void setCommentcount(String commentcount) {
		this.commentcount = commentcount;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getQview() {
		return qview;
	}
	public void setQview(int qview) {
		this.qview = qview;
	}
	
	

}
