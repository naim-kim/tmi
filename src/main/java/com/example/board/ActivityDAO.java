package com.example.board;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

public class ActivityDAO extends SqlSessionDaoSupport implements ActivityMapper {

    @Override
    public int insertActivity(ActivityVO vo) {
        return getSqlSession().insert("insertActivity", vo);
    }

    @Override
    public void deleteActivity(int seq) {
        getSqlSession().delete("deleteActivity", seq);
    }

    @Override
    public int updateActivity(ActivityVO vo) {
        return getSqlSession().update("updateActivity", vo);
    }

    @Override
    public ActivityVO getActivity(int seq) {
        return getSqlSession().selectOne("getActivity", seq);
    }

    @Override
    public List<ActivityVO> getActivityList() {
        return getSqlSession().selectList("getActivityList");
    }
}
