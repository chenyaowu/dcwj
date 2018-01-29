package cc.mixin.domain;

import java.math.BigDecimal;
import java.math.BigInteger;

public class UserShowBean implements Comparable<UserShowBean> {
	private Integer teaId;
	private String teaName;
	private String className;
	private String courName;
	private BigDecimal score;
	private int num1;
	private int num2;
	
	
	public String getTeaName() {
		return teaName;
	}
	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}
	public String getCourName() {
		return courName;
	}
	public void setCourName(String courName) {
		this.courName = courName;
	}
	
	
	public BigDecimal getScore() {
		return score;
	}
	public void setScore(BigDecimal score) {
		this.score = score;
	}
	
	
	
	
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Integer getTeaId() {
		return teaId;
	}
	public void setTeaId(Integer teaId) {
		this.teaId = teaId;
	}
	@Override
	public int compareTo(UserShowBean o) {
		// TODO Auto-generated method stub
		BigDecimal score2 = this.getScore().subtract(o.getScore());
		return -score2.compareTo(BigDecimal.valueOf(0));
	}
	
	
	
	
	
	
}
