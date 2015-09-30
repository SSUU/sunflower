package com.kh.torront.controller;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.torront.vo.MemVO;


@Controller
public class PersonCont {
@Autowired
SqlMapClientTemplate sqlMapClientTemplate; 
	
	MemVO memVO;
	
//	@RequestMapping("signup.lip")
//	public void method(MemVO memVO){
//		sqlMapClientTemplate.insert("member.insert",memVO);
//		String a = (String)sqlMapClientTemplate.queryForObject("member.select", memVO);
//		String b = (String)sqlMapClientTemplate.queryForObject("member.select1", memVO);
//		List list = new List();
//		list = (List)sqlMapClientTemplate.queryForList("member.select", memVO);
//		System.out.println(memVO.getMemail());
//		System.out.println(memVO.getMpw());
//		System.out.println(list);
////		String a = (String) sqlMapClientTemplate.queryForObject("member.select", memVO);
////		String b = (String) sqlMapClientTemplate.queryForObject("member.select1", memVO);
//		System.out.println(a+b);
//	}
	@RequestMapping("idchk.lip")
	public void idchk(MemVO vo, HttpServletResponse response){
		String memail = (String)sqlMapClientTemplate.queryForObject("member.idchk", vo);
		System.out.println(memail);
		
		boolean bMemail = false;
		if(memail != null){
			bMemail = true;
		}
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.print(bMemail);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			out.close();
		}
	}
	@RequestMapping("nickchk.lip")
	public void nickchk(MemVO vo, HttpServletResponse response){
		String mnic = (String)sqlMapClientTemplate.queryForObject("member.nickchk", vo);
		System.out.println(mnic);
		
		boolean bmnic = false;
		if(mnic != null){
			bmnic = true;
		}
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.print(bmnic);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			out.close();
		}
	}
	@RequestMapping("namechk.lip")
	public void namechk(MemVO vo, HttpServletResponse response){
		String mname = (String)sqlMapClientTemplate.queryForObject("member.namechk", vo);
		System.out.println(mname);
		
		boolean bmname = false;
		if(mname != null){
			bmname = true;
		}
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.print(bmname);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			out.close();
		}
	}
	@RequestMapping("signup.lip")
	public void signup(MemVO vo, HttpServletResponse response){
		System.out.println("id ok : "+vo.getMemail());
		try{
			sqlMapClientTemplate.insert("member.signup", vo);
		}catch(Exception e){
			System.out.println("signup.lip error");
			e.printStackTrace();
		}
	}
	
//	@RequestMapping("login.lip")
//	public void login(MemVO vo){
//		
//	}
}
