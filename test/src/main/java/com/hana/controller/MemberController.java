package com.hana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

    String dir = "member/";
    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center", dir + "login");
        return "index";
    }

    @RequestMapping("/join")
    public String join(Model model){
        model.addAttribute("center", dir + "join");
        return "index";
    }

    @RequestMapping("/idFind")
    public String idFind(Model model){
        model.addAttribute("center", dir + "idFind");
        return "index";
    }

    @RequestMapping("/passwordFind")
    public String passwordFind(Model model){
        model.addAttribute("center", dir + "passwordFind");
        return "index";
    }
}
