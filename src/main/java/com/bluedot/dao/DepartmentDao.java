package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.Department;

/**
 * @author : 游斌平
 *
 */
public interface DepartmentDao {
	public int insertDepartment(Department department);
	public List<Department> searchManageDepartment();
	public List<Department> searchTeacherDepartment();
	public void updateDepartment(Department department);
	public void updateDepartmentGroup(Department department);
	public void deleteDepartment(Department department);
	public Department searchDepartment(int id);
}
