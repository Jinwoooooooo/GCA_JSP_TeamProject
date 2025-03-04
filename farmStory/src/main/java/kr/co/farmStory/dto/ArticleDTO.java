package kr.co.farmStory.dto;

import java.util.List;

public class ArticleDTO {

	private int postNo;
	private String uid;
	private String title;
	private String content;
	private int comment;
	private int file;
	private int hit;
	private String writer;
	private String cate;
	private String regip;
	private String wdate;
	
	private List<FileDTO> files;
	
	
	public List<FileDTO> getFiles() {
		return files;
	}
	public void setFiles(List<FileDTO> files) {
		this.files = files;
	}
	
	
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public int getFile() {
		return file;
	}
	public void setFile(int file) {
		this.file = file;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	
	
	@Override
	public String toString() {
		return "ArticleDTO [postNo=" + postNo + ", uid=" + uid + ", title=" + title + ", content=" + content
				+ ", comment=" + comment + ", file=" + file + ", hit=" + hit + ", writer=" + writer + ", cate=" + cate
				+ ", regip=" + regip + ", wdate=" + wdate + "]";
	}
	
	
	
	
	
	
	
	
	
}
