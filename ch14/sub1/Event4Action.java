package ch14.sub1;

import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.Frame;

public class Event4Action {

	private void start() {
		// TODO Auto-generated method stub
		Frame f = new Frame("Event Action");
		FlowLayout fl = new FlowLayout();
		
		f.setLayout(fl);
		f.setSize(250, 250);
		f.setVisible(true);
		
		Button btn1 = new Button("hello");
		Button btn2 = new Button("how are you");
		
		E4ActionHandler action = new E4ActionHandler();
		
		btn1.addActionListener(action);
		btn2.addActionListener(action);
		
		f.add(btn1);
		f.add(btn2);
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Event4Action e4 = new Event4Action();
		e4.start();

	}

}
