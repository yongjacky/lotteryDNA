package com.borneo.lotteryDna.dao;

import com.borneo.framework.base.dao.BaseDAO;
import com.borneo.lotteryDna.entity.SportsToto4dDraw;

public interface SportsToto4dDrawDao extends BaseDAO{
	static String springBean = "sportsToto4dDrawDao";
	
	public SportsToto4dDraw getSportsToto4dDrawByDrawNo(String drawNo)throws Exception;
}
