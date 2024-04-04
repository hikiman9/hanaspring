package com.hana.admin;

import com.hana.app.data.dto.AdminDto;
import com.hana.app.service.AdminService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
class SelectOneTests {
    @Autowired
    AdminService adminService;
    @Test
    void contextLoads() {
        try {
            AdminDto adminDto = null;
            adminDto = adminService.get("sadmin");
            log.info(adminDto.toString());
            log.info("OK------------------------");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
