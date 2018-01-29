package com.mixin.service;

import java.util.List;

import cc.mixin.domain.Duty;
import cc.mixin.domain.PageBean;
import cc.mixin.domain.Student;

public interface DutyService {

	List<PageBean> findTeaByStudent(Student student);

	Student findStuById(int stuId);



}
