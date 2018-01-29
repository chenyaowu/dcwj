package cc.mixin.service.impl;


import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import cc.mixin.dao.ScoreDao;
import cc.mixin.domain.Scheval;
import cc.mixin.domain.Score;
import cc.mixin.domain.ScoreBeanMainTea;
import cc.mixin.domain.ScoreBeanSch;
import cc.mixin.domain.ScoreBeanTea;

import com.mixin.service.ScoreService;

public class ScoreServiceImpl implements ScoreService {
	private ScoreDao scoreDao;
	private TransactionTemplate transactionTemplate;

	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}

	public void setScoreDao(ScoreDao scoreDao) {
		this.scoreDao = scoreDao;
	}

	@Override
	public void save(ScoreBeanTea scoreBeanTea) {
		// TODO Auto-generated method stub
		final int tedId = scoreBeanTea.getTeaId();
		final int stuId = scoreBeanTea.getStuId();
		final String courName = scoreBeanTea.getCourName();
		if(scoreDao.isPost(stuId,tedId,courName)){
			return;
		}
		 final int score [] = scoreBeanTea.getScore();
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				// TODO Auto-generated method stub
				for(int i=0;i<score.length;i++){
					scoreDao.save(new Score(tedId, stuId, i+1, score[i],courName));
				}
				
				
			}
		});
		
	}

	@Override
	public void save(ScoreBeanMainTea scoreBeanMainTea) {
		// TODO Auto-generated method stub
		final int tedId = scoreBeanMainTea.getTeaId();
		final int stuId = scoreBeanMainTea.getStuId();
		final String courName = scoreBeanMainTea.getCourName();
		if(scoreDao.isPost(stuId,tedId,courName)){
			return;
		}
		final int score [] = scoreBeanMainTea.getScore();
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				// TODO Auto-generated method stub
				for(int i=0;i<score.length;i++){
					scoreDao.save(new Score(tedId, stuId, i+16, score[i],courName));
				}
			}
		});
	}

	@Override
	public void save(ScoreBeanSch scoreBeanSch) {
		// TODO Auto-generated method stub
		final int stuId = scoreBeanSch.getStuId();
		if(scoreDao.isPost(stuId,0,null)){
			return;
		}
		final String evalute[] = scoreBeanSch.getEvalute();
		transactionTemplate.execute(new TransactionCallbackWithoutResult() {
			@Override
			protected void doInTransactionWithoutResult(TransactionStatus arg0) {
				// TODO Auto-generated method stub
				for(int i=0;i<evalute.length;i++){
					scoreDao.save(new Scheval(stuId, i+28, evalute[i]));
				}
			}
		});
	}

	
	
}
