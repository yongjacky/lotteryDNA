package com.borneo.framework.base.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.borneo.framework.base.dao.TmoduleDAO;

@Service(TmoduleService.BEAN_NAME)
public class TmoduleServiceImpl extends BaseServiceImpl implements TmoduleService {

    @Resource
    private TmoduleDAO tmoduleDAO;

}
