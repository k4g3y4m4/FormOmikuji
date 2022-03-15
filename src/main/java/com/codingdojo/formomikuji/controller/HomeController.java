package com.codingdojo.formomikuji.controller;


import com.codingdojo.formomikuji.model.Omikuji;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller

public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "redirect:/omikuji";
    }

    @GetMapping("/omikuji")
    public String omikuji() {
        return "index.jsp";
    }

    @PostMapping("/sendOmikuji")
    public String sendOmikuji(
            @RequestParam(value="inputNumber") Integer inputNumber,
            @RequestParam(value="inputCity") String inputCity,
            @RequestParam(value="inputName") String inputName,
            @RequestParam(value="inputProfession") String inputProfession,
            @RequestParam(value="inputLiving") String inputLiving,
            @RequestParam(value="inputText") String inputText,
            HttpSession session) {

        Omikuji omikuji = new Omikuji(inputNumber, inputCity, inputName, inputProfession, inputLiving, inputText);
        session.setAttribute("Omikuji", omikuji);
        return "redirect:/omikuji/show";
    }

    @GetMapping("/omikuji/show")
    public String result(Model model, HttpSession session) {
        Omikuji omikuji = (Omikuji) session.getAttribute("Omikuji");
        model.addAttribute("omikuji", omikuji);
        return "result.jsp";
    }

    @GetMapping("/reset")
    public String reset(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
