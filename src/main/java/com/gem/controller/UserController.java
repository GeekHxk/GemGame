package com.gem.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.print.Doc;
import javax.print.DocFlavor;
import javax.print.DocPrintJob;
import javax.print.PrintException;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.ServiceUI;
import javax.print.SimpleDoc;
import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;
import javax.print.attribute.standard.Copies;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gem.model.User;
import com.gem.service.UserService;
import com.gem.utils.MatrixToImageWriter;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;

@Controller
public class UserController {

	
    @Autowired  
    private UserService userService;  
      
    @RequestMapping("/")    
    public String Index(){      
        return "EmployeeProfile";    
    }
    /*
    @RequestMapping("/web")    
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("index");   
        User user = userService.selectUserById(1);  
        mav.addObject("user", user);   
        return mav;    
    } 
    
    //生成图片
    public BufferedImage getImg(){     
    	BufferedImage bi = null;
    	try {
            String content = "120605181003;http://www.cnblogs.com/jtmjx";
            String path = "C:/Users/some/Desktop";
            MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
            Map hints = new HashMap();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            BitMatrix bitMatrix = multiFormatWriter.encode(content, BarcodeFormat.QR_CODE, 400, 400,hints);
            
            bi = MatrixToImageWriter.toBufferedImage(bitMatrix);
            
        } catch (Exception e) {
            e.printStackTrace();
        }   
        return bi;    
    }
    
    //生成图片保存到本地
    @RequestMapping("/zxing")
    public String getZxing(ModelMap model){      
    	try {
            String content = "120605181003;http://www.cnblogs.com/jtmjx";
            String path = "C:/Users/some/Desktop";
            MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
            Map hints = new HashMap();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            BitMatrix bitMatrix = multiFormatWriter.encode(content, BarcodeFormat.QR_CODE, 400, 400,hints);
            
            File file1 = new File(path,"餐巾.jpg");
            MatrixToImageWriter.writeToFile(bitMatrix, "jpg", file1);
            
        } catch (Exception e) {
            e.printStackTrace();
        }   
        return "index";    
    }
    
    //把图片写到流中
    @RequestMapping("/showimg")
    public String showimg(HttpServletResponse hsres){      
    	try {
            String content = "120605181003;http://www.cnblogs.com/jtmjx";
            MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
            Map hints = new HashMap();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            BitMatrix bitMatrix = multiFormatWriter.encode(content, BarcodeFormat.QR_CODE, 400, 400,hints);

            hsres.setContentType("image/jpeg");  
            hsres.setCharacterEncoding("UTF-8");  
            //PrintWriter pw = hsres.getWriter();
    	    OutputStream outputSream = hsres.getOutputStream();
            MatrixToImageWriter.writeToStream(bitMatrix, "jpg", outputSream);
            outputSream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }   
        return "index";    
    }
    
    
    //打印图片
    @RequestMapping("/printimg")
    public void drawImage(String fileName) {  
        try {  
            DocFlavor dof = null;  
            // 根据用户选择不同的图片格式获得不同的打印设备  
            if (fileName.endsWith(".gif")) {  
                // gif  
                dof = DocFlavor.INPUT_STREAM.GIF;  
            } else if (fileName.endsWith(".jpg")) {  
                // jpg  
                dof = DocFlavor.INPUT_STREAM.JPEG;  
            } else if (fileName.endsWith(".png")) {  
                // png  
                dof = DocFlavor.INPUT_STREAM.PNG;  
            }  
            // 字节流获取图片信�?  
            //FileInputStream fin = new FileInputStream(fileName);  
            
            //把图片弄成fileinputstream
            BufferedImage bufferImg = getImg();
                       
            // 获得打印属�??  
            PrintRequestAttributeSet pras = new HashPrintRequestAttributeSet();  
            // 每一次默认打印一�?  
            pras.add(new Copies(1));  
            // 获得打印设备 ，字节流方式，图片格�?  
            PrintService pss[] = PrintServiceLookup.lookupPrintServices(dof,  
                    pras);  
            // 如果没有获取打印�?  
            if (pss.length == 0) {  
                // 终止程序  
                return;  
            }  
            // 获取第一个打印机  
            PrintService ps = pss[0];  
            System.out.println("Printing image..........." + ps);  
            // 获得打印工作  
            DocPrintJob job = ps.createPrintJob();  
  
            // 设置打印内容  
            Doc doc = new SimpleDoc(bufferImg, dof, null);  
            
            // 出现设置对话�?  
            PrintService service = ServiceUI.printDialog(null, 50, 50, pss, ps, dof, pras);  
            if (service != null) {  
                // �?始打�?  
                job = service.createPrintJob();  
                job.print(doc, pras);  
                //fin.close();  
            }  
        } catch (PrintException pe) {  
            // 捕获打印异常  
            pe.printStackTrace();  
        }  
    }
    
    /*
    public void drawImage(String fileName) {  
        try {  
            DocFlavor dof = null;  
            // 根据用户选择不同的图片格式获得不同的打印设备  
            if (fileName.endsWith(".gif")) {  
                // gif  
                dof = DocFlavor.INPUT_STREAM.GIF;  
            } else if (fileName.endsWith(".jpg")) {  
                // jpg  
                dof = DocFlavor.INPUT_STREAM.JPEG;  
            } else if (fileName.endsWith(".png")) {  
                // png  
                dof = DocFlavor.INPUT_STREAM.PNG;  
            }  
            
            // 字节流获取图片信�?  
            //FileInputStream fin = new FileInputStream(fileName);  
            
            //把图片弄成fileinputstream
            BufferedImage bufferImg = getImg();
                       
            // 获得打印属�??  
            PrintRequestAttributeSet pras = new HashPrintRequestAttributeSet();  
            // 每一次默认打印一�?  
            pras.add(new Copies(1));  
            // 获得打印设备 ，字节流方式，图片格�?  
            PrintService pss[] = PrintServiceLookup.lookupPrintServices(dof,  
                    pras);  
            // 如果没有获取打印�?  
            if (pss.length == 0) {  
                // 终止程序  
                return;  
            }  
            // 获取第一个打印机  
            PrintService ps = pss[0];  
            System.out.println("Printing image..........." + ps);  
            // 获得打印工作  
            DocPrintJob job = ps.createPrintJob();  
  
            // 设置打印内容  
            Doc doc = new SimpleDoc(bufferImg, dof, null);  
            
            // 出现设置对话�?  
            PrintService service = ServiceUI.printDialog(null, 50, 50, pss, ps, dof, pras);  
            if (service != null) {  
                // �?始打�?  
                job = service.createPrintJob();  
                job.print(doc, pras);  
                //fin.close();  
            }  
        } catch (IOException ie) {  
            // 捕获io异常  
            ie.printStackTrace();  
        } catch (PrintException pe) {  
            // 捕获打印异常  
            pe.printStackTrace();  
        }  
    }*/
    
    
    @RequestMapping("/getInfo")
    public String getImage() {  
    	return "index1";
    }
}
