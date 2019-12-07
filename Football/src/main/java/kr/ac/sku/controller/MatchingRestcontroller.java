package kr.ac.sku.controller;

import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.sku.dto.Matchmake;
import kr.ac.sku.service.Match_makeImpl;
import kr.ac.sku.service.Matching_make;



@RestController
public class MatchingRestcontroller {
	Matching_make matching_make;
	
	@RequestMapping("/matchingRegisterDB")
	@PostMapping
	public int matchingRegisterDB(@RequestBody String data) {
		Matchmake matchmake;
		Match_makeImpl match_makeimpl = new Match_makeImpl();
		List<String> matchdatalist = new ArrayList();
		
		matchdatalist = matchmakeRegister(data);
		
		matchmake = Matchdata(matchdatalist);
		
		match_makeimpl.insertMatching(matchmake);
		
		test(matchmake);
		
		return 0;
	}
	
	public List<String> matchmakeRegister(String data) {
		Matchmake matchmake;
		
		int count=0;
		List<String> matchlist = new ArrayList();
		StringTokenizer matchData = new StringTokenizer(data,",",true);
		
		while(matchData.hasMoreTokens()) {
			String matchdb = matchData.nextToken();
			if(matchdb.equals(",")) {
				continue;
			}else {
				count++;
				if(count==6) {
					matchdb=SetmatchStatus(matchdb);
					matchlist.add(matchdb);
				}else if(count==7) {
					matchlist.set(0, matchlist.get(0)+","+matchdb);
				}else if(count==4){
					matchlist.set(1, matchlist.get(1)+","+matchdb);
				}else {
					matchlist.add(matchdb);
				}
				//System.out.println("count:"+count);
				//System.out.println(matchdb);
			}
		}
		
		return matchlist;
	}
	
	public String SetmatchStatus(String str) {
		String status;
		if(str.equals("홈")) {
			status="1";
		}else if(str.equals("원정")) {
			status="2";
		}else
			status="0";
		
		return status;
	}
	public void test(Matchmake matchmake) {
		System.out.println("제목,내용:"+matchmake.getContents());
		System.out.println("운동장:"+matchmake.getGroundName());
		System.out.println("가격:"+matchmake.getFee());
		System.out.println("경기시간:"+matchmake.getGameTime());
		System.out.println("등록시간:"+matchmake.getRegistTime());
	}
	
	public Matchmake Matchdata(List<String> matchlist) {
		Matchmake matchmake = new Matchmake();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
		LocalDateTime date = LocalDateTime.parse(matchlist.get(2), formatter);
		LocalDateTime registTime = datetime();
		
		matchmake.setMatchNum(1);//매칭넘버
		matchmake.setTeamNum(1); //팀넘버
		matchmake.setContents(matchlist.get(0));
		matchmake.setRegistTime(registTime);
		matchmake.setFee(Integer.parseInt(matchlist.get(3)));
		matchmake.setGameTime(date);
		matchmake.setMatchState(Integer.parseInt(matchlist.get(4)));
		matchmake.setGroundName(matchlist.get(1));
		
		return matchmake;
	}
	
	public LocalDateTime datetime() {
		LocalDateTime current=LocalDateTime.ofInstant(new Date().toInstant(), ZoneId.systemDefault());

		return current;
	}
}

