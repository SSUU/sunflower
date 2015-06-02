package ch14.sub3;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.List;
import java.awt.Panel;

import ch14.sub3.view.MainView;

public class CoffeeShop {

	Frame f = new Frame("CoffeeShop");
	Panel topP = new Panel();
	Panel bodyP = new Panel();
	Panel bottomP = new Panel();
	
	public void start(){

		f.setLayout( new BorderLayout());
		
		topP.setBackground(Color.red);
		bodyP.setBackground(Color.blue);
		bottomP.setBackground(Color.green);
		
		Label kindLb = new Label("종류");
		Label sizeLb = new Label("크기");
		Label priceLb = new Label("가격");
		
		topP.setLayout(new GridLayout(1,3));
		topP.add(kindLb);
		topP.add(sizeLb);
		topP.add(priceLb);
		
		List list = new List();
		bodyP.setLayout(new BorderLayout());
		bodyP.add(list);
		
		Button btn = new Button("주문하기");
		bottomP.setLayout(new BorderLayout());
		bottomP.add(btn);
		
		f.add(topP, BorderLayout.NORTH);
		f.add(bodyP, BorderLayout.CENTER);
		f.add(bottomP, BorderLayout.SOUTH);
		
		f.setSize(250, 250);
		f.setVisible(true);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		new MainView();
//		CoffeeShop cs = new CoffeeShop();
//		cs.start();
		
		new CoffeeListView();
//		new OrderView2();
		
	}

}
