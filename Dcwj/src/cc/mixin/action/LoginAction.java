package cc.mixin.action;

import cc.mixin.domain.Student;
import cc.mixin.domain.Teacher;

import com.mixin.service.LoginServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class LoginAction extends ActionSupport {
	private LoginServer loginServer;
	
	public LoginServer getLoginServer() {
		return loginServer;
	}
	public void setLoginServer(LoginServer loginServer) {
		this.loginServer = loginServer;
	}
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		String loginType = loginServer.getLoginType(username);
		ValueStack valueStack  = ActionContext.getContext().getValueStack();
		valueStack.setParameter("username", username);
		valueStack.setParameter("password", password);
		if(username.equals("admin")){
			return "ADMIN";
		}
		if(loginType == null){
			this.addActionError("用户不存在");
			return "input";
		}
		
		return loginType;
			
	}
	
}
