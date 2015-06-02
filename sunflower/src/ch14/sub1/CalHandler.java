package ch14.sub1;

import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CalHandler implements ActionListener {

	TextField tf;
	String num1, num2;
	String oper;
	boolean isFirstNo;

	public CalHandler(TextField tf) {
		this.tf = tf;
		init();
	}

	private void init() {
		this.isFirstNo = true;
		this.num1 = "";
		this.num2 = "";
		this.oper = "";
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		String tmp = e.getActionCommand();

		getValue(tmp);
		// case - 1
	}

	private void getValue(String v) {
		String tmp = "";
		
		switch (v) {
		case "0":
		case "1":
		case "2":
		case "3":
		case "4":
		case "5":
		case "6":
		case "7":
		case "8":
		case "9":
			tmp = addNoValue(v);
			break;
		default:
			tmp = getOper(v);
			break;
		}
		
		tf.setText(tmp);
	}

	private String addNoValue(String v) {
		if (isFirstNo) {
			num1 += v;
			return num1;
		}
		num2 += v;
		return tf.getText()+num2;
	}

	private String getOper(String v) {
		switch (v) {
		case "=":
			return printResult();
		case "cls":
			return clear();

		default:
			this.isFirstNo = false;
			return tf.getText()+(this.oper = v);
		}
	}

	private String printResult() {
		String tmp = "";
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		int result = 0;
		
		switch (oper) {
		case "+":
			result = n1 + n2;
			break;
		case "-":
			result = n1 - n2;
			break;
		case "*":
			result = n1 * n2;
			break;
		case "/":
			result = n1 / n2;
			break;

		default:
			break;
		}
		
		return result+"";
	}

	private String clear() {
		init();
		return "";
	}

	// case - 1
	// switch (tmp) {
	// case "0":
	// case "1":
	// case "2":
	// case "3":
	// case "4":
	// case "5":
	// case "6":
	// case "7":
	// case "8":
	// case "9":
	// getNumber(tmp);
	// break;
	// default:
	// getOper(tmp);
	// break;
	// }
	// if (!oper.equals("=") || !oper.equals("cls")) {
	// String tfTmp = tf.getText();
	// tf.setText("");
	// tf.setText(tfTmp + tmp);
	// }else{
	// clear();
	// }

	// private void getNumber(String no) {
	// if (isFirstNo) {
	// num1 += no;
	// } else {
	// num2 += no;
	// }
	// }
	//
	// private void getOper(String op) {
	//
	// switch (op) {
	// case "=":
	// printResult();
	// break;
	// case "cls":
	//
	// break;
	// default:
	// isFirstNo = !isFirstNo;
	// this.oper = op;
	// break;
	// }
	// }
	//
	// private void printResult() {
	//
	// if(num1.equals("") || num2.equals("")){
	// return;
	// }
	//
	// int result = 0;
	// int n1 = Integer.parseInt(num1);
	// int n2 = Integer.parseInt(num2);
	// switch (oper) {
	// case "+":
	// result = n1 + n2;
	// break;
	// case "-":
	// result = n1 - n2;
	// break;
	// case "/":
	// result = n1 / n2;
	// break;
	// case "*":
	// result = n1 * n2;
	// break;
	//
	// default:
	// if (isClearTextField())
	// result = n1;
	// break;
	// }
	//
	// tf.setText(result + "");
	// }
	//
	// private boolean isClearTextField() {
	// if (!isFirstNo) {
	// return false;
	// }
	// return true;
	// }
	//
	// private void clear() {
	// init();
	// this.tf.setText("");
	// }

}
