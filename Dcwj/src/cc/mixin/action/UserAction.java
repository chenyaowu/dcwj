package cc.mixin.action;

import java.util.List;

import cc.mixin.domain.User;
import cc.mixin.domain.UserShowBean;
import cc.mixin.domain.UserShowBeanMainTea;

import com.mixin.service.LoginServer;
import com.mixin.service.UserServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class UserAction extends ActionSupport {
	private LoginServer loginServer;
	private UserServer userServer;
	
	
	
	public UserServer getUserServer() {
		return userServer;
	}
	public void setUserServer(UserServer userServer) {
		this.userServer = userServer;
	}
	public LoginServer getLoginServer() {
		return loginServer;
	}
	public void setLoginServer(LoginServer loginServer) {
		this.loginServer = loginServer;
	}



	public String login(){
		ValueStack valueStack  = ActionContext.getContext().getValueStack();
		String username = valueStack.findString("username");
		String password = valueStack.findString("password");
		User user = loginServer.userLogin(username,password);
		if(user == null)
			return "input";
		else{
			List<UserShowBean> list = userServer.showAllTea();
			List<UserShowBeanMainTea> list2 = userServer.showAllMainTea();
			ActionContext.getContext().getValueStack().set("allList", list);
			ActionContext.getContext().getValueStack().set("mainList", list2);
			return "userLoginSuccess";	
		}
		
		
		
	}
}
