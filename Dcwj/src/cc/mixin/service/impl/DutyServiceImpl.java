package cc.mixin.service.impl;

import java.util.ArrayList;
import java.util.List;

import cc.mixin.dao.DutyDao;
import cc.mixin.domain.Duty;
import cc.mixin.domain.PageBean;
import cc.mixin.domain.Student;
import cc.mixin.domain.Teacher;

import com.mixin.service.DutyService;

public class DutyServiceImpl implements DutyService {
	private DutyDao dutyDao;
	
	public void setDutyDao(DutyDao dutyDao) {
		this.dutyDao = dutyDao;
	}

	@Override
	public List<PageBean> findTeaByStudent(Student student) {
		// TODO Auto-generated method stub
		String className = student.getClassName();
		List<Duty> list =  dutyDao.findTeaByClassName(className);
		if(list.size()<0)
			return null;
		int stuId = student.getId();
		String mainTeacher = dutyDao.findMainTeaByClassName(className);
		int teaId = dutyDao.findTeaIdByTeaName(mainTeacher);
		List<PageBean> pageBeanList= new ArrayList<PageBean>();
		PageBean pageBean = new PageBean();
		pageBean.setStuId(stuId);
		pageBean.setCourName("班主任");
		pageBean.setTeaName(mainTeacher);
		pageBean.setTeaId(teaId);
		boolean isMainTeacherEvaluate = dutyDao.checkisMainTeacherEvaluate(stuId,teaId);
		
		if(isMainTeacherEvaluate)
			pageBean.setEvaluate(1);
		else{
			pageBean.setEvaluate(0);
		}
		pageBeanList.add(pageBean);
		
		for (int i = 0; i < list.size(); i++) {
			Duty duty = list.get(i);
			teaId =dutyDao.findTeaIdByTeaName(duty.getTeaName());
			boolean isEvaluate = dutyDao.checkisEvaluate(stuId,teaId,duty.getCourName());
			pageBean = new PageBean();
			pageBean.setStuId(stuId);
			pageBean.setTeaId(teaId);
			pageBean.setCourName(duty.getCourName());
			pageBean.setTeaName(duty.getTeaName());
			if(isEvaluate){
				pageBean.setEvaluate(1);
				}
			else{
				pageBean.setEvaluate(0);
			}
			
			pageBeanList.add(pageBean);
		}
		
		pageBean = new PageBean();
		pageBean.setCourName("学生在校体验满意度调查");
		pageBean.setStuId(stuId);
		pageBean.setTeaId(0);
		boolean isEvaluate = dutyDao.checkSchoolisEvaluate(stuId);
		if(isEvaluate)
			pageBean.setEvaluate(1);
		else
			pageBean.setEvaluate(0);
		pageBeanList.add(pageBean);
		
		
		return pageBeanList;
	}

	@Override
	public Student findStuById(int stuId) {
		// TODO Auto-generated method stub
		return dutyDao.findStuById(stuId);
	}

	
	

	

}
