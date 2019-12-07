package kr.ac.sku.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Matching_register {
	private int matchNum;
	private int teamNum;
	private int matchState;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime registTime;
	private int fee;
	private String groundName;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime gameTime;
	private String contents;
	public int getMatchNum() {
		return matchNum;
	}
	public void setMatchNum(int matchNum) {
		this.matchNum = matchNum;
	}
	public int getTeamNum() {
		return teamNum;
	}
	public void setTeamNum(int teamNum) {
		this.teamNum = teamNum;
	}
	public int getMatchState() {
		return matchState;
	}
	public void setMatchState(int matchState) {
		this.matchState = matchState;
	}
	public LocalDateTime getRegistTime() {
		return registTime;
	}
	public void setRegistTime(LocalDateTime registTime) {
		this.registTime = registTime;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public LocalDateTime getGameTime() {
		return gameTime;
	}
	public void setGameTime(LocalDateTime gameTime) {
		this.gameTime = gameTime;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	
	
}
