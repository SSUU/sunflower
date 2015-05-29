package ch14.sub2.view;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.LayoutManager;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import ch14.sub2.controller.Ex6Controller;

public class Ex6BWView {
	
	// ȭ�� �����
	private Frame f = null;
	private Panel[] wPan = null;
	private Label[] wLabel = null;
	private TextField[] wTField = null;
	private TextArea wTarea = null;
	private Button[] wBtn = null;
	private Ex6Controller actionListener = null;
	
	// actionListener�� controll�� �� �ֵ��� component�� �����ϱ� ���� getMethod
	public TextField[] getWTFeild(){
		return wTField;
	}
	public TextArea getWTArea(){
		return wTarea;
	}
	
	public Ex6BWView(){
		init();
	}
	
	private void init(){
		f = new Frame("�Խ��� ����");
		wPan = new Panel[6];
		wLabel = new Label[3];
		wBtn = new Button[2]; // 0: ����, 1: ���
		wTField = new TextField[2]; // col : 10
		wTarea = new TextArea(5,20);
		actionListener = new Ex6Controller();
		actionListener.setView(this);
		
		initComponent(); // component �ʱ�ȭ
		makeView(); // ȭ�� �����
		
		new Ex6ListView(actionListener);
	}
	
	// initialization component method - ������ ������Ʈ�� �ʱ�ȭ
	private void initComponent(){
		initComponent(wLabel);
		initComponent(wBtn);
		initComponent(wTField);
		initComponent(wPan);
	}
	private void initComponent(Label[] l){
		String[] str = {"��   ��","�ۼ���","��    ��"};
		
		for(int i=0; i<l.length; i++){
			l[i] = new Label(str[i]);
		}
	}
	private void initComponent(Button[] btn){
		String[] str = {"save","print"};
		
		for(int i=0; i<btn.length; i++){
			btn[i] = new Button(str[i]);
			btn[i].addActionListener(actionListener);
		}
	}
	private void initComponent(TextField[] tf){
		for(int i=0; i<tf.length; i++){
			tf[i] = new TextField(20);
		}
	}
	private void initComponent(Panel[] p){
								
		LayoutManager[] layout = {
				new BorderLayout(),  // basePanel
				new BorderLayout(),  // topPanel 1 - topPanel�� �߰�
				new BorderLayout(),  // topPanel 2 - topPanel�� �߰�
				new GridLayout(2,1), // topPanel
				new BorderLayout(),	 // centerPanel
				new GridLayout(1,2)};// bottomPanel
		
		for(int i=0; i<p.length; i++){
			p[i] = new Panel(layout[i]);
		}
	}
	// setComponent method - �ǳڿ� ������ ������Ʈ�� �߰�
	private void setTPComponent(Panel baseP, Label l, TextField t){
		baseP.add(l, BorderLayout.WEST);
		baseP.add(t, BorderLayout.EAST);
	}
	private void setTPComponent(Panel baseP, Label l, TextArea t){
		baseP.add(l, BorderLayout.WEST);
		baseP.add(t, BorderLayout.EAST);
	}
	private void setTPComponent(Panel baseP, Panel firstP, Panel secondP){
		baseP.add(firstP);
		baseP.add(secondP);
	}
	private void setTPComponent(Panel baseP, Button[] btn){
		for(int i=0; i<btn.length; i++){
			baseP.add(btn[i]);
		}
	}
	// ȭ���� ����� ���� �޼ҵ�
	private void makeView(){
		int id = 0;
		for(int i=0; i<wPan.length; i++){
			switch (i) {
			case 0:
				f.add(wPan[i]);
				wPan[i].add(wPan[3], BorderLayout.NORTH);
				wPan[i].add(wPan[4], BorderLayout.CENTER);
				wPan[i].add(wPan[5], BorderLayout.SOUTH);
				break;
			case 1:
				// addTopComponent (����)
				setTPComponent(wPan[i], wLabel[id], wTField[id]);
				id++;
				break;
			case 2:
				// addTopComponent (�ۼ���)
				setTPComponent(wPan[i], wLabel[id], wTField[id]);
				id++;
				break;
			case 3:
				// addTopComponent (top1, top2)
				setTPComponent(wPan[i], wPan[1], wPan[2]);
				break;
			case 4:
				// addCenterComponent 
				setTPComponent(wPan[i], wLabel[id], wTarea);
				break;
			case 5:
				// addBottomComponent 
				setTPComponent(wPan[i],wBtn);
				break;

			default:
				break;
			}
			
		}
		
		f.setSize(250, 250);
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				super.windowClosing(e);
				System.exit(0);
			}
		});
		f.setVisible(true);
	}
	
}
