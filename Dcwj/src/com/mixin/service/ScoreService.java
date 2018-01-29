package com.mixin.service;

import cc.mixin.domain.ScoreBeanMainTea;
import cc.mixin.domain.ScoreBeanSch;
import cc.mixin.domain.ScoreBeanTea;


public interface ScoreService {

	public void save(ScoreBeanTea scoreBeanTea);

	public void save(ScoreBeanMainTea scoreBeanMainTea);

	public void save(ScoreBeanSch scoreBeanSch);


}
