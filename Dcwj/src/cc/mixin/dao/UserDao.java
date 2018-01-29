package cc.mixin.dao;

import java.util.List;

import cc.mixin.domain.UserShowBean;
import cc.mixin.domain.UserShowBeanMainTea;

public interface UserDao {

	List<UserShowBean> showAllTea();

	List<UserShowBeanMainTea> showAllMainTea();

}
