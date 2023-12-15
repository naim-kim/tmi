package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamMemberImpl implements TeamMemberMapper{

    @Autowired
    TeamMemberDAO teamMemberDAO;
    @Override
    public int insertBoard(TeamMemberVO vo) {
        return teamMemberDAO.insertBoard(vo);
    }

    @Override
    public void deleteBoard(int seq) {
        teamMemberDAO.deleteBoard(seq);
    }

    @Override
    public int updateBoard(TeamMemberVO vo) {
        return teamMemberDAO.updateBoard(vo);
    }

    @Override
    public TeamMemberVO getBoard(int seq) {
        return teamMemberDAO.getBoard(seq);
    }

    @Override
    public List<TeamMemberVO> getBoardList() {
        return teamMemberDAO.getBoardList();
    }
}
