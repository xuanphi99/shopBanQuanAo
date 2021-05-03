package com.trungtamjava.Springmvc;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.trungtamjava.Service.NhanVienService;
import com.trungtamjava.entity.NhanVien;

@Controller
@RequestMapping("/dangnhap")
public class dangnhap {
	
	@Autowired
	NhanVienService nhanVienService;
	
    @GetMapping	
	public String Default(ModelMap map ,HttpServletRequest request ) {
    
    	 
  
		return "dangnhap";
	}

   public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
			  Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

		public static boolean validate(String emailStr) {
			 Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
			 return matcher.find();
		}
		public static int isValid(String password) {  
	        //return true if and only if password:
	        //1. have at least eight characters.
	        //2. consists of only letters and digits.
	        //3. must contain at least two digits.
	        if (password.trim().length() < 8) {   
	            return 1;  
	        } else {      
	            char c;  
	            int count = 1;   
	            for (int i = 0; i < password.length() - 1; i++) {  
	                c = password.charAt(i);  
	                if (!Character.isLetterOrDigit(c)) {          
	                    return 2;  
	                } else if (Character.isDigit(c)) {  
	                    count++;  
	                    if (count < 2)   {     
	                        return 3;  
	                    }     
	                }  
	            }  
	        }  
	        return 0;  
	    }  
  
}
