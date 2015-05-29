package ch14.sub1;

import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.TextField;

public class Event3Key {

	private void start() {
		// TODO Auto-generated method stub
		Frame f = new Frame();
		FlowLayout fl = new FlowLayout();
		TextField tf = new TextField(50);
		
		f.setSize(250, 250);
		f.setLayout(fl);
		f.setVisible(true);
		
//		tf.setFocusable(false);
		f.add(tf);
		
		E3KHandler handler = new E3KHandler();
		tf.addKeyListener(handler);
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Event3Key e = new Event3Key();
		e.start();
	}

}
