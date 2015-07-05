package com.borneo.lotteryDna.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.borneo.framework.base.dao.BaseDAOImpl;
import com.borneo.lotteryDna.entity.SportsToto4dDrawDetail;

@Repository(SportsToto4dDrawDetailDaoImpl.springBean)
public class SportsToto4dDrawDetailDaoImpl extends BaseDAOImpl implements SportsToto4dDrawDetailDao{

	public SportsToto4dDrawDetail getSportsToto4dDrawDetail(Long sportsToto4dDrawId, String fourDNo)throws Exception{
		DetachedCriteria dc = DetachedCriteria.forClass(SportsToto4dDrawDetail.class);
		dc.add(Restrictions.eq(SportsToto4dDrawDetail.ALIAS_SPORTS_TOTO_4D_DRAW_ID, sportsToto4dDrawId));
		dc.add(Restrictions.eq(SportsToto4dDrawDetail.ALIAS_FOUR_D_NO, fourDNo));
		
		SportsToto4dDrawDetail sportsToto4dDrawDetail = null;
		@SuppressWarnings("unchecked")
		List<SportsToto4dDrawDetail> list = findByCriteria(dc);
		if (list.size()>0)
			sportsToto4dDrawDetail = list.get(0);
		
		return sportsToto4dDrawDetail;
	}
}
