package ch14.sub1;

import java.awt.Color;
import java.awt.Frame;
import java.awt.event.MouseEvent;

public class Event1Mouse extends E1MHandler{

	private Frame f;
	
	private void start() {
		// TODO Auto-generated method stub
		f = new Frame("Event Mouse");
		f.setSize(250,250);
		f.setVisible(true);
		
		E1MHandler handler = new E1MHandler();
		E1M2Handler handler2 = new E1M2Handler();
//		handler.f = f;
		f.addMouseListener(this);
		f.addMouseWheelListener(handler2);
		f.addMouseMotionListener(handler2);
//		f.addMouseListener(this);

	}
	
	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		System.out.println("Event1Mouse Clicked");
		f.setBackground(Color.yellow);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Event1Mouse m = new Event1Mouse();
		m.start();
	}

}
