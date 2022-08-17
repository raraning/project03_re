package org.zerock.domain;

import java.util.Arrays;

public class HotelFileVO {
	
	String fullName;
	int h_uid;
	String regdate;	
	private String[] files;

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getH_uid() {
		return h_uid;
	}

	public void setH_uid(int h_uid) {
		this.h_uid = h_uid;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "HotelFileVO [fullName=" + fullName + ", h_uid=" + h_uid + ", regdate=" + regdate + ", files="
				+ Arrays.toString(files) + "]";
	}

	public void setFullName(String[] savedName) {
		// TODO Auto-generated method stub
		
	}
	
	
}
