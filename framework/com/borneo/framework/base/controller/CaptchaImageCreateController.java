/**
 *
 */
package com.borneo.framework.base.controller;

import java.awt.image.BufferedImage;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.borneo.framework.common.utils.Constant;
import com.google.code.kaptcha.Producer;

/**
 * @author peter.yuan
 */
@Controller
public class CaptchaImageCreateController extends BaseController {

    @Resource
    private Producer captchaProducer;

    @RequestMapping("/captcha-image.img")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // Set to expire far in the past.                 
        response.setDateHeader("Expires", 0);
        // Set standard HTTP/1.1 no-cache headers.  
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).             
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        // Set standard HTTP/1.0 no-cache header.              
        response.setHeader("Pragma", "no-cache");
        // return a jpeg                
        response.setContentType("image/jpeg");
        // create the text for the image         
        String capText = captchaProducer.createText();
        // store the text in the session            
        request.getSession().setAttribute(Constant.KAPTCHA_SESSION_KEY, capText);
        // create the image with the text           
        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        // write the data out              
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
        return null;
    }

    /**
     * @param request
     * @return if exist,return false;else return true
     */
    @RequestMapping(value = "/captcha-image/check", method = RequestMethod.GET)
    @ResponseBody
    public String checkUserName(HttpServletRequest request) {
        String jCode = request.getParameter("j_code");
        String captcha = (String) request.getSession().getAttribute(Constant.KAPTCHA_SESSION_KEY);
        return String.valueOf(jCode.equalsIgnoreCase(captcha));
    }

}
