package com.gem.controller;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gem.utils.MatrixToImageWriter;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

@Controller
public class EmployeeController {

	@RequestMapping(" ")
	public String getIndex(){
		return "";
	}
	
	
	@RequestMapping("/EmployeeQRcode")
	public String getEmployeeQRcode(HttpServletResponse hsres){
		//showimg(hsres);
		return "EmployeeQRcode";
	}
	
	@RequestMapping("/EmployeeDeviceInfo")
	public String setEmployeeDevice(HttpServletResponse hsres){
		return "EmployeeDeviceInfo";
	}
	
	//把图片写到流中
    @RequestMapping("/showimg")
    public void showimg(HttpServletResponse hsres){      
    	try {
            String content = "120605181003;http://www.cnblogs.com/jtmjx";
            MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
            Map hints = new HashMap();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            BitMatrix bitMatrix = multiFormatWriter.encode(content, BarcodeFormat.QR_CODE, 300, 300,hints);

            hsres.setContentType("image/jpeg");  
            hsres.setCharacterEncoding("UTF-8");  
            //PrintWriter pw = hsres.getWriter();
    	    OutputStream outputSream = hsres.getOutputStream();
            MatrixToImageWriter.writeToStream(bitMatrix, "jpg", outputSream);
            outputSream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }   
    }
	
}
