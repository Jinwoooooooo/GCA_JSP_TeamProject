package kr.co.farmStory.dto;

public class CommentDTO {
	
	private int cno;
	private int postNo;
	private String content;
	private String writer;
	private String regip;
	private String wdate;
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
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
		return "CommentDTO [cno=" + cno + ", postNo=" + postNo + ", content=" + content + ", writer=" + writer
				+ ", regip=" + regip + ", wdate=" + wdate + "]";
	}
	
	
}	
	