package models;

public class ClassRequest {
	public int courseNum;
	public String courseName;
	public int professor;
	
	public ClassRequest(int num, String name, int prof) {
		this.courseNum = num;
		this.courseName = name;
		this.professor = prof;
	}
}
