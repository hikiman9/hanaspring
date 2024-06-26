package com.hana.controller;

import com.hana.app.data.dto.CustDto;
import com.hana.app.service.CustService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/html")
public class HtmlController {

    final CustService custService;
    String dir = "html/";
    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }
    @RequestMapping("/html1")
    public String html1(Model model){
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "html1");
        return "index";
    }
    @RequestMapping("/html2")
    public String html2(Model model){
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "html2");
        return "index";
    }
    @RequestMapping("/html3")
    public String html3(Model model){
        // Data를 DB에서 조회한다.
        List<CustDto> list = null;
        try {
            list = custService.get();
            model.addAttribute("custs", list);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "html3");
        } catch (Exception e) {
            model.addAttribute("center", dir + "html3");
        }

        return "index";
    }

    @RequestMapping("/get")
    public String get(Model model, @RequestParam("id") String id) {
        // id 값을 DB에서 조회
        CustDto c = CustDto.builder().id(id).pwd("pwdxx").name("Unknown").build();
        model.addAttribute("cust", c);

        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "get");
        return "index";
    }
}
