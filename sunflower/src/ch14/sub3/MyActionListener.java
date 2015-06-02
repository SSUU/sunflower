package ch14.sub3;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyActionListener implements ActionListener {

	int i = 0;
	
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
		System.out.println("action call : "+arg0.getActionCommand());
		System.out.println("i : "+i);
		i++;

	}

}
