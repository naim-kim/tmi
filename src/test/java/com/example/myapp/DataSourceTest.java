//package com.example.myapp;
//
//import org.apache.ibatis.jdbc.SQL;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import javax.sql.DataSource;
//import java.sql.Connection;
//import java.sql.SQLException;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"./src/main/webapp/WEB-INF/applicationContext.xml"})
//public class DataSourceTest {
//    private DataSource ds;
//    public void testConnection() {
//        try{
//            Connection con = ds.getConnection();
//            System.out.println("DB연결");
//        }
//        catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
