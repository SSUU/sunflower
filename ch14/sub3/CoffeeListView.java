package ch14.sub3;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.List;
import java.awt.Panel;

public class CoffeeListView {
	
	Frame f = null;
	List list = null;
	Button btn = null;
	MyActionListener myAction = null;
	
	public CoffeeListView(){
		init();
		new OrderView2(myAction);
	}
	
	private void init(){
		myAction = new MyActionListener();
		
		f = new Frame();
		f.setLayout(new BorderLayout());
		
		initComponent();
		
		f.setSize(250, 250);
		f.setVisible(true);
	
	}
	
	private void initComponent(){
		
		Panel topP =  new Panel();
		Panel bodyP =  new Panel();
		Panel bottomP =  new Panel();
		
		topP.setLayout(new GridLayout(1, 3));
		bodyP.setLayout(new BorderLayout());
		bottomP.setLayout(new BorderLayout());
		topP.setBackground(Color.red);
		bodyP.setBackground(Color.blue);
		bottomP.setBackground(Color.green);
		
		initComponent(3, topP);
		
		list = new List();
		bodyP.add(list);
		btn = new Button("주문하기");
		bottomP.add(btn);
		
		f.add(topP, BorderLayout.NORTH);
		f.add(bodyP, BorderLayout.CENTER);
		f.add(bottomP, BorderLayout.SOUTH);
		
		addListener();
	}
	
	private void initComponent(int n, Panel topP){
		String[] s = {"주문", "크기", "가격"};
		
		for(int i=0; i<s.length; i++){
			
			topP.add(new Label(s[i]));
		}
		
	}
	
	private void addListener(){
		btn.addActionListener(myAction);
	}

}
