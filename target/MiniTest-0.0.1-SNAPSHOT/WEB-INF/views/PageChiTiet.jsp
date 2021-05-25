<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link  href="<c:url value="/resources/Bootstrap/bootstrap.min.css"/>" rel="stylesheet">
<link  href="<c:url value="/resources/css/styleTrangchu.css"/>" rel="stylesheet">
<link  href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
<script type="text/javascript" src='<c:url value="/resources/css/wow.min.js"  />'></script>
<script> new WOW().init(); </script>


</head>
<body>


		<div class="MenuChiTiet">
		<div class="headerChitiet container-fluid">
		
		<!-- 		phan menu -->
	
	
		<nav class="navbar navbar-expand-lg navbar-light bg-light maumenu">
  <a class="navbar-brand wow flash" data-wow-duration="1s" data-wow-iteration="5" href="#">
    <img alt="anh bia" src='<c:url value="/resources/Image/icon_yame_shop.png" />'>
  </a>
<!--    phan nay de menu thu nhu
 -->  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse itemmenu  " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto  itemmenutrai wow fadeInDown  "  data-wow-delay="0.5s" data-wow-delay="1s">
      <li class="nav-item active">
        <a class="nav-link" href="/MiniTest/trangchu">Trang chủ <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Dịch vụ</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Danh Mục
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        
        <c:forEach var="danhMucSP" items="${danhmucsanpham}">
			  <a class="dropdown-item" href='<c:url value="/danhmuc/${danhMucSP.getMaDanhMuc()}/${danhMucSP.getTenDanhMuc() }"/> '> ${danhMucSP.getTenDanhMuc()}</a>
				
				</c:forEach> 
        
        
         <!--  <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a> -->
        </div>
      </li>
      </ul> 
<!--       het iemtrai -->
     <ul  class="navbar-nav itemphai ">
				<c:choose>
					<c:when test="${chucaidau != null }">
			<li class="nav-item ">
			<a class=" nav-link circle-avartar" href="http://localhost:8080/MiniTest/dangnhap/">
			<span> ${chucaidau }</span>
			</a>
			
			</li>
		</c:when>
					
					<c:otherwise>
			<li class="nav-item ">	<a class="nav-link LinkDangNhap" href="/MiniTest/dangnhap/">
				Đăng nhập
				</a>	
				</li>
					</c:otherwise>
				</c:choose>

     	
<!-- 	<div class="shoppingCast"> -->
     	 <li class="nav-item ParentShoppingCast ">
     	  <a class="logogioohang" href="/MiniTest/giohang">
     <img alt="anh bia" src='<c:url value="/resources/Image/ic_shopping_cart_white_24dp_1x.png" />'></a>
     
     <c:if test="${SumCast > 0 }">
			        	 <span id="giohang" class="sumCast">${SumCast } </span>
			        </c:if>
			        
			        <c:if test="${SumCast <= 0 || SumCast == null  }">
			        	 <span id="giohang" class=""> ${SumCast }</span>
			        </c:if>
      	 
		</li>

	</ul>
  </div>
</nav>
</div>
</div>
<!-- het menu -->

    <div class="Messenger alert alert-warning alert-dismissible fade show">
    <svg fill="currentColor" preserveAspectRatio="xMidYMid meet" height="1em" width="1em" viewBox="0 0 40 40" style="vertical-align:middle"><g><path d="m31.7 16.4q0-0.6-0.4-1l-2.1-2.1q-0.4-0.4-1-0.4t-1 0.4l-9.1 9.1-5-5q-0.5-0.4-1-0.4t-1 0.4l-2.1 2q-0.4 0.4-0.4 1 0 0.6 0.4 1l8.1 8.1q0.4 0.4 1 0.4 0.6 0 1-0.4l12.2-12.1q0.4-0.4 0.4-1z m5.6 3.6q0 4.7-2.3 8.6t-6.3 6.2-8.6 2.3-8.6-2.3-6.2-6.2-2.3-8.6 2.3-8.6 6.2-6.2 8.6-2.3 8.6 2.3 6.3 6.2 2.3 8.6z"></path></g></svg>
  <strong class="TextOne">Thêm vào giỏ hàng thành công!</strong> 
  <button type="button" class="close nutX"  aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <a class="btn-view-cart" herf="">Xem giỏ hàng và thanh toán</a>
