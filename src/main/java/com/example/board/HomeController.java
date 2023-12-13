package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class HomeController {


    @RequestMapping("/")
    public String home(Model model) {
        String serverTime = new Date().toString();
        model.addAttribute("serverTime", serverTime);
        return "home";
    }
}
