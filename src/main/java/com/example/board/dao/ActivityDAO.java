package com.example.board.dao;

import com.example.board.ActivityVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ActivityDAO{

    @Autowired
    SqlSession sqlSession;

    public int insertActivity(ActivityVO vo) {
        return sqlSession.insert("insertActivity", vo);
    }

    public void deleteActivity(int seq) {
        sqlSession.delete("deleteActivity", seq);
    }

    public int updateActivity(ActivityVO vo) {
        return sqlSession.update("updateActivity", vo);
    }


    public ActivityVO getActivity(int seq) {
        return sqlSession.selectOne("getActivity", seq);
    }


    public List<ActivityVO> getActivityList() {
        return sqlSession.selectList("getActivityList");
    }
}