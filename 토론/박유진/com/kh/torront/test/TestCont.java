package com.kh.torront.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.torront.vo.SiteMapVO;

@Controller
public class TestCont {
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	@RequestMapping("test.lip")
	public String test(){
		System.out.println("testcont test....");
		return "test";
	}
	
	@RequestMapping("dao.lip")
	public void dao(SiteMapVO vo){
		sqlMapClientTemplate.insert("siteMap.insert", vo);
	}
	
	@RequestMapping("sel.lip")
	public String sel(HttpServletRequest request){
		
		List<SiteMapVO> list = sqlMapClientTemplate.queryForList("siteMap.select");
		
		for(int i=0; i<list.size(); i++){
			SiteMapVO vo = list.get(i);
			System.out.println("no : "+vo.getNo());
			System.out.println("domain : "+vo.getDomain());
			System.out.println("name : "+vo.getName());
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		return "list";
	}
}
