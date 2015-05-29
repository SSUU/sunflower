package ch14.sub1;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class E4ActionHandler implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		System.out.println("btn id : "+e.getID());
		System.out.println("getActionCommand : "+e.getActionCommand());

	}

}
