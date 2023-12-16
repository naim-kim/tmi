package com.example.board.service;
import com.example.board.dao.UserDao;
import com.example.board.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDao userDAO;
    public User getUser(User user) {
        return userDAO.getUser(user);
    }
}