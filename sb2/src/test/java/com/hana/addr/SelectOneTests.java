package com.hana.addr;

import com.hana.app.service.AddrService;
import com.hana.app.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.sql.SQLException;

@SpringBootTest
@Slf4j
class SelectOneTests {

    @Autowired
    AddrService addrService;
    @Test
    void contextLoads() {
        try {
            addrService.get(3);
            log.info("------------------GOOOOD--------------------");
        } catch (Exception e) {
            if (e instanceof SQLException) {
                log.info("-----------------------------System Trouble EX0001------------------------");
            } else if(e instanceof DuplicateKeyException){
                log.info("-----------------------------ID Duplicated EX0002------------------------");
            } else {
                log.info("-----------------------Sorry EX0003-------------------------");
            }
        }
    }

}
