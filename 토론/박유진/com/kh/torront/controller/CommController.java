package com.kh.torront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.torront.vo.CategoryPathVO;

@Controller
public class CommController {
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	@RequestMapping("hello.lip")
	public String hello(){
		System.out.println("hello");
		return "view/result";
	}
	
	@RequestMapping("insertcategory.lip")
	public void insertCategory(CategoryPathVO cpVO){
		System.out.println("entered1111....");
		System.out.println("카테고리명...."+cpVO.getCpname());
		System.out.println("접속경로...."+cpVO.getCppath());
		
		sqlMapClientTemplate.insert("cp.cinsert",cpVO);
		
	}
	
	@RequestMapping("selectcategory.lip")
	public void selectCategory(){
		CategoryPathVO vo = (CategoryPathVO) sqlMapClientTemplate.queryForObject("cp.cselect");
		System.out.println("selected....");
		
		System.out.println(vo.getCpno());
		System.out.println(vo.getCpname());
		System.out.println(vo.getCppath());
		System.out.println(vo.getCpcnt());
		
	}
	
	@RequestMapping("selectcategory2.lip")
	public void selectCategory2(CategoryPathVO cpVO){
		CategoryPathVO vo = (CategoryPathVO) sqlMapClientTemplate.queryForObject("cp.cselect2", cpVO);
		System.out.println("selected2....");
		
		System.out.println(vo.getCpno());
		System.out.println(vo.getCpname());
		System.out.println(vo.getCppath());
		System.out.println(vo.getCpcnt());
		
	}
	
}
