package com.hana.controller;

import com.hana.app.data.dto.AddrDto;
import com.hana.app.data.dto.CustDto;
import com.hana.app.service.AddrService;
import com.hana.app.service.CustService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/mypage")
public class MyPageController {

    final CustService custService;
    final AddrService addrService;
    String dir = "mypage/";
    @RequestMapping("/")
    public String main(Model model, @RequestParam("id") String id){
        try {
            CustDto custDto = null;
            custDto = custService.get(id);
            model.addAttribute("cust", custDto);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "center");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model, @RequestParam("id") String id){
        model.addAttribute("id", id);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "add");
        return "index";
    }
    @RequestMapping("/addimpl")
    public String addimpl(Model model,
                          AddrDto addrDto, HttpSession httpSession){
        try {
            addrService.add(addrDto);
        } catch (Exception e) {
//            throw new RuntimeException(e);
            model.addAttribute("center", "registerFail");
            return "index";
        }
        return "redirect:/mypage/get?id=" + addrDto.getCustId();
    }

    @RequestMapping("/get")
    public String get(Model model, @RequestParam("id") String id){
        // Data를 DB에서 조회한다.
        List<AddrDto> list = null;
        try {
            list = addrService.get(id);
            model.addAttribute("addrs", list);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "get");
        } catch (Exception e) {
            model.addAttribute("center", dir + "get");
        }

        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("id") String id) {
        // id 값을 DB에서 조회
        try {
            CustDto custDto = null;
            custDto = custService.get(id);
            model.addAttribute("cust", custDto);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "detail");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return "index";
    }
}
