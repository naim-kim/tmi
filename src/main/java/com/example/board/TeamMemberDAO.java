package com.example.board;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

public class TeamMemberDAO extends SqlSessionDaoSupport implements TeamMemberMapper {

    @Override
    public int insertBoard(TeamMemberVO vo) {
        return getSqlSession().insert("insertBoard", vo);
    }

    @Override
    public void deleteBoard(int seq) {
        getSqlSession().delete("deleteBoard", seq);
    }

    @Override
    public int updateBoard(TeamMemberVO vo) {
        return getSqlSession().update("updateBoard", vo);
    }

    @Override
    public TeamMemberVO getBoard(int seq) {
        return getSqlSession().selectOne("getBoard", seq);
    }

    @Override
    public List<TeamMemberVO> getBoardList() {
        return getSqlSession().selectList("getBoardList");
    }
}
