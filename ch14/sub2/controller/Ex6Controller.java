package ch14.sub2.controller;

import java.awt.List;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import ch14.sub2.model.Ex6Obj;
import ch14.sub2.view.Ex6BWView;
import ch14.sub2.view.Ex6ListView;

public class Ex6Controller implements ActionListener {

	ArrayList<Ex6Obj> arrList = null;
	Ex6BWView eBView = null;
	Ex6ListView eLView = null;

	public Ex6Controller() {
		arrList = new ArrayList<Ex6Obj>();
	}

	public void setView(Ex6BWView v) {
		this.eBView = v;
	}

	public void setView(Ex6ListView v) {
		this.eLView = v;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		String eStr = e.getActionCommand();

		if (eStr.equals("save")) {
			addData();
		} else if (eStr.equals("print")) {
			
		} else if (eStr.equals("gomain")) {
			
			System.out.println("gomain 1");
		}
	}

	// eBView 관련 메소드
	private void addData() {
		Ex6Obj obj = new Ex6Obj();
		TextField[] arrTf = eBView.getWTFeild();
		TextArea ta = eBView.getWTArea();

		if (arrTf[0].getText().equals("") || arrTf[1].getText().equals("")
				|| ta.getText().equals("")) {
			return;
		}

		System.out.println("add data");
		for (int i = 0; i < arrTf.length; i++) {
			String tmp = arrTf[i].getText();
			arrTf[i].setText("");
			switch (i) {
			case 0:
				obj.setSubject(tmp);
				break;
			case 1:
				obj.setWriter(tmp);
				break;

			default:
				break;
			}
		}
		obj.setContents(ta.getText());
		ta.setText("");
		obj.setNo(arrList.size() + 1);

		arrList.add(obj);
		
		printData(eLView.getList());
	}

	private void printData() {
		Ex6Obj obj = null;
		for (int i = 0; i < arrList.size(); i++) {
			obj = arrList.get(i);
			System.out.println(obj.getNo() + "\t" + obj.getSubject() + "\t"
					+ obj.getWriter() + "\t" + obj.getContents());
		}
	}

	// eLView 관련 메소드
	private void printData(List list) {
		Ex6Obj obj = null;
		String str = "";
		for (int i = 0; i < arrList.size(); i++) {
			obj = arrList.get(i);
			str += obj.getNo() + "\t" + obj.getSubject() + "\t"
					+ obj.getWriter() + "\t" + obj.getContents();
			list.add(str);
		}
	}

}
