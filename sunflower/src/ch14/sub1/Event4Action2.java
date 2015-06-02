package ch14.sub1;

import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JButton;

public class Event4Action2 extends E4ActionHandler2{
	
	public Event4Action2(){
		
	}
	public Event4Action2(Event4Action2 e){
		super(e);
	}
	
	TextField tf2;
	TextField tf1;
	private void start() {
		// TODO Auto-generated method stub
		Frame f = new Frame("Event Action2");
		GridLayout gl = new GridLayout(2,1);
		
		Panel p1 = new Panel();
//		TextField tf1 = new TextField(5);
		tf1 = new TextField(5);
		Button btn1 = new Button("btn1");
		
		Panel p2 = new Panel();
//		TextField tf2 = new TextField(5);
		tf2 = new TextField(5);
		Button btn2 = new Button("btn2");
		
		f.setLayout(gl);
		f.setSize(250, 250);
		f.setVisible(true);
		
//		E4ActionHandler2 handle = new E4ActionHandler2(tf1, tf2);
		Event4Action2 handle = new Event4Action2(this);
		p1.add(tf1);
		p1.add(btn1);
		btn1.addActionListener(handle);
		p2.add(tf2);
		p2.add(btn2);
		btn2.addActionListener(handle);
		
		f.add(p1);
		f.add(p2);
		f.addWindowListener(new WindowAdapter() {
			
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				System.out.println("invoked window closing");
				System.exit(0);
			}// end of method - override windowClosing
		}// end of class - anonymous inner class
		);
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getActionCommand().equals("btn1")){
			System.out.println("action btn1");
			System.out.println("text 1 : "+tf1.getText());
			tf2.setText(tf1.getText());
			tf1.setText("");
		}else if(e.getActionCommand().equals("btn2")){
			System.out.println("action btn2");
			System.out.println("text 2 : "+tf2.getText());
			tf1.setText(tf2.getText());
			tf2.setText("");
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Event4Action2 e4 = new Event4Action2();
		e4.start();

	}

}
