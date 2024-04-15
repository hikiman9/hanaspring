package com.hana.weather;

import com.hana.util.WeatherUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@SpringBootTest
@Slf4j
class Test {

    @org.junit.jupiter.api.Test
    void contextLoads() throws IOException, ParseException {
        String key = "mGAGMDcDpL%2BQulFKZpRjAi4X%2FWUoEAE1PSVYWEFTpJznwjLlt2NJ10OS%2BU2G2qov4o%2FkaLTZoKEmokQ7gGW3rw%3D%3D";
        String loc = "109";
        JSONObject jsonObject = (JSONObject) WeatherUtil.getWeather(loc, key);

        log.info("------------------LOG--------------------");
        log.info("-----------------" + jsonObject.toString() + "-------------");
    }

}
