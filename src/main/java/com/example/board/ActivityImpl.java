package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ActivityImpl implements ActivityMapper{

    @Autowired
    ActivityDAO activityDAO;

    @Override
    public int insertActivity(ActivityVO vo) {
        return activityDAO.insertActivity(vo);
    }

    @Override
    public void deleteActivity(int seq) {
        activityDAO.deleteActivity(seq);
    }

    @Override
    public int updateActivity(ActivityVO vo) {
        return activityDAO.updateActivity(vo);
    }

    @Override
    public ActivityVO getActivity(int seq) {
        return activityDAO.getActivity(seq);
    }

    @Override
    public List<ActivityVO> getActivityList() {
        return activityDAO.getActivityList();
    }
}
