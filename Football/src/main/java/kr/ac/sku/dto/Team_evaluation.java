package kr.ac.sku.dto;

public class Team_evaluation {
	private int doTeamNum; // 평가를 한팀
	private int doneTeamNum;  // 평가를 당한팀
	private int point;
	public int getDoTeamNum() {
		return doTeamNum;
	}
	public void setDoTeamNum(int doTeamNum) {
		this.doTeamNum = doTeamNum;
	}
	public int getDoneTeamNum() {
		return doneTeamNum;
	}
	public void setDoneTeamNum(int doneTeamNum) {
		this.doneTeamNum = doneTeamNum;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	
}
