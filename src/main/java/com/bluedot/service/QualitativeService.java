package com.bluedot.service;

import java.util.List;

import com.bluedot.po.Cadre;
import com.bluedot.po.Department;

/**
 * 定性 评分service接口
 * @author hxp
 * 2018年11月29日 下午9:59:40
 */
public interface QualitativeService {

    List<Cadre> loadCadre(int ofDepartment);

    List<Department> loadDepartment(String userName);
    
    List<Cadre> loadAllPlusCadre(Integer rank);

    List<Department> loadDepartmentByType(int type);

}
