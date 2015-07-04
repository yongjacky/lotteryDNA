package com.borneo.framework.base.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.borneo.framework.base.dao.TroleDAO;
import com.borneo.framework.base.entity.Trole;

@Service(TroleService.BEAN_NAME)
public class TroleServiceImpl extends BaseServiceImpl implements TroleService {

    @Resource
    private TroleDAO troleDAO;

    @Override
    public Trole getRoleByCode(String code) {
        return troleDAO.getRoleByCode(code);
    }
}
