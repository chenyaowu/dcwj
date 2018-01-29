package cc.mixin.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cc.mixin.dao.ScoreDao;
import cc.mixin.domain.Scheval;
import cc.mixin.domain.Score;
import cc.mixin.domain.ScoreBeanSch;

public class ScoreDaoImpl extends HibernateDaoSupport implements ScoreDao {

	@Override
	public void save(Score score) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(score);
	}

	@Override
	public void save(Scheval scheval) {
		// TODO Auto-generated method stub
		
		this.getHibernateTemplate().save(scheval);
		
	}
	
	
	
//	public boolean isPost(int stuId, int teaId) {
//		// TODO Auto-generated method stub
//		if(teaId == 0){
//			String hql = "from Scheval where stuId = ? ";
//			List<Scheval> list = this.getHibernateTemplate().find(hql,stuId);
//			if(list.size()>0)
//				return true;
//			return false;
//		}else{
//			String hql = "from Score where stuId = ? and teaId = ?";
//			List<Score> list = this.getHibernateTemplate().find(hql, stuId,teaId);
//			if(list.size()>0)
//				return true;
//			return false;
//		}
//		
//	}

	@Override
	public boolean isPost(int stuId, int teaId, String courName) {
		// TODO Auto-generated method stub
		if(courName == null){
			String hql = "from Scheval where stuId = ? ";
			List<Scheval> list = this.getHibernateTemplate().find(hql,stuId);
			if(list.size()>0)
				return true;
			return false;
		}else{
			String hql = "from Score where stuId = ? and teaId = ? and courName = ?";
			List<Score> list = this.getHibernateTemplate().find(hql, stuId,teaId,courName);
			if(list.size()>0)
				return true;
			return false;
		}
	}

	
	
}
