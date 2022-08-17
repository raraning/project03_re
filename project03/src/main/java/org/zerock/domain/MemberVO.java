package org.zerock.domain;

import java.util.Date;

public class MemberVO {
	private int uid;
	private String id;
	private String pass;
	private String membername;
	private String birth;
	private String gender;
	private String passport;
	private String email;
	private String phone;
	private String level;
	private int point;
	private Date joindate;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
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
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [uid=" + uid + ", id=" + id + ", pass=" + pass + ", membername=" + membername + ", birth=" + birth
				+ ", gender=" + gender + ", passport=" + passport + ", email=" + email + ", phone=" + phone + ", level="
				+ level + ", point=" + point + ", joindate=" + joindate + "]";
	}
	
	
}
