package cc.mixin.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cc.mixin.dao.LoginDao;
import cc.mixin.domain.Student;
import cc.mixin.domain.User;

public class LoginDaoImpl extends HibernateDaoSupport implements LoginDao {
	
	@Override
	public String getLoginType(String username) {
		// TODO Auto-generated method stub
		String hql = "from Student where stuId = ?";
		List<Student> list = this.getHibernateTemplate().find(hql, username);
		if(list.size()>0)
			return "STUDENT";
		else{
			hql = "from Teacher where teaName = ?";
			list = this.getHibernateTemplate().find(hql, username);
			if(list.size()>0)
				return "TEACHER";
		}
		
		
		return null;
	}

	@Override
	public User userLogin(String username, String password) {
		// TODO Auto-generated method stub
		String hql = "from User where username=? and password = ?";
		List<User> list = this.getHibernateTemplate().find(hql, username,password);
		if(list.size()>0)
			return list.get(0);
		else
			return null;
	}

}
