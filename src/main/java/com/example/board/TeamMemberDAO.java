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

    public int insertBoard(TeamMemberVO vo) {
        String MEMBER_INSERT = "insert into TeamMembers (name, studentID, phonenum, major, semester, birthday, mbti, comment) values (?,?,?,?,?,?,?,?)";
        return template.update(MEMBER_INSERT, vo.getName(), vo.getStudentID(), vo.getPhonenum(), vo.getMajor(), vo.getSemester(), vo.getBirthday(), vo.getMBTI(), vo.getComment());
    }

    public void deleteBoard(int id) {
        String MEMBER_DELETE = "delete from TeamMembers where seq=?";
        template.update(MEMBER_DELETE, id);
    }

    public int updateBoard(TeamMemberVO vo) {
        String MEMBER_UPDATE = "update TeamMembers set name=?, studentID=?, phonenum=?, major=?, semester=?, birthday=?, mbti=?, comment=? where seq=?";
        return template.update(MEMBER_UPDATE, vo.getName(), vo.getStudentID(), vo.getPhonenum(), vo.getMajor(), vo.getSemester(), vo.getBirthday(), vo.getMBTI(), vo.getComment(), vo.getSeq());
    }

    public TeamMemberVO getBoard(int seq) {
        String MEMBER_GET = "select * from TeamMembers where seq=?";
        return template.queryForObject(MEMBER_GET,
                new Object[]{seq},
                new BeanPropertyRowMapper<>(TeamMemberVO.class));
    }

    public List<TeamMemberVO> getBoardList() {
        String MEMBER_LIST = "select * from TeamMembers order by seq desc";
        return template.query(MEMBER_LIST, new RowMapper<TeamMemberVO>() {

            @Override
            public TeamMemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                TeamMemberVO data = new TeamMemberVO();
                data.setSeq(rs.getInt("seq"));
                data.setName(rs.getString("name"));
                data.setStudentID(rs.getString("studentID"));
                data.setPhonenum(rs.getString("phonenum"));
                data.setMajor(rs.getString("major"));
                data.setSemester(rs.getInt("semester"));
                data.setBirthday(rs.getString("birthday"));
                data.setMBTI(rs.getString("mbti"));
                data.setComment(rs.getString("comment"));
                data.setRegdate(rs.getDate("regdate"));
                return data;
            }
        });
    }

}
