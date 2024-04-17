package com.hana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    String dir = "admin/";
    @RequestMapping("")
    public String login(Model model){
        model.addAttribute("center", dir + "login");
        return "index";
    }

    @RequestMapping("/member")
    public String join(Model model){
        model.addAttribute("center", dir + "member");
        return "index";
    }

    @RequestMapping("/notices")
    public String notices(Model model){
        model.addAttribute("center", dir + "notices");
        return "index";
    }

    @RequestMapping("/write")
    public String write(Model model){
        model.addAttribute("center", dir + "write");
        return "index";
    }

    @RequestMapping("/notice")
    public String notice(Model model){
        model.addAttribute("center", dir + "notice");
        return "index";
    }
}
