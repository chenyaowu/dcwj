package cc.mixin.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cc.mixin.dao.DutyDao;
import cc.mixin.domain.Duty;
import cc.mixin.domain.Scheval;
import cc.mixin.domain.Score;
import cc.mixin.domain.Student;
import cc.mixin.domain.Teacher;

public class DutyDaoImpl extends HibernateDaoSupport implements DutyDao {

	@Override
	public List<Duty> findTeaByClassName(String className) {
		// TODO Auto-generated method stub
		String hql = "from Duty where className = ?";
		return this.getHibernateTemplate().find(hql, className);
	}

	@Override
	public int findTeaIdByTeaName(String teaName) {
		// TODO Auto-generated method stub
		String hql = "select teaId from Teacher where teaName = ?";
		List<Integer> list = this.getHibernateTemplate().find(hql, teaName);
		if(list.size()>0)
			return (Integer) (list.get(0));
		return -1;
			
			
		
	}

	@Override
	public boolean checkisEvaluate(int stuId, int teaId,String courName) {
		// TODO Auto-generated method stub
		String hql = "from Score where stuId = ? and teaId = ? and courName = ?";
		List<Score> list = this.getHibernateTemplate().find(hql,stuId,teaId,courName);
//		SessionFactory sessionFactory =  this.getHibernateTemplate().getSessionFactory();
//		Session session = sessionFactory.openSession();
//		session.createSQLQuery("1").addEntity(Scheval.class).setP
		if(list.size()>0){
			
				return true;
		}
		return false;
		
		
	}

	@Override
	public Student findStuById(int stuId) {
		// TODO Auto-generated method stub
		String hql = "from Student where id = ?";
		List<Student> list = this.getHibernateTemplate().find(hql, stuId);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public String findMainTeaByClassName(String className) {
		// TODO Auto-generated method stub
		String hql = "select mainTeacher from Grade where className = ?";
		List<String> list = this.getHibernateTemplate().find(hql, className);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public boolean checkisMainTeacherEvaluate(int stuId, int teaId) {
		// TODO Auto-generated method stub
			String hql = "select MAX(queId) from Score where stuId = ? and teaId = ?";
			List<Integer> list =  this.getHibernateTemplate().find(hql,stuId,teaId);
			
			if(list.size()<=0 || list == null){
				return false;
			}
			else{
				
				if(list.get(0)==null)
					return false;
				int queId = list.get(0);
			if(queId == 27){
				return true;
			}
			else{
				return false;
			}
			}
		
		
	}

	@Override
	public boolean checkSchoolisEvaluate(int stuId) {
		// TODO Auto-generated method stub
		String hql = "from Scheval where stuId = ?";
		List<Scheval> list = this.getHibernateTemplate().find(hql, stuId);
		if(list.size()>0)
			return true;
		return false;
	}

	

}
