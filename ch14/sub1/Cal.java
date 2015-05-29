package ch14.sub1;

import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Cal {

	private void start() {
		// TODO Auto-generated method stub
		init();

	}

	private void init() {
		Frame f = new Frame("Calculator");
		FlowLayout fl = new FlowLayout();

		Panel pTop = new Panel();
		TextField tf1 = new TextField(15);
		pTop.add(tf1);

		Panel pBody = new Panel();
		GridLayout gl = new GridLayout(4, 4);
		pBody.setLayout(gl);
		Button[] noBtnArr = new Button[10];
		String[] opValueArr = {"/","*","-","cls","=","+"};
		Button[] operBtnArr = new Button[opValueArr.length];

		CalHandler cHandler = new CalHandler(tf1);

		for (int i = 0; i < noBtnArr.length; i++) {
			if (i == noBtnArr.length - 1) {
				noBtnArr[i] = new Button(String.valueOf(0));

			} else {
				noBtnArr[i] = new Button(String.valueOf(i + 1));
			}

			noBtnArr[i].addActionListener(cHandler);
		}

//		operBtnArr[0] = new Button("/");
//		operBtnArr[1] = new Button("*");
//		operBtnArr[2] = new Button("-");
//		operBtnArr[3] = new Button("c/s");
//		operBtnArr[4] = new Button("=");
//		operBtnArr[5] = new Button("+");
		
		for(int i=0; i<operBtnArr.length; i++){
			operBtnArr[i] = new Button(opValueArr[i]);
			operBtnArr[i].addActionListener(cHandler);
		}

		int k = 0;
		int h = 0;
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				if (i < 3) {

					if (j == 3) {
						pBody.add(operBtnArr[k++]);
					} else {
						pBody.add(noBtnArr[h++]);
					}
				} else {
					if (j > 0) {
						pBody.add(operBtnArr[k++]);
					} else {
						pBody.add(noBtnArr[h]);
					}

				}
			}
		}

		f.setLayout(fl);
		f.setSize(250, 250);
		f.setVisible(true);

		f.add(pTop);
		f.add(pBody);
		
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				super.windowClosing(e);
				System.exit(0);
			}
		});
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cal cal = new Cal();
		cal.start();
	}

}
