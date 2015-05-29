package ch14.sub1;

import java.awt.Checkbox;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Event5Item {

	private void start() {
		// TODO Auto-generated method stub
		Frame f = new Frame("Event Item");
		FlowLayout fl = new FlowLayout();
		Checkbox cb1 = new Checkbox("cb1");
		Checkbox cb2 = new Checkbox("cb2");
		
		f.setLayout(fl);
		f.setSize(250, 250);
		f.setVisible(true);
		f.add(cb1);
		f.add(cb2);
		
		E5IHandler handler = new E5IHandler();
		
		cb1.addItemListener(handler);
		cb2.addItemListener(handler);
		
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				super.windowClosing(e);
				System.out.println("window Closing");
				System.exit(0);
			}
		});
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Event5Item e5 = new Event5Item();
		e5.start();

	}

}
