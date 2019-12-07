package com.pro.moviepro.MovieType;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Service
public class BestType {
    public String BestType(HashMap<String, Integer> types){  //가장 많이 나오는 type추출
        String myBestType=null;
        int tmp =0;
        //set클래스는 중복과 순서를 유지하지 않음(hashmap, treemap)
        Set MymovieTypeSet = types.keySet(); // keyset은 모든 키를 가져온다
        //Iterator는 한번에 하나씩만 가져옴 hasnext로 다음에 읽을 요소가 있으면 true반환
        Iterator<String> typeWordIter = MymovieTypeSet.iterator(); //하나씩 순서대로 가져오기위해

        while (typeWordIter.hasNext()) {
            String key = typeWordIter.next();
            int value = types.get(key);
            //System.out.println(key+":"+value);
            if (tmp < value) {
                tmp = value;
                myBestType = key;
            }
        }
        return myBestType;
    }
}
