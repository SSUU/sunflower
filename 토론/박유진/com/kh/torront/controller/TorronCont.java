package com.kh.torront.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.torront.vo.DatgleVO;
import com.kh.torront.vo.ListVO;

@Controller
public class TorronCont {
	
	double page = 0;
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	@RequestMapping("view/torron/tcreate.lip")
	public void create(HttpServletRequest request, HttpServletResponse response, ListVO LVO ){
		System.out.println("제목: "+LVO.getTsub());
		System.out.println("내용 : "+LVO.getTcon());
		//url
		String url = LVO.getScrap().trim();
		//x자르기
		String[] urlValues = url.split("X");
		for(int i = 0 ; i < urlValues.length ; i++){
			System.out.println("url"+i+":" + urlValues[i].trim());
		}
		String cate = LVO.getCateno();
		if(cate.equals("pol")){
			cate = "1";
		}else if(cate.equals("spo")){
			cate = "2";
		}else if(cate.equals("love")){
			cate = "3";
		}
		//DateFormat df = new DateFormat();
		System.out.println("카테고리넘버 :"+cate);
		String a = LVO.getCateno();
		System.out.println("마감날짜 : "+LVO.getTfinish());
		String t = LVO.getTfinish();
		LVO.setTtimer(t);
		String [] list = t.split("\\s+");
		for(int i = 0 ; i < list.length ; i++){
			System.out.println(list[i]);
		}
		String t1 = list[0];
		String t2 = list[2].substring(2,4);
		String t3 = list[1];
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
	
		 String s = "/";
		 String tf = t2 +s+ t1 +s+ t3;
		LVO.setTfinish(tf);
		LVO.setCateno(cate);
		System.out.println(tf);
		sqlMapClientTemplate.insert("torron.insert",LVO);
		//날짜 ??/??/??
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print("1");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
//		 List<ListVO> list = sqlMapClientTemplate.queryForList("torron.select");
//		 
	}
////////////////////정호
	@RequestMapping("paging.lip")
	public void paging(HttpServletRequest request,HttpServletResponse response,ListVO lvo){
	System.out.println("여기도 왔다.");
	String a = (String)sqlMapClientTemplate.queryForObject("torron.pagecnt");
	double b = Integer.parseInt(a);			
	page = b;
		double pageno = Math.ceil(page/10);
			if(pageno == 0 ){
				pageno = 1;
				}
				PrintWriter out;
				try {
					out = response.getWriter();
					out.print(pageno);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
}/////page
	//////
	@RequestMapping("select.lip")
	public void sresult(HttpServletResponse response,ListVO lvo, HttpServletRequest request){
		System.out.println("왔다.");
		PrintWriter out;
		try {
			 List<ListVO> list = sqlMapClientTemplate.queryForList("torron.select");
			 ArrayList<HashMap<String, String>> al = new ArrayList<HashMap<String,String>>();
			 HashMap<String, String> map = null;
			 ////////////
			 String no = request.getParameter("pno");
				int number = 1;
				if(no == null){
					
				}else{
					number = Integer.parseInt(no);
				}
				int exmax = 9;
				int exmin = 0;
				
				exmax = (number * 10)-1 ;
				exmin = (exmax - 9);
				
				int pa = (int)page;
				
				if(pa < exmax && exmax%pa != 0 ){
					int eee = exmax - pa;
					exmax = exmax - eee-1;
				}
				System.out.println(number);
				System.out.println(pa);
				System.out.println(exmin);
				System.out.println(exmax);
				
			 ///////////
			 for(int i=exmin; i <= exmax; i++){
				 map = new HashMap<String, String>();
				 map.put("tno", list.get(i).getTno());
				 map.put("ting",list.get(i).getTing());
				 map.put("memail", list.get(i).getMemail());
				 map.put("tsub", list.get(i).getTsub());
				 map.put("tdate", list.get(i).getTdate());
				 map.put("mnic", list.get(i).getMnic());
				 
				 al.add(map);
			 }
			 response.setCharacterEncoding("UTF-8");
			 request.setCharacterEncoding("UTF-8");
			 
			ObjectMapper mapper = new ObjectMapper();
			out = response.getWriter();
			out.print(mapper.writeValueAsString(al));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@RequestMapping("room.lip")
	public String room_a(HttpServletRequest request, HttpServletResponse response){
		System.out.println("1");
		return "torron/room.jsp";
	}
	
	String boardno ="";
	@RequestMapping("rcontents.lip")
	public void roomcontents(HttpServletRequest request, ListVO lvo, HttpServletResponse response,DatgleVO dvo){
		HashMap<String, Object> map = null;
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			boardno = request.getParameter("nono");

			lvo.setTno(boardno);
			dvo.setTno(boardno);
			
			List<ListVO> list = sqlMapClientTemplate.queryForList("torron.boardno",lvo);
			List<DatgleVO> datlist = sqlMapClientTemplate.queryForList("torron.datcon",dvo);
			
			System.out.println("list : "+list.get(0).getTsub());
			
			map = new HashMap<String, Object>();
			ArrayList<HashMap<String, String>> al=null;
			al  = new ArrayList<HashMap<String,String>>();
				//map.put("datli", datlist.size()+"");
			
			if(list != null){
				map.put("list", list);
			}
			if(datlist != null){
				map.put("datlist", datlist);
			}
//				if(datlist.size() > 0 ){
//					for(int j=0 ;j < datlist.size();j++){
//						map = new HashMap<String, String>();
//						map.put("ttimer",list.get(0).getTtimer());
//						map.put("tsub", list.get(0).getTsub());
//						map.put("tcon", list.get(0).getTcon());
//						map.put("mnic", list.get(0).getMnic());
//						map.put("datcon", datlist.get(j).getTdatcon());
//						map.put("tdatno", datlist.get(j).getTdatno());
//						al.add(map);
//					}//for
//					
//				}else{
//					al.add(map);
//				}//else
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		ObjectMapper obj = new ObjectMapper();
		try {
			PrintWriter out = response.getWriter();
			out.print(obj.writeValueAsString(map));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//roomcontents
	
	//댓글 insert 부분
	@RequestMapping("datglelist.lip")
	public void datglelist(HttpServletRequest request,ListVO lvo,HttpServletResponse response){
			try {
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				String no =request.getParameter("hidno");
				String txt = URLDecoder.decode(request.getParameter("hidtxt"), "UTF-8");
				lvo.setTno(boardno);
				lvo.setTcon(txt);
				sqlMapClientTemplate.insert("torron.datglelist",lvo);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}//datglelist
	@RequestMapping("datupdate.lip")
	public void datupdate(HttpServletRequest request,HttpServletResponse response,DatgleVO dvo){
		
		PrintWriter out;
		try {
			
			String tdatno = request.getParameter("delcontents");
			System.out.println(tdatno);
			dvo.setTdatno(tdatno);
			int res = sqlMapClientTemplate.delete("torron.datdelete",dvo);
			System.out.println(res);
			out = response.getWriter();
			out.print(res);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//datupdate
	@RequestMapping("tingupdate.lip")
	public void tingupdate(HttpServletRequest request,HttpServletResponse response,ListVO lvo){
		String boardno = request.getParameter("boardno");
		lvo.setTno(boardno);
		String a = (String)sqlMapClientTemplate.queryForObject("torron.sboard",lvo);
		if(a.equals("진행중")){
			int tingres = sqlMapClientTemplate.update("torron.updateting",lvo);
			System.out.println(tingres);
			if(tingres == 1){
				System.out.println("ting 가 마감으로 수정되었습니다.");
			}//if
		}
	}//tingupdate
}