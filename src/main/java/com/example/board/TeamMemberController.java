package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/board")
public class TeamMemberController {

    @Autowired
    TeamMemberDAO teammemberDAO;

    @GetMapping("/list")
    public String boardlist(Model model) {
        model.addAttribute("list", teammemberDAO.getTeamMemberList());
        return "posts";
    }

    @GetMapping("/add")
    public String addPost() {
        return "addpostform";
    }

    @PostMapping("/addok")
    public String addPostOK(@ModelAttribute TeamMemberVO vo) {
        int i = teammemberDAO.insertTeamMember(vo);
        if (i == 0) {
            System.out.println("데이터 추가 실패");
        } else {
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }

    @GetMapping("/editpost/{id}")
    public String editPost(@PathVariable("id") int id, Model model) {
        TeamMemberVO teamMemberVO = teammemberDAO.getTeamMember(id);
        model.addAttribute("teamMemberVO", teamMemberVO);
        return "editform";
    }

    @PostMapping("/editok")
    public String editOK(@ModelAttribute TeamMemberVO vo) {
        int i = teammemberDAO.updateTeamMember(vo);
        if (i == 0) {
            System.out.println("데이터 수정 실패");
        } else {
            System.out.println("데이터 수정 성공!!!");
        }
        return "redirect:list";
    }

    @GetMapping("/delete/{id}")
    public String deletePost(@PathVariable("id") int id) {
        teammemberDAO.deleteTeamMember(id);
        return "redirect:../list";
    }

    @GetMapping("/view/{id}")
    public String viewPost(@PathVariable("id") int id, Model model) {
        TeamMemberVO teamMemberVO = teammemberDAO.getTeamMember(id);
        model.addAttribute("teamMemberVO", teamMemberVO);
        return "view";
    }
}
