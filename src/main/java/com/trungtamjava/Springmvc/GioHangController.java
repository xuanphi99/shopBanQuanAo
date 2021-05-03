package com.trungtamjava.Springmvc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trungtamjava.Service.ChiTietHoaDonService;
import com.trungtamjava.Service.HoaDonService;
import com.trungtamjava.entity.ChiTietHoaDonId;
import com.trungtamjava.entity.ChiTiethoaDon;
import com.trungtamjava.entity.GioHang;
import com.trungtamjava.entity.HoaDon;

@Controller
@RequestMapping("/giohang")
public class GioHangController {
	
	@Autowired
	HoaDonService hoadonservice;
	
	@Autowired
	ChiTietHoaDonService chiTietHoaDonService;
	
	@GetMapping
	public String Default( ModelMap m,HttpSession httpSession) {
		if (null !=httpSession.getAttribute("giohang") ) {
			List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			
			m.addAttribute("SumCast",listGioHangs.size());
			m.addAttribute("ListGioHang",listGioHangs);
			
		
			
	     }
		return "giohang";
	
     }
	
	// phan dat hang cua ng dung khi an submit
	@PostMapping
	public String ThemHoaDon(
			HttpSession httpSession ,
			@RequestParam	String tenKhachHang,
			@RequestParam	String sdt ,
			@RequestParam	String diachiGiaoHang ,
			@RequestParam	String hinhthucGiaoHang,
			@RequestParam	String GhiChu
		) {
	// kiem tra xem gio hang co null ko
		if (null !=httpSession.getAttribute("giohang") ) {
			List<GioHang> listGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
		
			//một Hóa đơn cần cátc huộc tính trên lấy từ form khi submit
			// các thuộc tính còn lại lấy trong gio Hang
			
			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenKhachHang(tenKhachHang);
			hoaDon.setSdt(sdt);
			hoaDon.setDiachiGiaoHang(diachiGiaoHang);
			hoaDon.setHinhthucGiaoHang(hinhthucGiaoHang);
			hoaDon.setGhiChu(GhiChu);
	// 1 hD cần 1 List ChiTietHD
	 // Mà ChiTietHD cần ChiTietHoaDonId 
	// mà ChiTietHoaDonId cần mã ChiTietSP
	// Lấy mã ChiTietSP trong GioHang sd forEach
			
	// hd cần lưu 1 list chitiet HD	
			
	int idHD = 	hoadonservice.themHD(hoaDon);
			
	if (idHD>0) {

		Set<ChiTiethoaDon> chiTiethoaDons = new HashSet<ChiTiethoaDon>();
		
		for (GioHang i : listGioHangs) {
			ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
			chiTietHoaDonId.setMachiTietSanPham(i.getMachitiet());
			chiTietHoaDonId.setMahoaDon(hoaDon.getMahoaDon());
			// gán ChiTietHoaDonId  vào ChiTiethoaDon
			
			ChiTiethoaDon chiTiethoaDon = new ChiTiethoaDon();
			chiTiethoaDon.setChiTietHoaDonId(chiTietHoaDonId);
			chiTiethoaDon.setGiaTien(i.getGiaSP());
			chiTiethoaDon.setSoLuong(i.getSoLuong());
		//	chiTiethoaDons.add(chiTiethoaDon); vì chiTietHdId có mã sp chi tiet ko kết nối đc với bảng Hd	4
		//	hoaDon.setDanhsachchitiethoadon(chiTiethoaDons);
		// khắc phục
		chiTietHoaDonService.ThemChiTietHoaDon(chiTiethoaDon);
		}
		
			
		
	}
	
	
	else {
		System.out.println("that bai ");	
	}
	

			
		
		
			
		
			
	     }  // kiem tra null session
		
		
	
	
		return "";
	}
	
	
	
}
