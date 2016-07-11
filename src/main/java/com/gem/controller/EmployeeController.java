package com.gem.controller;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gem.model.RepairInfo;
import com.gem.service.RepairInfoService;
import com.gem.utils.MatrixToImageWriter;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

@Controller
public class EmployeeController {
	
	@Autowired
	private RepairInfoService ris;
	
	@RequestMapping("/employeeProfile")
	public String getEmployeeProfile(HttpServletResponse hsres){
		return "EmployeeProfile";
	}
	
	@RequestMapping("/employeeQRcode")
	public String getEmployeeQRcode(HttpServletResponse hsres){
		return "EmployeeQRcode";
	}
	
	@RequestMapping("/employeeDeviceInfo")
	public String setEmployeeDevice(HttpServletResponse hsres){
		return "EmployeeDeviceInfo";
	}
	
	@RequestMapping("/companyServiceManInfo")
	public String getCompanyRepairManInfo(HttpServletResponse hsres){
		return "CompanyServiceManInfo";
	}
	
	@RequestMapping("/socialServiceManInfo")
	public String getSocialRepairManInfo(HttpServletResponse hsres){
		return "SocialServiceManInfo";
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
    
    //接受Android端报修信息的提交
    @RequestMapping("/repairInfo")
    public void setRepairInfo(RepairInfo ri){
    	ris.addRepairInfo(ri);
    }

    //
    @RequestMapping("/beforeService")
    public String getBeforeRepair(){
    	return "EmployeeBeforeService";
    }
    
    @ResponseBody
    @RequestMapping("/beforeRepairInfo")
    public List<RepairInfo> getBeforeRepairInfo(){
    	List<RepairInfo> repairInfo = ris.getRepairByState("");
    	return repairInfo;
    }
    
    //维修地址映射
    @RequestMapping("/serviceing")
    public String repairing(){
    	return "EmployeeServiceing";
    }
    
    //维修地址映射
    @RequestMapping("/afterService")
    public String afterRepair(){
    	return "EmployeeAfterService";
    }
}
