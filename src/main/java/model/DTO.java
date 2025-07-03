package model;

public class DTO {
	//tbl_student_201905
	private String syear;	//학년
	private String sclass;	//반
	private String sno;	//번호
	private String sname;	//이름
	private String birth;	//생년월일
	private String gender;	//성별
	private String tel1;	//전화1
	private String tel2;	//전화2
	private String tel3;	//전화3
	//tbl_dept_201905	//교사테이블
	//private String syear;
	//private String sclass;
	private String tname;	//선생이름
	
	//tbl_score_201905
	//private String syear;
	//private String sclass;
	//private String sno;
	private int kor;
	private int eng;
	private int mat;
	
	//추가한 부분
	private int tot;
	private double avg; 
	
	private double kavg; // 국어평균
	private double eavg; //	영어평균
	private double mavg; //	수학평균
	
	private int skor; //	국어총점
	private int seng; //	영어총점
	private int smat; //	수학총점
	
	
	
	
	
	
	public double getKavg() {
		return kavg;
	}
	public void setKavg(double kavg) {
		this.kavg = kavg;
	}
	public double getEavg() {
		return eavg;
	}
	public void setEavg(double eavg) {
		this.eavg = eavg;
	}
	public double getMavg() {
		return mavg;
	}
	public void setMavg(double mavg) {
		this.mavg = mavg;
	}
	public int getSkor() {
		return skor;
	}
	public void setSkor(int skor) {
		this.skor = skor;
	}
	public int getSeng() {
		return seng;
	}
	public void setSeng(int seng) {
		this.seng = seng;
	}
	public int getSmat() {
		return smat;
	}
	public void setSmat(int smat) {
		this.smat = smat;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public String getSyear() {
		return syear;
	}
	public void setSyear(String syear) {
		this.syear = syear;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	
	
	
}
