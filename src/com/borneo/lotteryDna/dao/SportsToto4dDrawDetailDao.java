package com.borneo.lotteryDna.dao;

import com.borneo.framework.base.dao.BaseDAO;
import com.borneo.lotteryDna.entity.SportsToto4dDrawDetail;

public interface SportsToto4dDrawDetailDao extends BaseDAO{
	static String springBean="sportsToto4dDrawDetailDao";
	
	public SportsToto4dDrawDetail getSportsToto4dDrawDetail(Long sportsToto4dDrawId, String fourDNo)throws Exception;
}
