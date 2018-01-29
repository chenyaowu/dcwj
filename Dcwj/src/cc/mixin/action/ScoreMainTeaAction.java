package cc.mixin.action;

import cc.mixin.domain.ScoreBeanMainTea;

import com.mixin.service.ScoreService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ScoreMainTeaAction extends ActionSupport implements ModelDriven<ScoreBeanMainTea> {
	ScoreBeanMainTea scoreBeanMainTea = new ScoreBeanMainTea();
	@Override
	public ScoreBeanMainTea getModel() {
		// TODO Auto-generated method stub
		return scoreBeanMainTea;
	}
	
	private ScoreService scoreService;
	public void setScoreService(ScoreService scoreService) {
		this.scoreService = scoreService;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		scoreService.save(scoreBeanMainTea);
		return SUCCESS;
	}
	
	
	
	
	
}
