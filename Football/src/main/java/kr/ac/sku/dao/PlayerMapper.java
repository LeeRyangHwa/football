package kr.ac.sku.dao;

import java.util.List;

import kr.ac.sku.dto.Player;

public interface PlayerMapper {
	public Player getPlayer(int id);
	public List<Player> getPlayers();
	public int addPlayer(Player player);
	public void updatePlayer(int id);
	public void deletePlayer(int id);
	
}