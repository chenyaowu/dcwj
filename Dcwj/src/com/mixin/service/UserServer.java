package com.mixin.service;

import java.util.List;

import cc.mixin.domain.UserShowBean;
import cc.mixin.domain.UserShowBeanMainTea;

public interface UserServer {

	List<UserShowBean> showAllTea();

	List<UserShowBeanMainTea> showAllMainTea();

}
