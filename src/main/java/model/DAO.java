package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public Connection getcoConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","Track2_18","1234");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("DB 연결 실패", e);
		}
		return conn;
	}
	public int insert(DTO dto) throws Exception{
		int row = 0;
		String sql ="insert into tbl_student_201905("
				+ "syear, sclass, sno, sname, birth, gender, tel1, tel2, tel3)"
				+ "values(?,?,?,?,?,?,?,?,?)";
		
		conn = getcoConnection();
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, dto.getSyear());
		pstmt.setString(2, dto.getSclass());
		pstmt.setString(3, dto.getSno());
		pstmt.setString(4, dto.getSname());
		pstmt.setString(5, dto.getBirth());
		pstmt.setString(6, dto.getGender());
		pstmt.setString(7, dto.getTel1());
		pstmt.setString(8, dto.getTel2());
		pstmt.setString(9, dto.getTel3());
		
		row = pstmt.executeUpdate();
		
		return row;
	}
	public int r_insert(DTO dto) throws Exception{
		int row = 0;
		String sql = "insert into tbl_score_201905(\r\n"
				+ "syear, sclass,sno,kor,eng,mat)\r\n"
				+ "values(?,?,?,?,?,?)";
		
		conn = getcoConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getSyear());
		pstmt.setString(2, dto.getSclass());
		pstmt.setString(3, dto.getSno());
		pstmt.setInt(4, dto.getKor());
		pstmt.setInt(5, dto.getEng());
		pstmt.setInt(6, dto.getMat());
		
		row = pstmt.executeUpdate();
		
		return row;
	}
	public List<DTO> r_list() throws Exception{
		List<DTO> list = new ArrayList<DTO>();
		String sql  = "select\r\n"
				+ "a.syear,\r\n"
				+ "a.sclass,\r\n"
				+ "a.sno,\r\n"
				+ "b.sname,\r\n"
				+ "b.gender,\r\n"
				+ "a.kor,\r\n"
				+ "a.eng,\r\n"
				+ "a.mat\r\n"
				+ "from tbl_score_201905 a \r\n"
				+ "join tbl_student_201905 b\r\n"
				+ "on a.syear = b.syear\r\n"
				+ "and a.sclass = b.sclass\r\n"
				+ "and a.sno = b.sno\r\n"
				+ "order by a.syear, a.sclass,a.sno asc";
		
		conn = getcoConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			DTO dto = new DTO();
			dto.setSyear(rs.getString("syear"));
			dto.setSclass(rs.getString("sclass"));
			dto.setSno(rs.getString("sno"));
			dto.setSname(rs.getString("sname"));
			dto.setGender(rs.getString("gender"));
			dto.setKor(rs.getInt("kor"));
			dto.setEng(rs.getInt("eng"));
			dto.setMat(rs.getInt("mat"));
			//총점 평균 계산 
			int tot = dto.getKor()+dto.getEng()+dto.getMat();
			dto.setTot(tot);
			double avg = Math.round((tot/ 3.0)*10) / 10.0; //소수 첫째자리 반올림 
			dto.setAvg(avg);
			
			list.add(dto);			
		}
		return list;
	}
	public List<DTO> c_list() throws Exception{
		List<DTO> list = new ArrayList<DTO>();
		String sql  = "select \r\n"
				+ "a.syear,\r\n"
				+ "a.sclass,\r\n"
				+ "a.tname,\r\n"
				+ "sum (b.kor) as skor,\r\n"
				+ "sum (b.eng) as seng,\r\n"
				+ "sum (b.mat) as smat,\r\n"
				+ "count (a.sclass) as scnt,\r\n"
				+ "round(sum (b.kor)/count(a.sclass),1) as kavg,\r\n"
				+ "round(sum (b.eng)/count(a.sclass),1) as eavg,\r\n"
				+ "round(sum (b.mat)/count(a.sclass),1) as mavg\r\n"
				+ "from tbl_dept_201905 a\r\n"
				+ "join tbl_score_201905 b\r\n"
				+ "on a.syear = b.syear \r\n"
				+ "where a.sclass = b.sclass\r\n"
				+ "group by a.syear, a.sclass, a.tname\r\n"
				+ "order by a.syear  asc";
		
		conn = getcoConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			DTO dto = new DTO();
			dto.setSyear(rs.getString("syear"));
			dto.setSclass(rs.getString("sclass"));
			dto.setTname(rs.getString("tname"));
			dto.setSkor(rs.getInt("skor"));
			dto.setSeng(rs.getInt("seng"));
			dto.setSmat(rs.getInt("smat"));
			dto.setKavg(rs.getDouble("kavg"));
			dto.setEavg(rs.getDouble("eavg"));
			dto.setMavg(rs.getDouble("mavg"));
			
			list.add(dto);			
		}
		return list;
	}
}
