<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"/>

</head>
<body id="body-login">
   <div id="body-flex-login">
   		<div id="container-login">
   			<div id="container-login-left">
   			  <div id="header-top-left" class="header-login">
   			  	<span id="text-logo">Welcome</span> <br>
   			  	<span id="hint-text-logo">Hãy tạo nên phong cách của bạn cùng Minishop ! </span> 
   			  </div>
<!--    			  end nd tren -->
   			  
   			<div id="header-bottom-left">
   			 <p> <img alt="icon_oval" src="<c:url value="/resources/images/icon_oval.png" />"> <span>Luôn cập nhật xu hướng thời trang mới nhất</span>  </p> 
   			 <p> <img alt="icon_oval" src="<c:url value="/resources/images/icon_oval.png" />">	<span>Giảm hơn 50% tất cả các mặt hàng giành cho khách VIP </span></p>
   			  <p> <img alt="icon_oval" src="<c:url value="/resources/images/icon_oval.png" />">	<span>Tận tình tư vấn để tạo nên phong cách của bạn</span> </p>
   			</div>   
<!--    			// het nd dui -->
   			</div>
   			
   			
<!--    			 phan dang nhap ,dang ky -->
   			<div id="container-login-right">
   			 	
   			 	<div id="header-top-right" class="header-login">
					<span class="actived" id="Formdangnhap">Đăng nhập</span> / <span id="Formdangky">Đăng ký</span>
				</div>
				
					 
					
					
				
   		<div class="container-login-form" id="container-center-login-right">
	
   			<input  name="email" class="material-textinput input-icon-email csschung email" placeholder="Email" type="text" /><br/>
   			<input id="matkhau"  name="matkhau" class="material-textinput input-icon-password csschung matkhau" placeholder="Mật khẩu " type="text" /><br/>
   									<input type="checkbox" class="showmk"   " /> show password  <br>
   			<button  class="material-primary-button csschung btnDangNhap" > ĐĂNG NHẬP  </button> 	
   			 <a href="/MiniTest/trangchu">	 
   			 <button  class="material-primary-button csschung CancelDangNhap" > Cancel</button>
   			 </a>
   			  
   			  <br/>
   			<span id="kqdn"></span>
<%--    			<span id="tendn" style="display : none; ">${email}</span> --%>
   		</div>	
   		
   		
   		<div class="container-signup-form" id="container-center-login-right">
   		
								<input id="emaildk"  name="email" class="material-textinput input-icon-email csschung email" placeholder="Email" type="text" /><br/><p></p>
								<span id="ketqua0"></span>
<%-- 				<span  style="color: red ; margin: 5px 0px; display: block; ">${kiemtraEmail}</span>	 --%>
								<input id="matkhaudk" name="matkhau" class="material-textinput input-icon-password csschung matkhau" placeholder="Mật khẩu " type="password" /><p></p>
								<span id="ketquadky1"></span> 
								<input id="matkhaunhaplaidk"  name="nhaplaimatkhau" class="material-textinput input-icon-password csschung nhaplaimatkhau" placeholder="Nhập lại mật khẩu " type="password" /><br/>
								<span id="ketquadky2"></span><br>
						<input type="checkbox" class="showmk"   " /> show password  <br>
								
<%-- 				<span style="color: red ; margin: 5px 0px; display: block; ">${kiemtrapass}</span> --%>
								<input id="xulydk" class="material-primary-button csschung nutdk "  type="submit" value="ĐĂNG KÝ" />
							 
					 <a href="/MiniTest/trangchu">
								 <button id=" " class="material-primary-button csschung CancelDangNhap" >
								  Cancel
								  
								  </button>
   			 				</a>		
						
 		
 			
 			<span id="ketquadky3"></span>
<%-- 				<span style="color: red ; margin: 5px 0px; display: block; ">${kiemtradangnhap}</span>	 		 --%>
   		</div>	 
   		
   		   
		
   		<div id="container-social-login">
					<img alt="icon_oval" src='<c:url value="/resources/images/icon_facebook.png" />' />
					<img alt="icon_oval" src='<c:url value="/resources/images/icon_google.png" />' />
				</div>
   		
   		
   		
   		
<!--    			</div>  -->
<!--    			// het container-login-right -->
   		
   		
   		
   		</div>  
<!--    // end container-login -->

   </div>
   
   
  
   
   
   
</body>
</html>