package com.borneo.lotteryDna.api;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.borneo.lotteryDna.service.ProcSportsToto4DService;

@Controller
@RequestMapping("/api")
public class InvokeServiceController {

	@Resource
	private ProcSportsToto4DService procSportsToto4DService;
	
	@RequestMapping(value = "/openSportsToto4dFile", method = RequestMethod.GET)
    @ResponseBody
    public Object test() {
		procSportsToto4DService.openSportsToto4dFileUpdate();
        return "OK";
    }
	
}
