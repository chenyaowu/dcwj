package cc.mixin.dao.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cc.mixin.dao.UserDao;
import cc.mixin.domain.Teacher;
import cc.mixin.domain.UserShowBean;
import cc.mixin.domain.UserShowBeanMainTea;

public class UserDaoimpl extends HibernateDaoSupport implements UserDao {
	
	
	String sql1 = "SELECT DISTINCT teacher.teaId,teacher.teaName,duty.courName  FROM teacher JOIN duty ON teacher.teaName = duty.teaName";
	String sql2 = "SELECT SUM(scoreAvg) AS score  FROM ( SELECT  queId ,AVG(score) AS scoreAvg FROM score WHERE teaId = ? AND queId<16 AND courName=?  GROUP BY queId) AS c";
	String sql3 = "SELECT COUNT(*) FROM student WHERE className = ?";
	String sql4 = "SELECT COUNT(*)/? FROM score WHERE stuId IN (SELECT id FROM student WHERE className = ? ) AND courName = ?";
	String sql5 = "SELECT className FROM duty WHERE courName = ? AND teaName = ?";
	@Override
	public List<UserShowBean> showAllTea() {
		// TODO Auto-generated method stub
		List<UserShowBean> list = findAllTeacher();
		for (int i = 0; i < list.size(); i++) {
			UserShowBean userShowBean = list.get(i);
			int tedId = userShowBean.getTeaId();
			String courName = userShowBean.getCourName();
			String teaName = userShowBean.getTeaName();
			List<BigDecimal> list2 = queryScore(tedId,courName);
			BigDecimal b = list2.get(0);
			if( b== null)
				userShowBean.setScore(BigDecimal.valueOf(0).setScale(2,BigDecimal.ROUND_HALF_UP));
			else{
				userShowBean.setScore(b.setScale(2,BigDecimal.ROUND_HALF_UP));
			}
			List<String> list5 = queryClassName(courName,teaName);
			int num1 = 0;
			int num2 = 0;
			for (int j = 0; j < list5.size(); j++) {
				String className = list5.get(j);
				List<BigInteger> list3 = queryNum1(className);
				if(list3.get(0) == null)
					num1 +=0;
				else{
					num1 +=list3.get(0).intValue();
				}
				List<BigDecimal> list4 = queryNum2(15,className,courName);
				b = list4.get(0);
				if( b== null)
					num2+=0;
				else{
					num2+=b.intValue();
				}
				
			}
			userShowBean.setNum1(num1);
			userShowBean.setNum2(num2);
	
		}
		return list;
		

	}
	
	

	private List<String> queryClassName(String courName, String teaName) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql5);
		sqlQuery.setParameter(0, courName);
		sqlQuery.setParameter(1, teaName);
		 List list = sqlQuery.list();
		 session.close();
		 sessionFactory.close();
		 return list;
	}



	private List<BigDecimal> queryNum2(int num,String className, String courName) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql4);
		sqlQuery.setParameter(0, num);
		sqlQuery.setParameter(1, className);
		sqlQuery.setParameter(2, courName);
		 List<BigDecimal> list = sqlQuery.list();
		 session.close();
		 sessionFactory.close();
		 return list;
	}

	private List<BigInteger> queryNum1(String className) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql3);
		sqlQuery.setParameter(0, className);
		List<BigInteger> list = sqlQuery.list();
		 session.close();
		 sessionFactory.close();
		 return list;
	}

	private List<BigDecimal> queryScore(int tedId, String courName) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql2);
		sqlQuery.setParameter(0, tedId);
		sqlQuery.setParameter(1, courName);
		 List<BigDecimal> list = sqlQuery.list();
		 session.close();
		 sessionFactory.close();
		 return list;
	}

	public List<UserShowBean> findAllTeacher(){
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql1);
		sqlQuery.setResultTransformer(Transformers.aliasToBean(UserShowBean.class));
		List<UserShowBean> list = sqlQuery.list();
		session.close();
		sessionFactory.close();
		return list;
	}

	String sql6 = "SELECT teacher.teaId , mainTeacher,className FROM grade JOIN teacher WHERE grade.mainTeacher = teacher.teaName";
	String sql7 = "SELECT SUM(scoreAvg) AS score  FROM ( SELECT  queId ,AVG(score) AS scoreAvg FROM score WHERE teaId =? AND queId>15  GROUP BY queId) AS c";
	
	@Override
	public List<UserShowBeanMainTea> showAllMainTea() {
		// TODO Auto-generated method stub
		List<UserShowBeanMainTea> list = findAllMainTea();
		for (int i = 0; i < list.size(); i++) {
			UserShowBeanMainTea userShowBeanMainTea = list.get(i);
			int teaId = userShowBeanMainTea.getTeaId();
			String className = userShowBeanMainTea.getClassName();
			List<BigDecimal> list2 = queryMainScore(teaId); 
			if(list2.get(0) == null){
				userShowBeanMainTea.setScore(BigDecimal.valueOf(0));
			}else{
			userShowBeanMainTea.setScore(list2.get(0));
			}
			
			List<BigInteger> list3 = queryNum1(className);
			userShowBeanMainTea.setNum1(list3.get(0).intValue());
			
			List<BigDecimal> list4 = queryNum2(12,className,"°àÖ÷ÈÎ");
			if(list4.get(0) == null){
				userShowBeanMainTea.setNum2(0);
			}else{
				userShowBeanMainTea.setNum2(list4.get(0).intValue());
			}
			
		}
		return list;
	}
	
	
	
	private List<BigDecimal> queryMainScore(int teaId) {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql7);
		sqlQuery.setParameter(0, teaId);
		 List<BigDecimal> list = sqlQuery.list();
		 session.close();
		 sessionFactory.close();
		 return list;
	}



	private List<UserShowBeanMainTea> findAllMainTea() {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory = this.getHibernateTemplate().getSessionFactory();
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql6);
		sqlQuery.setResultTransformer(Transformers.aliasToBean(UserShowBeanMainTea.class));
		List<UserShowBeanMainTea> list = sqlQuery.list();
		session.close();
		sessionFactory.close();
		return list;
	}

	
	
	
	

}
