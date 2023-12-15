package com.example.board;

import java.util.List;

public interface ActivityMapper {

    int insertActivity(ActivityVO vo);

    void deleteActivity(int seq);

    int updateActivity(ActivityVO vo);

    ActivityVO getActivity(int seq);

    List<ActivityVO> getActivityList();
}
