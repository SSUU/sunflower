package com.kh.torront.controller;


import java.text.DateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.torront.vo.ListVO;
import com.kh.torront.vo.Naljja;


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
	public void create(HttpServletRequest request,ListVO LVO){
		System.out.println("���� : "+LVO.getTsub());
		//����
		System.out.println("���� : "+LVO.getTcon());
		//����
		System.out.println("ī�װ� : "+LVO.getCateno());
		String cate = LVO.getCateno();
		if(cate.equals("pol")){
			cate = "��ġ";
		}else if(cate.equals("spo")){
			cate = "������";
		}else if(cate.equals("love")){
			cate = "����";
		}
		//DateFormat df = new DateFormat();
		System.out.println(cate);
		//ī�װ�
		String a = LVO.getCateno();
		System.out.println("�����ð� : "+LVO.getTfinish());
		//�����ð�
	}
}
