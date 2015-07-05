package com.borneo.lotteryDna.service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.borneo.framework.base.service.BaseServiceImpl;
import com.borneo.framework.common.utils.DateUtils;
import com.borneo.lotteryDna.dao.SportsToto4dDrawDao;
import com.borneo.lotteryDna.dao.SportsToto4dDrawDetailDao;
import com.borneo.lotteryDna.entity.SportsToto4dDraw;
import com.borneo.lotteryDna.entity.SportsToto4dDrawDetail;

@Service(ProcSportsToto4DServiceImpl.springBean)
public class ProcSportsToto4DServiceImpl extends BaseServiceImpl implements ProcSportsToto4DService{
	
	@Resource
	private SportsToto4dDrawDao sportsToto4dDrawDao;
	@Resource 
	private SportsToto4dDrawDetailDao sportsToto4dDrawDetailDao;
	
	private boolean createSportsToto4dDraw(String[] values)throws Exception{
		String drawNo = values[0];
		
		SportsToto4dDraw sportsToto4dDraw = this.sportsToto4dDrawDao.getSportsToto4dDrawByDrawNo(drawNo.trim());
		if (sportsToto4dDraw==null){
			System.out.println("drawNo="+drawNo);
			sportsToto4dDraw = new SportsToto4dDraw();
			sportsToto4dDraw.setCreatedDate(new Date());
			
			sportsToto4dDraw.setDrawNo(drawNo.trim());
			String strDrawDate = values[1];
			Date drawDate = DateUtils.string2Date(strDrawDate, "yyyyMMdd");
			sportsToto4dDraw.setDrawDate(drawDate);
			sportsToto4dDrawDao.merge(sportsToto4dDraw);
			
			createSportsToto4dDetail(sportsToto4dDraw, values);
			
			return true;
		}
		
		return false;
	}
	
	private void createSportsToto4dDetail(SportsToto4dDraw sportsToto4dDraw, String[] values)throws Exception{
		for (int i=2;i<values.length;i++){
			String fourDNo = values[i];
			
			SportsToto4dDrawDetail sportsToto4dDrawDetail = this.sportsToto4dDrawDetailDao.getSportsToto4dDrawDetail(sportsToto4dDraw.getId(), fourDNo);
			if (sportsToto4dDrawDetail==null){
				System.out.println("Insert new SportsToto4dDrawDetail");
				sportsToto4dDrawDetail = new SportsToto4dDrawDetail();
				sportsToto4dDrawDetail.setCreatedDate(new Date());
				sportsToto4dDrawDetail.setSportstoto4dDrawId(sportsToto4dDraw.getId());
				sportsToto4dDrawDetail.setFourDNo(fourDNo);
				sportsToto4dDrawDetail.setDrawDate(sportsToto4dDraw.getDrawDate());
				merge(sportsToto4dDrawDetail);
			}
		}
	}
	
	public void openSportsToto4dFileUpdate(){
		try {
	          BufferedReader in = new BufferedReader(new FileReader("/Users/jackyyong/Documents/jackyYongProjects/lotteryDNA-Project/development/lotteryDNA/docs/sportstoto_history_4D.txt"));
	          String str;
	          str = in.readLine();
	          
	          int i=0;
	          while ((str = in.readLine()) != null) {
	              String[] ar=str.split(",");
	              boolean isCreated = createSportsToto4dDraw(ar);
	              if (isCreated) {
	            	  i++;
	            	  if (i>=50) break;
	              }
	              //if (isCreated) break;
	          }
	          in.close();
	      } catch (IOException e) {
	          System.out.println("File Read Error");
	      } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@PostConstruct
	public void initIt() throws Exception {
		System.out.println("Init method after properties are set ");
	  
		/*new Runnable() {
			@Override
			public void run() {
				openSportsToto4dFileUpdate();
			}
		}.run();
*/
	}
 
	@PreDestroy
	public void cleanUp() throws Exception {
	  System.out.println("Spring Container is destroy! Customer clean up");
	}
}
