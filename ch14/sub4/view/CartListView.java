package ch14.sub4.view;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Checkbox;
import java.awt.Color;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.LayoutManager;
import java.awt.List;
import java.awt.Panel;

/*
 * 해보기
 * 1. 객체 정의
 * - view에 대하여 필요한 상태와 행위를 객체(class)로 정의 할 수 있어야 함
 * - 내가 만든 객체로 인스턴스 만들어보기 - new className();
 * - 생성된 인스턴스를 변수에 담아 인스턴스가 가지고 있는 변수와 메소드 사용해보기
 * - 인스턴스의 변수를 생성자를 통하여 초기화 해보기
 * 2. final 사용
 * - final 키워드를 사용할 줄 알아야 함
 * - final 키워드가 의미하는 바가 무엇인가?
 * 3. 배열 사용
 * - 자바에서의 배열 사용법 알아야 함 
 * - 배열의 생성, 인덱스 제어
 * - 인스턴스 배열의 생성, 저장, 인데스 제어
 * 4. Method Overloading(메소드 오버로딩)
 * - Overloading 은 무엇인가?
 * - Method Overloading 을 만드는 방법, 사용 방법, 규칙
 * - 생성자도 Overloading 해보기
 * 
 */

// CartListView 객체 정의
public class CartListView {
	// 각 Panel에게 final로 상수 선언
	// 자주 사용하는 비교대상은 상수로 선언하여 사용하면 프로그램의 가독성과 유연성, 유지보수에 좋음
	private final int P_TOP = 1;
	private final int P_BODY = P_TOP+1;
	private final int P_BOTTOM = P_BODY+1;
	// 화면을 구성하는 도화지, Frame 선언
	private Frame f = null;

	// 생성자를 통하여 초기화 작업	
	public CartListView() {
		init();
	}
	
	// Frame에 대한 초기화를 수행하는 메소드
	private void init() {
		
		f = new Frame("쇼핑 카트 리스트");

		initPanel();

		f.setSize(250, 250);
		f.setVisible(true);

	}

	// 각 Panel에 대한 초기화를 수행하는 메소드
	// basePanel, topPanel, bodyPanel, bottomPanel 4개의 Panel을 배열을 사용하여 초기화
	private void initPanel() {
		// 각 Panel 적용할 Layout을 배열에 담아 사용
		LayoutManager[] layout = { 
				new BorderLayout(),	// basePanel
				new BorderLayout(),	// topPanel
				new BorderLayout(),	// bodyPanel
				new GridLayout(1, 2)// bottomPanel 
				};
		// 각 Panel을 배열에 담아 사용
		// 필요한 Panel은 layout의 개수와 같으므로 layout 배열의 length 만큼 생성
		Panel[] panel = new Panel[layout.length];

		// 각 Panel을 초기화 하는 반복문(for)
		for (int i = 0; i < panel.length; i++) {
			// 배열에 Panel 인스턴스를 생성하여 담음
			panel[i] = new Panel();
			// 각 Panel에 사용할 layout을 설정
			panel[i].setLayout(layout[i]);

			// 첫번째 Panel은 Frame에 추가
			if (i == 0) {
				f.add(panel[i]);
			}
			// 나머지 Panel은 basePanel에 추가
			// panel[0] : basePanel
			// panel[1] : topPanel
			// panel[2] : bodyPanel
			// panel[3] : bottomPanel
			else {
				// BorderLayout의 위치를 담기 위한 변수
				String position = "";
				Color c = null;
				switch (i) {
				case P_TOP: // 현재 Panel이 TOP Panel일 경우 BorderLayout의 위치를 NORTH로 설정
					// 배경색은 RED
					position = BorderLayout.NORTH;
					c = Color.red;
					break;
				case P_BODY:// 현재 Panel이 BODY Panel일 경우 BorderLayout의 위치를 CENTER로 설정
					// 배경색은 CYAN
					position = BorderLayout.CENTER;
					c = Color.cyan;
					break;
				case P_BOTTOM:// 현재 Panel이 BOTTOM Panel일 경우 BorderLayout의 위치를 SOUTH로 설정
					// 배경색은 GREEN
					position = BorderLayout.SOUTH;
					c = Color.green;
					break;

				default:
					break;
				}
				// 각 Panel에 배경색을 설정
				panel[i].setBackground(c);
				// basePanel에 각 Panel을 position 위치로 추가
				panel[0].add(panel[i], position);
				// 각 Panel에 필요한 Component을 추가하는 메소드
				initComponent(panel[i], i);
				
			}

		}

	}

	// 각 Panel에 대하여 Component를 추가하는 메소드
	// initComponent() 메소드는 현재의 Panel의 위치에 따라 switch문으로 Component를 구분하여 추가하는 수행하는 메소드
	private void initComponent(Panel p, int i) {
		// 각 Panel (top, body, bottom)에 맞는 Component 추가를 위한 분기문 
		switch (i) {
		case P_TOP: // TOP Panel의 Component 추가 수행 메소드
			addTopComponent(p);
			break;
		case P_BODY: // BODY Panel의 Component 추가 수행 메소드
			addBodyComponent(p);
			break;
		case P_BOTTOM: // BOTTOM Panel의 Component 추가 수행 메소드
			addBottomComponent(p);
			break;

		default:
			break;
		}

	}

