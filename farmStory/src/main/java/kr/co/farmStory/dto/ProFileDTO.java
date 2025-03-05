package kr.co.farmStory.dto;


public class ProFileDTO {
	
	private int fno;
	private int pid;
	private String oName;
	private String sName;
	private String rdate;
	
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	@Override
	public String toString() {
		return "ProFileDTO [fno=" + fno + ", proNo=" + pid + ", oName=" + oName + ", sName=" + sName + ", rdate="
				+ rdate + "]";
	}
	
	
	
}
