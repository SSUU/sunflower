package ch14.sub2.controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Ex6ActionListener implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		String eStr = e.getActionCommand();
		
		if(eStr.equals("save")){
			
		}else if(eStr.equals("print")){
			
		}
		
		System.out.println("action 1 : "+e.getActionCommand());
		
	}

}
