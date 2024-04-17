package com.hana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class CommunityController {

    String dir = "community/";
    @RequestMapping("/board")
    public String board(Model model){
        model.addAttribute("center", dir + "board");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model){
        model.addAttribute("center", dir + "detail");
        return "index";
    }

}
