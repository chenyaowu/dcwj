package cc.mixin.dao;

import cc.mixin.domain.Scheval;
import cc.mixin.domain.Score;
import cc.mixin.domain.ScoreBeanSch;

public interface ScoreDao {

	public void save(Score score);

	public void save(Scheval scheval);


	public boolean isPost(int stuId, int tedId, String courName);


}
