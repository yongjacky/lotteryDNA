package com.borneo.framework.base.dao;

import com.borneo.framework.base.entity.Trole;

public interface TroleDAO extends BaseDAO {

    String BEAN_NAME = "troleDAO";

    Trole getRoleByCode(String code);
}
