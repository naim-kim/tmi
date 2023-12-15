package com.example.board.controller;

import com.example.board.ActivityVO;
import com.example.board.TeamMemberVO;
import com.example.board.dao.ActivityDAO;
import com.example.board.dao.TeamMemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TMIController {

    @Autowired
    TeamMemberDAO memberDAO;
    @Autowired
    ActivityDAO activityDAO;

    @RequestMapping(value = "/team", method = RequestMethod.GET)
    public String TMI_home(Model model) {
        model.addAttribute("TMI_home", activityDAO.getActivityList());
        return "TMI_home";
    }

    @RequestMapping(value = "/team/activityadd", method = RequestMethod.GET)
    public String addActivity() {
        return "activityadd";
    }

    @RequestMapping(value = "/team/activityaddok", method = RequestMethod.POST)
    public String addActivityOK(ActivityVO vo) {
        int i = activityDAO.insertActivity(vo);
        if (i == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:../";
    }

    @RequestMapping(value = "/team/activityedit/{id}", method = RequestMethod.GET)
    public String editActivity(@PathVariable("id") int id, Model model) {
        ActivityVO activityVO = activityDAO.getActivity(id);
        model.addAttribute("activityVO", activityVO);
        return "activityedit";
    }

    @RequestMapping(value = "/team/activityeditok", method = RequestMethod.POST)
    public String editOK(ActivityVO vo) {
        int i = activityDAO.updateActivity(vo);
        if (i == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:/team";
    }

    @RequestMapping(value = "/team/activitydelete/{id}", method = RequestMethod.GET)
    public String deleteActivity(@PathVariable("id") int id) {
        activityDAO.deleteActivity(id);
        return "redirect:/team";

    }

    @RequestMapping(value = "/team/activityview/{id}", method = RequestMethod.GET)
    public String viewActivity(@PathVariable("id") int id, Model model) {
        ActivityVO activityVO = activityDAO.getActivity(id);
        model.addAttribute("activityVO", activityVO);
        return "activityview";
    }
    // MEMBERS LIST
    @RequestMapping(value = "/team/memberslist", method = RequestMethod.GET)
    public String memberslist(Model model) {
        model.addAttribute("memberslist", memberDAO.getBoardList());
        return "memberslist";
    }

    @RequestMapping(value = "/team/memberadd", method = RequestMethod.GET)
    public String addPost() {
        return "memberadd";
    }

    @RequestMapping(value = "/team/memberaddok", method = RequestMethod.POST)
    public String addPostOK(TeamMemberVO vo) {
        int i = memberDAO.insertBoard(vo);
        if (i == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:memberslist";
    }

    @RequestMapping(value = "/team/memberedit/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        TeamMemberVO boardVO = memberDAO.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "memberedit";
    }

    @RequestMapping(value = "/team/membereditok", method = RequestMethod.POST)
    public String editOK(TeamMemberVO vo) {
        int i = memberDAO.updateBoard(vo);
        if (i == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:memberslist";
    }

    @RequestMapping(value = "/team/memberdelete/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        memberDAO.deleteBoard(id);
        return "redirect:../memberslist";
    }

    @RequestMapping(value = "/team/memberview/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        TeamMemberVO boardVO = memberDAO.getBoard(id);
        model.addAttribute("boardVO", boardVO);
        return "memberview";
    }
}
