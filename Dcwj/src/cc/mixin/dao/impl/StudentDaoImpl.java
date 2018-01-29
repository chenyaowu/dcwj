package cc.mixin.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cc.mixin.dao.StudentDao;
import cc.mixin.domain.Student;

public class StudentDaoImpl  extends HibernateDaoSupport implements StudentDao {

	@Override
	public Student login(String stuId, String password) {
		// TODO Auto-generated method stub
		String hql = "from Student where stuId= ? and password= ? ";
		List<Student> list = this.getHibernateTemplate().find(hql, stuId,password);
		if(list.size()>0)
			return list.get(0);
		
		return null;
	}

}
