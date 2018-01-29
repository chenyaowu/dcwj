package com.mixin.service;

import cc.mixin.domain.User;

public interface LoginServer {

	String getLoginType(String username);

	User userLogin(String username, String password);

}
