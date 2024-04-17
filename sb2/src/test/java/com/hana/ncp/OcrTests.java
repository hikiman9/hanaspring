package com.hana.ncp;

import com.hana.util.OCRUtil;
import com.hana.util.StringEnc;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Map;

@SpringBootTest
@Slf4j
class OcrTests {

    @Value("${app.dir.uploadimgdir}")
    String dir;

    @Test
    void contextLoads() {
        String imgname = "biz.jpg";
        JSONObject jsonObject = (JSONObject) OCRUtil.getResult(dir, imgname);
        log.info(jsonObject.toJSONString());

        Map<String, String> result = OCRUtil.getData(jsonObject);
        result.values().forEach(c -> {log.info(c);});
    }

}
