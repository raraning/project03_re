package org.zerock.domain;

public class SellRoomVO {
	private int h_uid;
	private String h_name;
	private int h_price;
	private int h_point;
	private String breakfast;
	private String h_room;
	
	public int getH_uid() {
		return h_uid;
	}
	public void setH_uid(int h_uid) {
		this.h_uid = h_uid;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public int getH_price() {
		return h_price;
	}
	public void setH_price(int h_price) {
		this.h_price = h_price;
	}
	public int getH_point() {
		return h_point;
	}
	public void setH_point(int h_point) {
		this.h_point = h_point;
	}
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	public String getH_room() {
		return h_room;
	}
	public void setH_room(String h_room) {
		this.h_room = h_room;
	}
	
	@Override
	public String toString() {
		return "SellRoomVO [h_uid=" + h_uid + ", h_name=" + h_name + ", h_price=" + h_price + ", h_point=" + h_point
				+ ", breakfast=" + breakfast + ", h_room=" + h_room + "]";
	}
	
	
	
	
}
