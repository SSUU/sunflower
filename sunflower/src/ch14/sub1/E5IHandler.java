package ch14.sub1;

import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

public class E5IHandler implements ItemListener {

	@Override
	public void itemStateChanged(ItemEvent e) {
		// TODO Auto-generated method stub
		System.out.println("invoked method ItemStateChanged");
		System.out.println("paramString : "+e.paramString());
		System.out.println("getItem : "+e.getItem());

	}

}
