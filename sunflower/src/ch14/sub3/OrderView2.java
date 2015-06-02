package ch14.sub3;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextField;

public class OrderView2 {
	
	Frame f = null;
	MyActionListener myAction = null;
	
	public OrderView2(){
		myAction = new MyActionListener();
		init();
	}
	
	public OrderView2(MyActionListener myAction){
		this.myAction = myAction;
		init();
	}
	
	private void init(){
		f = new Frame();
		
		f.setLayout(new BorderLayout());
		
		initComponent();
		
		f.setSize(250, 250);
		f.setVisible(true);
	}
	
	private void initComponent(){
		Panel topP = new Panel();
		Panel bodyP = new Panel();
		
		topP.setLayout(new GridLayout(3,2));
		bodyP.setLayout(new GridLayout(1,2));
		topP.setBackground(Color.red);
		bodyP.setBackground(Color.green);
		
		initComponent(0, topP);
		initComponent(1, bodyP);
		
		f.add(topP, BorderLayout.CENTER);
		f.add(bodyP, BorderLayout.SOUTH);
	}
	
	private void initComponent(int n, Panel p){
		
		switch (n) {
		case 0:
			Label l1 = new Label("주문음료");
			Label l2 = new Label("크기");
			Label l3 = new Label("가격");
			Label l4 = new Label("0원");
			TextField tf1 = new TextField();
			TextField tf2 = new TextField();
			
			p.add(l1);
			p.add(tf1);
			p.add(l2);
			p.add(tf2);
			p.add(l3);
			p.add(l4);
			
			break;
		case 1:
			Button oderBtn = new Button("주문");
			Button  cancelBtn = new Button("취소");
			
			p.add(oderBtn);
			p.add(cancelBtn);
			
			oderBtn.addActionListener(myAction);
			cancelBtn.addActionListener(myAction);
			break;

		default:
			break;
		}
	}

}
