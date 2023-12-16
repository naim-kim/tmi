package com.example.board.service;

import com.example.board.vo.ActivityVO;
import com.example.board.dao.ActivityDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ActivityImpl implements Activity{

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