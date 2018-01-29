package cc.mixin.service.impl;

import com.mixin.service.StudentService;

import cc.mixin.dao.StudentDao;
import cc.mixin.domain.Student;

public class StudentServiceImpl implements StudentService {
	private StudentDao StudentDao ;
	
	public void setStudentDao(StudentDao studentDao) {
		StudentDao = studentDao;
	}

	@Override
	public Student Studentlogin(String stuId, String password) {
		return StudentDao.login(stuId,password);
	}

	

}
