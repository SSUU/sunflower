package ch14.sub2.model;

public class Ex6Obj {

	private int no; // �۹�ȣ
	private String subject;
	private String writer;
	private String contents;

	public Ex6Obj() {

	}

	public Ex6Obj(int no, String subject, String writer, String contents) {
		this.no = no;
		this.subject = subject;
		this.writer = writer;
		this.contents = contents;
	}

	public void printEx6Obj() {
		System.out.println("�۹�ȣ : " + no + " ������ : " + subject + " �ۼ��� : "
				+ writer + " ���� : " + contents);
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

}
