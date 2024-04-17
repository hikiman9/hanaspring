package com.hana.controller;

import com.hana.app.data.dto.BoardDto;
import com.hana.app.data.dto.CustDto;
import com.hana.app.data.dto.OcrDto;
import com.hana.app.data.entity.LoginCust;
import com.hana.app.repository.LoginCustRepository;
import com.hana.app.service.BoardService;
import com.hana.app.service.CustService;
import com.hana.util.*;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.*;

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

    @Value("${app.dir.uploadimgdir}")
    String uploadImgDir;
    @Value("${app.key.ncp-id}")
    String ncpId;
    @Value("${app.key.ncp-secret}")
    String ncpSecret;

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
    @RequestMapping("/chat2")
    public String chat2(Model model){
        model.addAttribute("serverurl", serverurl);
        model.addAttribute("center", "chat2");
        return "index";
    }

    @RequestMapping("/saveimg")
    @ResponseBody
    public String saveimg(@RequestParam("file") MultipartFile file) throws IOException {
        String imgname = file.getOriginalFilename();
        FileUploadUtil.saveFile(file, uploadImgDir);
        return imgname;
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
            Optional<LoginCust> loginCust = loginCustRepository.findById(id);
            if(loginCust.isPresent()){
                throw new Exception();
            }

            loginCustRepository.save(LoginCust.builder().loginId(id).build());

            httpSession.setAttribute("id", id);
        } catch (Exception e) {
            model.addAttribute("center", "login");
            model.addAttribute("msg", "로그인 되어 있습니다.");
            return "index";
        }
        return "redirect:/";
    }
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register");
        return "index";
    }

    @RequestMapping("/pic")
    public String pic(Model model){
        model.addAttribute("center", "pic");
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

    @RequestMapping("/summary")
    public String summary(Model model){
        model.addAttribute("center", "summary");
        return "index";
    }

    @ResponseBody
    @RequestMapping("/summaryimpl")
    public Object summaryimpl(@RequestParam("content") String content) throws IOException, ParseException {
        JSONObject result = (JSONObject) NcpUtil.getSummary(ncpId, ncpSecret, content);
        return result;
    }

    @RequestMapping("/ocr")
    public String ocr(Model model){
        model.addAttribute("center", "ocr");
        return "index";
    }

    @RequestMapping("/ocrimpl")
    public String ocrimpl(Model model, OcrDto ocrDto) throws IOException {
        String imgname = ocrDto.getImage().getOriginalFilename();

        FileUploadUtil.saveFile(ocrDto.getImage(), uploadImgDir);
        JSONObject jsonObject = OCRUtil.getResult(uploadImgDir, imgname);
        Map<String, String> map = OCRUtil.getData(jsonObject);

        model.addAttribute("imgname", imgname);
        model.addAttribute("result", map);
        model.addAttribute("center", "ocr");
        return "index";
    }
}