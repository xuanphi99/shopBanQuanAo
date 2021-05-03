package com.trungtamjava.Springmvc;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trungtamjava.Service.DanhMucSanPhamService;
import com.trungtamjava.Service.SanPhamService;
import com.trungtamjava.entity.DanhMucSanPham;
import com.trungtamjava.entity.SanPham;

@Controller
@RequestMapping("/danhmuc/")
public class DanhMucController {
	
	@Autowired
	SanPhamService sanPhamService;
	@Autowired
	DanhMucSanPhamService danhmucSPService;

	
	@Autowired
	private ApiControllerAjax apiC;
	
	@GetMapping("{id}/{tendanhmuc}")
	@Transactional
	public String Default(@PathVariable int id, ModelMap m,HttpSession httpSession,@PathVariable String tendanhmuc ) {
		List<DanhMucSanPham>  list = danhmucSPService.listDanhMuc();
	List<SanPham> listDMByID = danhmucSPService.getListCatetogryById(id);
		m.addAttribute("tendanhmuc",tendanhmuc);
	
		
		m.addAttribute("danhmucsanpham",list);
		m.addAttribute("danhmucsanphamOfDM",listDMByID);
		
//		List<SanPham> listDMByIDAjax = apiC.ListSPAjax();
//		m.addAttribute("listDMByIDAjax",listDMByIDAjax);
//		if (listDMByIDAjax.size()!=0) {
//			m.addAttribute("tendmClick",listDMByIDAjax.get(0).getDanhMucSanPham().getTenDanhMuc());
//		}
//		
//		else {
//			m.addAttribute("tendmClick",apiC.getTenDMAjax());
//		}
		
		
		return "danhmuc";
	}
	
}
