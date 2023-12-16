package com.example.board.service;

import com.example.board.vo.TeamMemberVO;

import java.util.List;

public interface TeamMember {

    int insertBoard(TeamMemberVO vo);

    void deleteBoard(int seq);

    int updateBoard(TeamMemberVO vo);

    TeamMemberVO getBoard(int seq);

    List<TeamMemberVO> getBoardList();
}