package cc.mixin.action;

import cc.mixin.domain.ScoreBeanSch;

import com.mixin.service.ScoreService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ScoreSchoolAction extends ActionSupport implements ModelDriven<ScoreBeanSch> {
	private ScoreService scoreService;
	
	
	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	ScoreBeanSch scoreBeanSch = new ScoreBeanSch();
	@Override
	public ScoreBeanSch getModel() {
		// TODO Auto-generated method stub
		return scoreBeanSch;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		scoreService.save(scoreBeanSch);
		
		return SUCCESS;
	}
	
	

	
}
