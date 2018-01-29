package cc.mixin.action;
import com.mixin.service.StudentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;

import cc.mixin.domain.Student;

public class StudentAction extends ActionSupport {
	private StudentService studentService;
	
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public StudentService getStudentService() {
		return studentService;
	}



	public String login(){
		ValueStack valueStack  = ActionContext.getContext().getValueStack();
		String username = valueStack.findString("username");
		String password = valueStack.findString("password");
		
		
		Student student = studentService.Studentlogin(username, password);
		if(student != null)
		{
			ActionContext actionContext = ActionContext.getContext();
			actionContext.getValueStack().push(student);
			actionContext.getSession().put("student", student);
			return "login_success";
		}else{
			this.addActionError("√‹¬Î¥ÌŒÛ«Î÷ÿ ‘");
			return "input";
		}
		
	}


	

}
