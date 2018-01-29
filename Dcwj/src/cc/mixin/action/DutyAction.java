package cc.mixin.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.mixin.service.DutyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

import cc.mixin.domain.Duty;
import cc.mixin.domain.PageBean;
import cc.mixin.domain.Student;

public class DutyAction extends ActionSupport {
	//ע��Service
	private DutyService dutyService;
	
	
	public void setDutyService(DutyService dutyService) {
		this.dutyService = dutyService;
	}

	//���ݿγ����Ʋ��ʦ
	public String findTeaByClassName(){
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		valueStack.pop();
		Student student = (Student) valueStack.pop();
		List<PageBean> list =  dutyService.findTeaByStudent(student);
		ActionContext.getContext().put("list", list);
		return "findTeaByClassNameSuccess";
	}
	private int id;
	
	public void setId(int id) {
		this.id = id;
	}

	//����ѧ��Id��ѧ��
	public String findStuById(){
		System.out.println(id);
		Student student = dutyService.findStuById(id);
		ActionContext.getContext().getValueStack().push(student);
		return "findStuByIdSuccess";
		
		
	}



	
	
}
