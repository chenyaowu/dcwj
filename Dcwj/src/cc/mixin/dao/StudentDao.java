package cc.mixin.dao;

import cc.mixin.domain.Student;

public interface StudentDao {

	Student login(String stuId, String password);

}
