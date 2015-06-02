package ch14.sub1;

import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class E4ActionHandler2 implements ActionListener {

	TextField tf1, tf2;
	Event4Action2 ev;
	public E4ActionHandler2(){
		
	}
	public E4ActionHandler2(Event4Action2 e){
		this.ev = e;
		
	}
	public E4ActionHandler2(TextField tf1, TextField tf2){
		this.tf1 = tf1;
		this.tf2 = tf2;
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getActionCommand().equals("btn1")){
			System.out.println("btn1 action");
			System.out.println("text 1 : "+tf1.getText());
			tf2.setText(tf1.getText());
			tf1.setText("");
		}else if(e.getActionCommand().equals("btn2")){
			System.out.println("btn2 action");
			System.out.println("text 2 : "+tf2.getText());
			tf1.setText(tf2.getText());
			tf2.setText("");
		}

	}

}
