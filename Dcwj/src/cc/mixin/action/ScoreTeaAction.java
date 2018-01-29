package cc.mixin.action;


import cc.mixin.domain.ScoreBeanTea;

import com.mixin.service.ScoreService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ScoreTeaAction extends ActionSupport implements ModelDriven<ScoreBeanTea>{
	private ScoreService scoreService;
	
	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		scoreService.save(scoreBeanTea);
		return "scoreTeaSuccess";
	}

	ScoreBeanTea scoreBeanTea = new ScoreBeanTea();
	@Override
	public ScoreBeanTea getModel() {
		// TODO Auto-generated method stub
		return scoreBeanTea;
	}
	
}
