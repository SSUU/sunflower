package ch14.sub1;

import java.awt.Frame;

public class Event2Window {

	private void start() {
		// TODO Auto-generated method stub
		Frame f = new Frame("Event Window");
		f.setSize(250,250);
		
		E2WHandler handler = new E2WHandler();
		f.addWindowListener(handler);
		f.setVisible(true);

	}
	
	public static void main(String[] args) {
		Event2Window e = new Event2Window();
		e.start();
	}
}
