package com.borneo.lotteryDna.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.borneo.framework.base.dao.BaseDAOImpl;
import com.borneo.lotteryDna.entity.SportsToto4dDraw;

@Repository(SportsToto4dDrawDaoImpl.springBean)
public class SportsToto4dDrawDaoImpl extends BaseDAOImpl implements SportsToto4dDrawDao{

	public SportsToto4dDraw getSportsToto4dDrawByDrawNo(String drawNo)throws Exception{
		DetachedCriteria dc = DetachedCriteria.forClass(SportsToto4dDraw.class);
		dc.add(Restrictions.eq(SportsToto4dDraw.ALIAS_DRAW_NO, drawNo));
		
		SportsToto4dDraw sportsToto4dDraw = null;
		@SuppressWarnings("unchecked")
		List<SportsToto4dDraw> list = findByCriteria(dc);
		if (list.size()>0)
			sportsToto4dDraw = list.get(0);
		
		return sportsToto4dDraw;
	}
}
