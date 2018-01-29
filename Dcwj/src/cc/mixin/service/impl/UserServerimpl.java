package cc.mixin.service.impl;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import cc.mixin.dao.UserDao;
import cc.mixin.domain.UserShowBean;
import cc.mixin.domain.UserShowBeanMainTea;

import com.mixin.service.UserServer;

public class UserServerimpl implements UserServer {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List<UserShowBean> showAllTea() {
		// TODO Auto-generated method stub
		List<UserShowBean> list = userDao.showAllTea();
		Collections.sort(list);
		return list;
	}

	@Override
	public List<UserShowBeanMainTea> showAllMainTea() {
		// TODO Auto-generated method stub
		List<UserShowBeanMainTea>  list = userDao.showAllMainTea();
		return list;
	}
	
	
	
}
