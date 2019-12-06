package com.pro.moviepro.MovieType;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Service
public class TypeCount {
    //나의 영화타입 추출
    public  HashMap<String, Integer> bestType(List<String> types){
        HashMap<String, Integer> countTypes = null;
        countTypes = CountOperation(types);

        //set클래스는 중복과 순서를 유지하지 않음(hashmap, treemap)
        Set MymovieTypeSet = countTypes.keySet(); // keyset은 모든 키를 가져온다
        //Iterator는 한번에 하나씩만 가져옴 hasnext로 다음에 읽을 요소가 있으면 true반환
        Iterator<String> typeWordIter = MymovieTypeSet.iterator(); //하나씩 순서대로 가져오기위해

        while (typeWordIter.hasNext()) {
            String key = typeWordIter.next();
            int value = countTypes.get(key);

            if (2 > value) {
                typeWordIter.remove();
            }else{
                System.out.println(key+":"+value); //영화 타입: 개수
            }
        }
        return countTypes;
    }
    //영화타입 카운트
    private HashMap<String, Integer> CountOperation(List<String>TypeList){
        HashMap<String, Integer> Types =  new HashMap<String, Integer>();
        for(String type:TypeList){
            if(Types.containsKey(type)){
                Types.put(type, Types.get(type) + 1);
            }else{
                Types.put(type, 1);
            }
        }
        return Types;
    }
}
