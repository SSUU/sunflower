package ch14.sub2.view;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.LayoutManager;
import java.awt.List;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import ch14.sub2.controller.Ex6Controller;

public class Ex6ListView {

	// 화면 만들기
	private Frame f = null;
	private Panel[] lPan = null;
	private Label[] lLabel = null;
	private List list = null;
	private Button[] lBtn = null;
	private Ex6Controller actionListener = null;

	public Ex6ListView() {
		init();
	}

	public Ex6ListView(Ex6Controller e6Contr) {
		this.actionListener = e6Contr;
		this.actionListener.setView(this);
		init();
	}

	public List getList() {
		return list;
	}

	private void init() {
		f = new Frame("�Խ��� ����");
		lPan = new Panel[2];
		lLabel = new Label[3];
		lBtn = new Button[1]; // 0: 저장, 1: 출력

		initComponent(); // component 초기화
		makeView(); // 화면 만들기
	}

	// initialization component method
	private void initComponent() {
		initComponent(lLabel);
		initComponent(lBtn);
		initComponent(lPan);
		initComponent(list);
	}

	private void initComponent(Label[] l) {
		String[] str = { "번   호", "제   목", "작성자" };

		for (int i = 0; i < l.length; i++) {
			l[i] = new Label(str[i]);
		}
	}

	private void initComponent(Button[] btn) {
		String[] str = { "gomain" };

		for (int i = 0; i < btn.length; i++) {
			btn[i] = new Button(str[i]);
			btn[i].addActionListener(actionListener);
		}
	}

	private void initComponent(Panel[] p) {

		LayoutManager[] layout = { new BorderLayout(), // basePanel
				new GridLayout(1, 3) // topPanel - 번호, 제목, 작성자
		};

		for (int i = 0; i < p.length; i++) {
			p[i] = new Panel(layout[i]);
		}
	}

	private void initComponent(List l) {
		list = new List();
	}

	private void setTPComponent(Panel p, List l) {
		p.add(l);
	}

	private void setTPComponent(Panel p, Label[] lb) {
		for (int i = 0; i < lb.length; i++) {
			p.add(lb[i]);
		}
	}

	private void makeView() {

		for (int i = 0; i < lPan.length; i++) {
			switch (i) {
			case 0:

				f.add(lBtn[i], BorderLayout.SOUTH);
				f.add(lPan[i], BorderLayout.CENTER);
				setTPComponent(lPan[i], list);
				break;
			case 1:
				// addTopComponent (list)
				f.add(lPan[i], BorderLayout.NORTH);
				setTPComponent(lPan[i], lLabel);
				break;
			}
		}

		f.setSize(250, 250);
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				super.windowClosing(e);
				System.exit(0);
			}
		});
		f.setVisible(true);
	}

}
