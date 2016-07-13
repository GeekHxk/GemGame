package com.gem.controller;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gem.model.Device;
import com.gem.model.RepairInfo;
import com.gem.model.ServiceMan;
import com.gem.service.DeviceService;
import com.gem.service.RepairInfoService;
import com.gem.service.ServiceManService;
import com.gem.utils.MatrixToImageWriter;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

@Controller
public class EmployeeController {
	
	@Autowired
	private RepairInfoService ris;
	
	@Autowired
	private DeviceService deviceService;

	@Autowired
	private ServiceManService serviceManService;
	
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
	
	//公司信息的二维码，把图片写到流中
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
            outputSream.flush();
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

    //尚未维修的界面
    @RequestMapping("/beforeService")
    public String getBeforeRepair(Model modelMap){
    	List<RepairInfo> listRepairInfo = ris.getRepairByState("待维修");
    	System.out.println(listRepairInfo);
    	modelMap.addAttribute("listRepair", listRepairInfo);
    	return "EmployeeBeforeService";
    }				
    
    //获取还未维修的信息
    @ResponseBody
    @RequestMapping("/beforeRepairInfo")
    public List<RepairInfo> getBeforeRepairInfo(){
    	List<RepairInfo> repairInfo = ris.getRepairByState("");
    	return repairInfo;
    }
    
    //正在维修的
    @RequestMapping("/serviceing")
    public String repairing(Model model){
    	List<RepairInfo> list = ris.getRepairByState("维修中");
    	model.addAttribute("listRepair", list);
    	return "EmployeeServiceing";
    }
    
    //已完成的维修
    @RequestMapping("/afterService")
    public String afterRepair(Model model){
    	List<RepairInfo> list = ris.getRepairByState("维修完毕");
    	model.addAttribute("listRepair", list);
    	return "EmployeeAfterService";
    }
    
    //保存设备信息
    @RequestMapping("/saveDeviceInfo")
    public void saveDeviceInfo(Device device,HttpServletResponse hsr){
    	deviceService.addDeviceInfo(device);
    }
    
    //根据地区得到的维修员
    @ResponseBody
    @RequestMapping(value=("/getServiceManByArea"), method = RequestMethod.GET)
    public List<ServiceMan> getServiceManByArea(HttpServletRequest hsr) throws UnsupportedEncodingException{
    	//System.out.println(hsr.getParameter("area"));
    	String area= new String(hsr.getParameter("area").getBytes("iso-8859-1"), "utf-8");
    	String state= new String(hsr.getParameter("state").getBytes("iso-8859-1"), "utf-8");
//    	String area = hsr.getParameter("area");
//    	String state = hsr.getParameter("state");
    	System.out.println(area+"    "+state);
    	List<ServiceMan> list = serviceManService.getServiceManByAreaAndState(area, state);
    	System.out.println(list);
    	return list;
    }
    
    //保存设备信息
    @RequestMapping("/addServiceManToRepair")
    public void addServiceMan(HttpServletResponse hsr){
    	
    }
    
    //正前往维修的页面
    @RequestMapping("/goService")
    public String goService(HttpServletRequest hsr){
    	String number = hsr.getParameter("number");
    	return "rediect:beforeService";
    }
}
