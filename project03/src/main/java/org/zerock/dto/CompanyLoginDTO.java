package org.zerock.dto;

public class CompanyLoginDTO {
	
	private String c_id;
	private String c_pass;
	
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
	
	@Override
	public String toString() {
		return "CompanyLoginDTO [c_id=" + c_id + ", c_pass=" + c_pass + "]";
	}
	
	
}
