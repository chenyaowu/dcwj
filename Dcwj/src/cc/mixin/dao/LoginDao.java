package cc.mixin.dao;

import cc.mixin.domain.User;

public interface LoginDao {

	String getLoginType(String username);

	User userLogin(String username, String password);

}
