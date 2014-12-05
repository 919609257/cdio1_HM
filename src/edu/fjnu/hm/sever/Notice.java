package edu.fjnu.hm.sever;

public class Notice {

	/**
	 * @param args
	 */
	String RId;
	String TId;
	String RTitle;
	String RContent;
	public String getRId() {
		return RId;
	}
	public void setRId(String rId) {
		RId = rId;
	}
	public String getTId() {
		return TId;
	}
	public void setTId(String tId) {
		TId = tId;
	}
	public String getRTitle() {
		return RTitle;
	}
	public void setRTitle(String rTitle) {
		RTitle = rTitle;
	}
	public String getRContent() {
		return RContent;
	}
	public void setRContent(String rContent) {
		RContent = rContent;
	}
	public String toString(){
		return this.RId+this.TId+this.RTitle+this.RContent;
	}
	
}
