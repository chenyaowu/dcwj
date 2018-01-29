package cc.mixin.action;

import com.opensymphony.xwork2.ActionSupport;

public class QuestionAction extends ActionSupport{
	private String courName;
	
	
	
	public String getCourName() {
		return courName;
	}

	public void setCourName(String courName) {
		this.courName = courName;
	}

	private String stuId;
	public String getStuId() {
		return stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	private int teaId;
	
	
	public int getTeaId() {
		return teaId;
	}

	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}

	
	public String Common(){
		// TODO Auto-generated method stub
		return 	"selectCommon";
	}
	
	public String Main(){
		// TODO Auto-generated method stub
		System.out.println("888888888");
		return 	"selectMain";
	}
	
	public String School(){
		// TODO Auto-generated method stub
		return 	"selectSchool";
	}
	
	
}
