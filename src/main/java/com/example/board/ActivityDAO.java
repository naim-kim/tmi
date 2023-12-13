package com.example.board;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ActivityDAO {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int insertActivity(ActivityVO vo) {
        String ACTIVITY_INSERT = "insert into WeeklyActivities (title, week, details) values (?,?,?)";
        return template.update(ACTIVITY_INSERT, vo.getTitle(), vo.getWeek(), vo.getDetails());
    }

    public void deleteActivity(int id) {
        String ACTIVITY_DELETE = "delete from WeeklyActivities where seq=?";
        template.update(ACTIVITY_DELETE, id);
    }

    public int updateActivity(ActivityVO vo) {
        String ACTIVITY_UPDATE = "update WeeklyActivities set title=?, week=?, details=? where seq=?";
        return template.update(ACTIVITY_UPDATE, vo.getTitle(), vo.getWeek(), vo.getDetails(), vo.getSeq());
    }

    public ActivityVO getActivity(int seq) {
        String ACTIVITY_GET = "select * from WeeklyActivities where seq=?";
        return template.queryForObject(ACTIVITY_GET,
                new Object[]{seq},
                new BeanPropertyRowMapper<>(ActivityVO.class));
    }

    public List<ActivityVO> getActivityList() {
        String ACTIVITY_LIST = "select * from WeeklyActivities order by seq desc";
        return template.query(ACTIVITY_LIST, new RowMapper<ActivityVO>() {

            @Override
            public ActivityVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                ActivityVO data = new ActivityVO();
                data.setSeq(rs.getInt("seq"));
                data.setTitle(rs.getString("title"));
                data.setWeek(rs.getString("week"));
                data.setDetails(rs.getString("details"));
                data.setRegdate(rs.getDate("regdate"));
                return data;
            }
        });
    }

}
