package com.kh.torront.controller;


import java.text.DateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.torront.vo.ListVO;
import com.kh.torront.vo.Naljja;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import sun.org.mozilla.javascript.internal.regexp.SubString;



@Controller
public class TorronCont {
	
//	@Autowired
//	SqlMapClientTemplate sqlMapClientTemplate;
	
	@RequestMapping("view/nalja.lip")
	public void nalja(Naljja nal,HttpServletRequest request){
		//System.out.println(nal.getNalja());
		String nalja = request.getParameter("nalja");
		String rdo = request.getParameter("tfinish");
		System.out.println(nalja);
		System.out.println(rdo);
		System.out.println(nal.getNalja());
		System.out.println(nal.getTfinish());
//		sqlMapClientTemplate.insert("naljja.insert",nal);
	}//
	
	@RequestMapping("view/torron/tcreate.lip")
	public void create(HttpServletRequest request, HttpServletResponse response, ListVO LVO ){
	
		System.out.println("제목: "+LVO.getTsub());
		//����
		System.out.println("내용 : "+LVO.getTcon());
		//����
		System.out.println("카테고리 : "+LVO.getCateno());
		//url
		
		System.out.println("url!! : "+ LVO.getScrap().trim());
		String url = LVO.getScrap().trim();
		
		String[] urlValues = url.split("X");
		for(int i = 0 ; i < urlValues.length ; i++){
			System.out.println("url"+i+":" + urlValues[i].trim() );
		}
		
		
		String cate = LVO.getCateno();
		System.out.println("카테고리 : "+LVO.getCateno());
		
		if(cate.equals("pol")){
			cate = "1";
		}else if(cate.equals("spo")){
			cate = "2";
		}else if(cate.equals("love")){
			cate = "3";
		}
		//DateFormat df = new DateFormat();
		System.out.println("cate :"+cate);
		//ī�װ?
		String a = LVO.getCateno();
		System.out.println("카테고리 넘버 : "+LVO.getTfinish());
		String t = LVO.getTfinish();
		String t1 = t.substring(0,3);
		String t2 = t.substring(4,5);
		String t3 = t.substring(8,10);
	
		System.out.println(t3 + "-" + t1 + "-" + t2);
		//마감시간
		 switch (t1) {
		    case "jan" : t1 = "1"; break;
		    case "feb" : t1 = "2"; break;
		    case "mar" : t1 = "3"; break;
		    case "apr" : t1 = "4"; break;
		    case "may" : t1 = "5"; break;
		    case "jun" : t1 = "6"; break;
		    case "jul" : t1 = "7"; break;
		    case "aug" : t1 = "8"; break;
		    case "sep" : t1 = "9"; break;
		    case "oct" : t1 = "10"; break;
		    case "nov" : t1 = "11"; break;
		    case "dec" : t1 = "12"; break;
		    
		   
		  }
	
		 System.out.println(t3 + "-" + t1 + "-" + t2);
		 String s = "/";
		 String tf = t3 +s+ t1 +s+ t2; 
	}
}