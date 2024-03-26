package com.hana.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cust")
public class CustController {
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("centerpage", "cust/add");
        return "main";
    }

    @RequestMapping("/get")
    public String get(Model model){
        model.addAttribute("centerpage", "cust/get");
        return "main";
    }
}
