package cc.mixin.service.impl;

import cc.mixin.dao.LoginDao;
import cc.mixin.domain.User;

import com.mixin.service.LoginServer;

public class LoginServerImpl implements LoginServer {
	private LoginDao loginDao;
	
	
	public LoginDao getLoginDao() {
		return loginDao;
	}


	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}


	@Override
	public String getLoginType(String username) {
		// TODO Auto-generated method stub
		return loginDao.getLoginType(username);
	}


	@Override
	public User userLogin(String username, String password) {
		// TODO Auto-generated method stub
		
		
		return loginDao.userLogin(username,password);
	}

}
