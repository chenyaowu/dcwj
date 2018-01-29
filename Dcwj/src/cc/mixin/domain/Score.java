package cc.mixin.domain;

public class Score {
	private int scoreId;
	private int teaId;
	private int stuId;
	private int queId;
	private int score;
	private String courName;
	
	
	public Score() {
		
	}
	
	
	

	



	public Score(int teaId, int stuId, int queId, int score, String courName) {
		super();
		this.teaId = teaId;
		this.stuId = stuId;
		this.queId = queId;
		this.score = score;
		this.courName = courName;
	}








	public int getTeaId() {
		return teaId;
	}








	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}








	public String getCourName() {
		return courName;
	}




	public void setCourName(String courName) {
		this.courName = courName;
	}




	public int getScoreId() {
		return scoreId;
	}
	public void setScoreId(int scoreId) {
		this.scoreId = scoreId;
	}
	
	public int getStuId() {
		return stuId;
	}
	public void setStuId(int stuId) {
		this.stuId = stuId;
	}
	public int getQueId() {
		return queId;
	}
	public void setQueId(int queId) {
		this.queId = queId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	
}
