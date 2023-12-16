package com.example.board.service;

import com.example.board.vo.ActivityVO;

import java.util.List;

public interface Activity {

    int insertActivity(ActivityVO vo);

    void deleteActivity(int seq);

    int updateActivity(ActivityVO vo);

    ActivityVO getActivity(int seq);

    List<ActivityVO> getActivityList();
}