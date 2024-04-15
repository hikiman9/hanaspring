package com.hana.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.hana.app.data.dto.CustDto;
import com.hana.app.service.CustService;
import com.hana.util.StringEnc;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/cust")
public class CustController {

    final CustService custService;
    String dir = "cust/";
    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "add");
        return "index";
    }
    @RequestMapping("/addimpl")
    public String addimpl(Model model,
                               CustDto custDto, HttpSession httpSession){
        try {
            custService.add(custDto);
        } catch (Exception e) {
//            throw new RuntimeException(e);
            model.addAttribute("center", "registerFail");
            return "index";
        }
        return "redirect:/cust/detail?id=" + custDto.getId();
    }

    @RequestMapping("/get")
    public String get(Model model){
        // Data를 DB에서 조회한다.
        List<CustDto> list = null;
        try {
            list = custService.get();
            list.stream().forEach(c -> {c.setName(StringEnc.decryptor(c.getName()));});
            model.addAttribute("custs", list);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "get");
        } catch (Exception e) {
            model.addAttribute("center", dir + "get");
        }

        return "index";
    }

    @RequestMapping("/allpage")
    public String allPage(@RequestParam("pageNo") int pageNo, Model model){
        PageInfo<CustDto> p;
        try {
            p = new PageInfo<>(custService.getPage(pageNo), 5);
            model.addAttribute("cpage", p);
            model.addAttribute("left", dir + "left");
            model.addAttribute("center", dir + "allpage");
            model.addAttribute("target", "/cust");
        } catch (Exception e) {
            throw new RuntimeException();
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
