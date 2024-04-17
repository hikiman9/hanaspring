package com.hana.ncp;

import com.hana.util.NcpUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Slf4j
@SpringBootTest
class SummaryTests {
    @Value("${app.key.ncp-id}")
    String ncpId;
    @Value("${app.key.ncp-secret}")
    String ncpSecret;

    @Test
    void contextLoads() {
        String text = "16일 과학기술정보통신부는 전날 오후 5시 마감한 본부장, 단장, 프로그램장 등을 포함하는 우주항공청 간부급 채용 수요조사에 212명이 접수해 경쟁률이 11.7대1이라고 밝혔다.";
        JSONObject obj = (JSONObject) NcpUtil.getSummary(ncpId, ncpSecret, text);
        log.info(obj.toJSONString());
    }
}