package com.hana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    String dir = "customer/";
    @RequestMapping("/one2one")
    public String one2one(Model model){
        model.addAttribute("center", dir + "one2one");
        return "index";
    }

    @RequestMapping("/qnaboard")
    public String qnaboard(Model model){
        model.addAttribute("center", dir + "qnaboard");
        return "index";
    }

    @RequestMapping("/qnadetail")
    public String qnadetail(Model model){
        model.addAttribute("center", dir + "qnadetail");
        return "index";
    }

    @RequestMapping("/checkpw")
    public String checkpw(Model model){
        model.addAttribute("center", dir + "checkpw");
        return "index";
    }

}
