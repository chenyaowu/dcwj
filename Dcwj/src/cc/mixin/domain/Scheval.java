package cc.mixin.domain;

public class Scheval {
	private int id;
	private int stuId;
	private int queId;
	private String evalute;
	
	
	public Scheval() {
		
	}
	public Scheval(int stuId, int queId, String evalute) {
		this.stuId = stuId;
		this.queId = queId;
		this.evalute = evalute;
	}
	public int getStuId() {
		return stuId;
	}
	public void setStuId(int stuId) {
		this.stuId = stuId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQueId() {
		return queId;
	}
	public void setQueId(int queId) {
		this.queId = queId;
	}
	public String getEvalute() {
		return evalute;
	}
	public void setEvalute(String evalute) {
		this.evalute = evalute;
	}
	
}
