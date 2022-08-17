package org.zerock.domain;

import java.util.Date;

public class CompanyVO {
	
	private int c_uid;
	private String c_id;
	private String c_pass;
	private String c_name;
	private String c_email;
	private String c_phone;
	private String c_level;
	private Date c_joindate;
	
	public int getC_uid() {
		return c_uid;
	}
	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_pass() {
		return c_pass;
	}
	public void setC_pass(String c_pass) {
		this.c_pass = c_pass;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_email() {
		return c_email;
	}
	public void setC_email(String c_email) {
		this.c_email = c_email;
	}
	public String getC_phone() {
		return c_phone;
	}
	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}
	public String getC_level() {
		return c_level;
	}
	public void setC_level(String c_level) {
		this.c_level = c_level;
	}
	public Date getC_joindate() {
		return c_joindate;
	}
	public void setC_joindate(Date c_joindate) {
		this.c_joindate = c_joindate;
	}
	
	@Override
	public String toString() {
		return "CompanyVO [c_uid=" + c_uid + ", c_id=" + c_id + ", c_pass=" + c_pass + ", c_name=" + c_name
				+ ", c_email=" + c_email + ", c_phone=" + c_phone + ", c_level=" + c_level + ", c_joindate="
				+ c_joindate + "]";
	}
	
	
}
