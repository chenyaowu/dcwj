package cc.mixin.domain;

public class ScoreBeanMainTea {
	private int stuId;
	private int teaId;
	private String courName;
	private int q16;
	private int q17;
	private int q18;
	private int q19;
	private int q20;
	private int q21;
	private int q22;
	private int q23;
	private int q24;
	private int q25;
	private int q26;
	private int q27;
	
	
	
	public String getCourName() {
		return courName;
	}



	public void setCourName(String courName) {
		this.courName = courName;
	}



	public int getStuId() {
		return stuId;
	}



	public void setStuId(int stuId) {
		this.stuId = stuId;
	}



	



	public int getTeaId() {
		return teaId;
	}



	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}



	public int getQ16() {
		return q16;
	}



	public void setQ16(int q16) {
		this.q16 = q16;
	}



	public int getQ17() {
		return q17;
	}



	public void setQ17(int q17) {
		this.q17 = q17;
	}



	public int getQ18() {
		return q18;
	}



	public void setQ18(int q18) {
		this.q18 = q18;
	}



	public int getQ19() {
		return q19;
	}



	public void setQ19(int q19) {
		this.q19 = q19;
	}



	public int getQ20() {
		return q20;
	}



	public void setQ20(int q20) {
		this.q20 = q20;
	}



	public int getQ21() {
		return q21;
	}



	public void setQ21(int q21) {
		this.q21 = q21;
	}



	public int getQ22() {
		return q22;
	}



	public void setQ22(int q22) {
		this.q22 = q22;
	}



	public int getQ23() {
		return q23;
	}



	public void setQ23(int q23) {
		this.q23 = q23;
	}



	public int getQ24() {
		return q24;
	}



	public void setQ24(int q24) {
		this.q24 = q24;
	}



	public int getQ25() {
		return q25;
	}



	public void setQ25(int q25) {
		this.q25 = q25;
	}



	public int getQ26() {
		return q26;
	}



	public void setQ26(int q26) {
		this.q26 = q26;
	}



	public int getQ27() {
		return q27;
	}



	public void setQ27(int q27) {
		this.q27 = q27;
	}



	public int[] getScore(){
		int [] score = new int[12];
		score[0] = q16;
		score[1] = q17;
		score[2] = q18;
		score[3] = q19;
		score[4] = q20;
		score[5] = q21;
		score[6] = q22;
		score[7] = q23;
		score[8] = q24;
		score[9] = q25;
		score[10] = q26;
		score[11] = q27;
		return score;
	}
	
	
}
