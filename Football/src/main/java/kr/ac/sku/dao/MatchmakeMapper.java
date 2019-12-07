package kr.ac.sku.dao;

import java.util.List;

import kr.ac.sku.dto.Matchmake;


public interface MatchmakeMapper {
	public Matchmake getTeamNum(int teamNum);
	public List<Matchmake> getPlayers();
	public int addMatchmake(Matchmake matchmake);
	public void updatePlayer(int teamNum);
	public void deletePlayer(int teamNum);
}
