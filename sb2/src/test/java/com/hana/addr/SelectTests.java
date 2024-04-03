package com.hana.addr;

import com.hana.app.data.dto.AddrDto;
import com.hana.app.data.dto.ItemDto;
import com.hana.app.service.AddrService;
import com.hana.app.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@SpringBootTest
@Slf4j
class SelectTests {

    @Autowired
    AddrService addrService;
    @Test
    void contextLoads() {
        List<AddrDto> list = new ArrayList<>();
        try {
            list = addrService.get();
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
