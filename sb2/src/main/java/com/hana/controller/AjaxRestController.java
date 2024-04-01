package com.hana.controller;

import com.hana.app.data.dto.Chart2Dto;
import com.hana.app.data.dto.CustDto;
import com.hana.app.data.dto.ShopDto;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
public class AjaxRestController {
    @RequestMapping("/getservertime")
    public Object getservertime() {
        Date date = new Date();
        return date;
    }

    @RequestMapping("/getdata")
    public Object getdata() {
        List<CustDto> list = new ArrayList<>();
        list.add(new CustDto("id01", "pwd01", "james"));
        list.add(new CustDto("id01", "pwd01", "james"));
        list.add(new CustDto("id01", "pwd01", "james"));
        list.add(new CustDto("id01", "pwd01", "james"));
        return list;
    }
    @RequestMapping("/geogetdata")
    public Object geogetdata() {
        List<ShopDto> list = new ArrayList<>();
        list.add(new ShopDto(100, "soodae", "a.png", 37.5547611, 127.0254625));
        list.add(new ShopDto(101, "burger", "b.png", 37.5247611, 127.0654625));
        list.add(new ShopDto(102, "pasta", "c.png", 37.5847611, 127.0954625));

        return list;
    }

    @RequestMapping("/checkid")
    public Object getservertime(@RequestParam("id") String id){
        String result = "1";
        if(id.equals("qqq")){
            result = "0";
        }
        return result;
    }

    @RequestMapping("/getrank")
    public Object getrank() {
        Random random = new Random();
        List<String> rank = new ArrayList<>();
        rank.add("황혜림 취업 성공");
        rank.add("변정흠 역전의 용사 기업은행 합격");
        rank.add("황유진 취업 성공");
        rank.add("임태규");
        rank.add("흰머리 스트레스");
        rank.add("새치 염색");
        rank.add("남자 호칭 정리");
        rank.add("최고의 강사 이진만, 수업 포기 선언");
        rank.add("주말의 왕자 임은상");
        rank.add("안양 출신");
        rank.add("디지털 하나로 성수캠퍼스");
        rank.add("단답 남성 호르몬 수치");
        rank.add("취업 이탈");
        rank.add("봄 유행 헤어스타일");
        rank.add("개화 시기");
        rank.add("이진만");
        rank.add("프로그래머스");
        rank.add("서핑의 매력: 파도와 함께하는 자유로운 여행");
        rank.add("스피드와 스릴의 레이싱 세계: 속도의 신들");
        rank.add("강인한 체력과 우아함의 조화: 무술과 스포츠의 만남");

        Set<Integer> indexes = new HashSet<>();
        while (indexes.size() < 10) {
            indexes.add(random.nextInt(20)); // 0부터 19까지의 난수 생성
        }

        List<String> top10 = new ArrayList<>();
        for (int index : indexes) {
            top10.add(rank.get(index)); // 랜덤한 인덱스의 키워드를 top10 리스트에 추가
        }

        return top10;
    }

    @RequestMapping("/chart2")
    public Object chart2() {
        JSONArray ja = new JSONArray();

        List<Chart2Dto> list = new ArrayList<>();
        // [{"name":"S001","m1":10,....},{},{},{}]
        list.add(new Chart2Dto("S001",10,20,30,20,10,15));
        list.add(new Chart2Dto("S002",13,30,60,10,10,25));
        list.add(new Chart2Dto("S003",11,10,70,80,15,35));
        list.add(new Chart2Dto("S004",18,20,20,90,22,45));

        list.stream().forEach(c -> {
            JSONObject jo = new JSONObject();
            jo.put("name",c.getName());
            jo.put("data",c.getM());
            ja.add(jo);
        });

        return ja;
    }

    @RequestMapping("/chart4")
    public Object chart4(@RequestParam("gender") String gender) {
        JSONArray ja = new JSONArray();

        List<Chart2Dto> list = new ArrayList<>();
        // [{"name":"S001","m1":10,....},{},{},{}]
        list.add(new Chart2Dto("f", 10, 20, 30, 5, 10, 25));
        list.add(new Chart2Dto("m", 13, 30, 17, 10, 3, 27));

        list.stream().filter(c -> c.getName().equals(gender)).forEach(c -> {
            c.getM().stream().forEach(n ->{
                JSONArray ja2 = new JSONArray();
                ja2.add("OTT");
                ja2.add(n);
                ja2.add(ja2);
            });
        });
        JSONObject jo = new JSONObject();
        jo.put("data", ja);
        jo.put("title", gender);
        return ja;
    }
}