	// TOP Panel에 필요한 Component만을 추가하는 메소드 
	private void addTopComponent(Panel p) {
		// 2차 배열의 사용법 익히기 
		String[][] name = { { "<", ">" }, { "쇼핑 목록" } };
		String[] btnPosi = {BorderLayout.WEST, BorderLayout.EAST};
		String[] lbPosi = {BorderLayout.CENTER};
		Button[] btn = new Button[name[0].length];
		Label[] lb = new Label[name[1].length];

		// 배열의 크기만큼 Component를 추가
		// 반복적으로 Component를 추가하기 때문에 반복문 for을 사용
		for (int i = 0; i < name.length; i++) {
			for (int j = 0; j < name[i].length; j++) {
				if (i == 0) {
					btn[i] = new Button(name[i][j]);
					addComponent(p, btn[i], btnPosi[j]);
				}else{
					lb[j] = new Label(name[i][j]);
					addComponent(p, lb[j], lbPosi[j]);
				}
			}
		}

	}
	
	// BODY Panel에 필요한 Component만을 추가하는 메소드
	private void addBodyComponent(Panel p){
		
		// 리스트 Panel을 bodyPanel에 추가
		addComponent(p, resetListValue(p));
		
	}
	
	// BOTTOM Panel에 필요한 Component만을 추가하는 메소드
	private void addBottomComponent(Panel p){
		
		String[] name = {"주문","취소"};
		Button[] btn = new Button[name.length];
		
		for(int i=0; i<btn.length; i++){
			btn[i] = new Button(name[i]);
			addComponent(p, btn[i]);
		}
		
		
		
	}

	// Method Overloading - addComponent
	// Panel에 Component를 추가하는 메소드
	// Button 이라는 Component를 추가하는 메소드
	// Layout이 BorderLayout이기 때문에 추가할 Component의 위치 값이 필요함(posi)
	private void addComponent(Panel p, Button btn, String posi) {

		p.add(btn, posi);

	}
	// Panel에 Component를 추가하는 메소드
	// Button 이라는 Component를 추가하는 메소드
	// Layout이 GridLayout이기 때문에 추가할 Component의 위치 값이 필요 없음
	private void addComponent(Panel p, Button btn) {
		
		p.add(btn);
		
	}
	// Layout이 BorderLayout이기 때문에 추가할 Component의 위치 값이 필요함(posi)
	private void addComponent(Panel p, Label lb, String posi) {
		
		p.add(lb, posi);
		
	}
	// List 이라는 Component를 추가하는 메소드
	// Layout이 BorderLayout이기 때문에 추가할 Component의 위치 값이 필요함(posi)
	private void addComponent(Panel p, List list, String posi) {
		
		p.add(list, posi);
		
	}
	// List 이라는 Component를 추가하는 메소드 - 2
	// AWT 에서 List 객체를 커스텀하여 여러 Component(Checkbox, Label, Image 등)를 붙여서 표현하기가 어려움
	// 그래서 List 처럼 보여주기 위해서 다르게 작성함
	private void addComponent(Panel baseP, Panel addP){
		baseP.add(addP, BorderLayout.CENTER);
	}
	// end of Method Overloading - addComponent
	
	// List의 값을 갱신하는 메소드
	// List의 목록은 매번 값이 변경할 때마다 목록을 갱신을 수행 하는 메소드를 만듦
	private Panel resetListValue(Panel p){
		// 상품명, 상품가격을 배열로 저장하여 사용
		String[] sValue = {"자동차","컴퓨터","자전거","핸드폰"};
		String[] pValue = {"10,000","20,000","30,000","40,000"};
		// Panel에는 Component만 추가할 수 있으므로, 상품명과 상품가격을 Component인 Label의 인스턴스로 생성하여 추가하기 위한 배열 
		Label[] lbValue = new Label[sValue.length];
		Label[] lbPriceValue = new Label[pValue.length];
		// Checkbox의 Component들의 배열
		Checkbox[] chBox = new Checkbox[sValue.length];
		// 체크박스, 상품명, 상품가격을 하나의 Panel에 추가하기 위한 배열
		// 위와 같이 3개의 Component들을 하나로 묶어 리스트처럼 보여주기 위해서 사용
		Panel[] pList = new Panel[sValue.length];
		// Panel 배열들을 묶어서 bodyPanel에 추가하기 위한 Panel
		Panel basePanel = new Panel(new GridLayout(sValue.length, 1));
		
		// 상품만큼 리스트 목록을 만드는 반복문
		for(int i=0; i<pList.length; i++){
			// 배열은 저장할 수 있는 빈 방일뿐 이므로, 실제 인스턴스를 생성하여 배열 i번째 방이 참조하도록 해야 함
			lbValue[i] = new Label(sValue[i]);
			lbPriceValue[i] = new Label(pValue[i]);
			chBox[i] = new Checkbox();
			pList[i] = new Panel(new BorderLayout());
			
			// 각각의 Component(체크박스, 상품명, 상품가격)들을 하나의 panel에 추가
			// 하나의 열처럼 보여주기 위해서 수행
			pList[i].add(chBox[i], BorderLayout.WEST);
			pList[i].add(lbValue[i], BorderLayout.CENTER);
			pList[i].add(lbPriceValue[i], BorderLayout.EAST);
			
			// 각각의 배열 panel을 basePanel에 추가하면 리스트처럼 보여지게 할 수 있음
			basePanel.add(pList[i]);
			
		}
		
		// 리스트처럼 만든 basePanel의 인스턴스를 반환해줌
		return basePanel;
		
	}

}