</div>


<div class="PhanThanChiTiet">
<!-- ndgiua -->
	<div class="container">
	<div class="chitietSanPham">
	<div class="row">
		<div class=" col-md-2">
		<div class="TittleSanPham">Danh mục sản phẩm</div>
			<ul class="dsSanPham">
			<c:forEach var="danhMucSP" items="${danhmucsanpham}">
				<li>${danhMucSP.getTenDanhMuc()}</li>
				
				</c:forEach>
			</ul>
		</div>
		<div class=" col-md-8">
			<div class="row">
				<div class=" col-md-4">
					<img class="anhSPChitiet" data-urlAnhSP="<c:url value="/resources/Image/sanpham/${sanpham.getHinhSanPham() }"/>" src='<c:url value="/resources/Image/sanpham/${sanpham.getHinhSanPham() }"/>' alt="" />
					
				</div>	
				<div class=" col-md-8">
					<h3 class="tenspchitiet" data-masp="${sanpham.getMaSanPham() }"> ${sanpham.getTenSanPham() }</h3>
					<span class="gia"> Giá : ${sanpham.getGiaTien() } VNĐ</span>
					<table class="table">
						<thead>
							<tr>
								<td>Size</td>
								<td>Color</td>
								<td>Số lượng trong kho</td>
							</tr>
						</thead>
						<tbody>
					<!-- 	getli lay  ve 1 chitiet  cua 1 san pham  -->
						<c:forEach var="chitietsp" items="${sanpham.getLi()}">
							<tr>
							
								<td class="size" data-machitiet="${chitietsp.getMachiTietSanPham() }"  data-Masize="${ chitietsp.getSizeSanPham().getMaSize()} ">${chitietsp.getSizeSanPham().getSize() }</td>
								<td class="mau" data-MaMau="${ chitietsp.getMauSanPham().getMamau() } ">${chitietsp.getMauSanPham().getTenmau() }</td>
								<td class="amount" data-urlAnhSP="  "> ${chitietsp.getSoluong() }</td>
								<td><button type="button" class="btn btn-danger Addtocast">Add to cast</button>
</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>	
			</div>
		</div>
		<div class=" col-md-2">
			<span class="mota">${sanpham.getMota() }</span>
		</div>
		

	</div>


</div>
</div>
</div>
<!--  End chi tiepSP -->
	
	
	
<!--  het ndgiua -->

		
	
			<!-- footer -->
			<div id="footer">
	<div  class="container">
		<div class="row">
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">THÔNG TIN SHOP</span></p>
				<span>Yame là một thương hiệu thời trang đầy uy tín, luôn đảm bảo chất lượng sản phẩm tốt nhất cho khách hàng.</span>
			</div>
			
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">LIÊN HỆ</span></p>
				<span>43 Nguyễn trãi , phường 12, quận 5  TP. Hồ Chí Minh</span>
				<span>checongbinh@gmail.com</span>
				<span>0909489834</span>
			</div>
			
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">GÓP Ý</span></p>
				<form action="" method="post">
					<input name="tenNhanVien" class="material-textinput" style="margin-bottom: 8px" type="text" placeholder="Email"/>
					<textarea name="tuoi" style="margin-bottom: 8px" rows="4" cols="50" placeholder="Nội dung"></textarea>
					<button class="btn btn-primary">ĐỒNG Ý</button>
				</form>
				
			</div>
		</div>
		
	</div>
</div>
			<!-- end footer  -->
		
		
	


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src='<c:url value="/resources/Js/jquery-3.2.1.min.js"  />'></script>		
<script type="text/javascript" src='<c:url value="/resources/Js/ConTen.js"  />'></script>
</body>
</html>