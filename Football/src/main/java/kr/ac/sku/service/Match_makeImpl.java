package kr.ac.sku.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.sku.dao.MatchmakeMapper;
import kr.ac.sku.dto.Matchmake;

@Service
public class Match_makeImpl implements Matching_make{
	@Autowired
	MatchmakeMapper matchmakemapper;
	
	public int insertMatching(Matchmake match) {
		// TODO Auto-generated method stub
		System.out.println("insert");
		return matchmakemapper.addMatchmake(match);
	}
	
}
