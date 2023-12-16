package com.example.board.dao;

import com.example.board.vo.User;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
    @Autowired
    SqlSession sqlSession;
    public User getUser(User user) {
        return sqlSession.selectOne("User.getUser", user);
    }
}