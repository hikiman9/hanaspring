package com.hana;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j // 롬복에서 제공해주는 로그 찍는 법
class HelloApplicationTests {

    @Test
    void contextLoads() {
        log.info("Log Test");
    }

}
