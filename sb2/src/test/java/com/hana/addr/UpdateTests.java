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

@SpringBootTest
@Slf4j
class UpdateTests {

    @Autowired
    AddrService addrService;
    @Test
    void contextLoads() {
        AddrDto addrDto = AddrDto.builder().addrId(3).addrName("your home").addrDetail("anyang new golden").custId("id97").build();
        try {
            addrService.modify(addrDto);
            log.info("------------------GOOOOD--------------------");
        } catch (Exception e) {
            if (e instanceof SQLException) {
                log.info("-----------------------------System Trouble EX0001------------------------");
            } else if(e instanceof DuplicateKeyException){
                log.info("-----------------------------ID Duplicated EX0002------------------------");
            } else {
                log.info("-----------------------Sorry EX0003-------------------------");
            }
            e.printStackTrace();
        }
    }

}
