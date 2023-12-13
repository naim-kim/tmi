package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class HomeController {

    @Autowired
    ActivityDAO activityDAO;

    @RequestMapping(value = "/")
    public String home() {
        // Redirect to /team as the default entry point
        return "redirect:/team";
    }

    @RequestMapping(value = "/team")
    public String team(Model model) {
        String serverTime = new Date().toString();
        model.addAttribute("serverTime", serverTime);

        // Get the list of activities from the database
        model.addAttribute("TMI_home", activityDAO.getActivityList());

        return "home";
    }
}
