package cc.mixin.dao;

import java.util.List;

import cc.mixin.domain.Duty;
import cc.mixin.domain.Student;

public interface DutyDao {

	List<Duty> findTeaByClassName(String className);

	int findTeaIdByTeaName(String teaName);

	boolean checkisEvaluate(int stuId, int teaId, String string);

	Student findStuById(int stuId);

	String findMainTeaByClassName(String className);

	boolean checkisMainTeacherEvaluate(int stuId, int teaId);

	boolean checkSchoolisEvaluate(int stuId);

	

}
