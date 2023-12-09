package com.example.board;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class TeamMemberDAO {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    private final String TeamMembers_INSERT = "INSERT INTO TeamMembers (Picture, Name, StudentID, Semester, Major, Birthday, MBTI) VALUES (?,?,?,?,?,?,?)";
    private final String TeamMembers_UPDATE = "UPDATE TeamMembers SET Picture=?, Name=?, StudentID=?, Semester=?, Major=?, Birthday=?, MBTI=? WHERE seq=?";
    private final String TeamMembers_DELETE = "DELETE FROM TeamMembers WHERE seq=?";
    private final String TeamMembers_GET = "SELECT * FROM TeamMembers WHERE seq=?";
    private final String TeamMembers_LIST = "SELECT * FROM TeamMembers ORDER BY seq DESC";

    public int insertTeamMember(TeamMemberVO vo) {
        return template.update(TeamMembers_INSERT, new Object[]{vo.getPicture(), vo.getName(), vo.getStudentID(), vo.getSemester(), vo.getBirthday(), vo.getMajor(), vo.getMBTI()});
    }

    public int deleteTeamMember(int seq) {
        return template.update(TeamMembers_DELETE, new Object[]{seq});
    }

    public int updateTeamMember(TeamMemberVO vo) {
        return template.update(TeamMembers_UPDATE, new Object[]{vo.getPicture(), vo.getName(), vo.getStudentID(), vo.getSemester(), vo.getBirthday(), vo.getMajor(), vo.getMBTI(), vo.getSeq()});
    }

    public TeamMemberVO getTeamMember(int seq) {
        return template.queryForObject(TeamMembers_GET, new Object[]{seq}, new BeanPropertyRowMapper<>(TeamMemberVO.class));
    }

    public List<TeamMemberVO> getTeamMemberList() {
        return template.query(TeamMembers_LIST, new RowMapper<TeamMemberVO>() {
            @Override
            public TeamMemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                TeamMemberVO data = new TeamMemberVO();
                data.setSeq(rs.getInt("seq"));
                data.setPicture(rs.getString("Picture"));
                data.setName(rs.getString("Name"));
                data.setStudentID(rs.getString("StudentID"));
                data.setSemester(rs.getInt("Semester"));
                data.setMajor(rs.getString("Major"));
                data.setBirthday(rs.getDate("Birthday"));
                data.setMBTI(rs.getString("MBTI"));
                data.setRegdate(rs.getDate("regdate"));
                return data;
            }
        });
    }
}
