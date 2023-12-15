package com.example.board;

import java.util.List;

public interface TeamMember {

    int insertBoard(TeamMemberVO vo);

    void deleteBoard(int seq);

    int updateBoard(TeamMemberVO vo);

    TeamMemberVO getBoard(int seq);

    List<TeamMemberVO> getBoardList();
}