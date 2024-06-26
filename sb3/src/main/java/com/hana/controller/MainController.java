package com.hana.controller;

import com.hana.app.data.dto.BoardDto;
import com.hana.app.data.dto.CustDto;
import com.hana.app.data.entity.LoginCust;
import com.hana.app.repository.LoginCustRepository;
import com.hana.app.service.BoardService;
import com.hana.app.service.CustService;
import com.hana.util.StringEnc;
import com.hana.util.WeatherUtil;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;
import java.util.Random;

@Controller
@Slf4j
@RequiredArgsConstructor
public class MainController {

    final CustService custService;
    final BoardService boardService;
    final BCryptPasswordEncoder encoder;
    final LoginCustRepository loginCustRepository;

    @Value("${app.key.wkey}")
    String wkey;

    @Value("${app.key.whkey}")
    String whkey;

    @Value("${app.url.serverurl}")
    String serverurl;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        Random r = new Random();
        int num = r.nextInt(100)+1;
        log.info(num+"");

        List<BoardDto> list = null;
        list = boardService.getRank();

        model.addAttribute("ranks", list);

        return "index";
    }
    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center", "login");
        return "index";
    }

    @RequestMapping("/logoutimpl")
    public String logout(Model model, HttpSession httpSession){
        if(httpSession != null){
            loginCustRepository.deleteById((String) httpSession.getAttribute("id"));
            httpSession.invalidate();
        }
        return "index";
    }
    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd, HttpSession httpSession){

        CustDto custDto = null;
        try {
            custDto = custService.get(id);
            if(custDto == null){
                throw new Exception();
            }
            if(encoder.matches(pwd, custDto.getPwd())){
                throw new Exception();
            }
            loginCustRepository.save(LoginCust.builder().loginId(id).build());

            httpSession.setAttribute("id", id);
        } catch (Exception e) {
            model.addAttribute("center", "login");
            model.addAttribute("msg", "간첩임? 왜 틀림?");
        }
        return "redirect:/";
    }
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/chat")
    public String chat(Model model){
        model.addAttribute("center", "chat");
        model.addAttribute("serverurl", serverurl);
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               CustDto custDto, HttpSession httpSession){
        try {
            custDto.setPwd(encoder.encode(custDto.getPwd()));
            custDto.setName(StringEnc.encryptor(custDto.getName()));
            custService.add(custDto);
            loginCustRepository.save(LoginCust.builder().loginId(custDto.getId()).build());


            httpSession.setAttribute("id", custDto.getId());
        } catch (Exception e) {
//            throw new RuntimeException(e);
            model.addAttribute("center", "registerFail");
        }
        return "index";
    }
    @ResponseBody
    @RequestMapping("/registercheckid")
    public Object registercheckid(Model model, @RequestParam("id") String id) throws Exception {
        String result = "0";
        CustDto custDto = custService.get(id);
        if(custDto == null){
            result = "1";
        }
        return result;
    }
    @ResponseBody
    @RequestMapping("/wh")
    public Object wh(Model model) throws IOException, ParseException {
        return WeatherUtil.getWeather("109", wkey);
    }
}