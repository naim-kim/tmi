package com.example.board.dao;

import com.example.board.TeamMember;
import com.example.board.TeamMemberVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeamMemberDAO{
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(TeamMemberVO vo) {
        return sqlSession.insert("insertBoard", vo);
    }


    public void deleteBoard(int seq) {
        sqlSession.delete("deleteBoard", seq);
    }


    public int updateBoard(TeamMemberVO vo) {
        return sqlSession.update("updateBoard", vo);
    }


    public TeamMemberVO getBoard(int seq) {
        return sqlSession.selectOne("getBoard", seq);
    }


    public List<TeamMemberVO> getBoardList() {
        return sqlSession.selectList("getBoardList");
    }
}