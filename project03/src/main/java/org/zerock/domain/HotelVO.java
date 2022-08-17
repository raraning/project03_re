package org.zerock.domain;

public class HotelVO {

		private int h_uid;
		private String h_name;
		private String h_class;
		private int h_star;
		private int h_people;
		private String h_country;
		private String h_address;
		private String checkin;
		private String checkout;
		private int floor;
		private int rooms;
		private String h_tel;
		private String h_fax;
		
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
		public String getH_class() {
			return h_class;
		}
		public void setH_class(String h_class) {
			this.h_class = h_class;
		}
		public int getH_star() {
			return h_star;
		}
		public void setH_star(int h_star) {
			this.h_star = h_star;
		}
		public int getH_people() {
			return h_people;
		}
		public void setH_people(int h_people) {
			this.h_people = h_people;
		}
		public String getH_country() {
			return h_country;
		}
		public void setH_country(String h_country) {
			this.h_country = h_country;
		}
		public String getH_address() {
			return h_address;
		}
		public void setH_address(String h_address) {
			this.h_address = h_address;
		}
		public String getCheckin() {
			return checkin;
		}
		public void setCheckin(String checkin) {
			this.checkin = checkin;
		}
		public String getCheckout() {
			return checkout;
		}
		public void setCheckout(String checkout) {
			this.checkout = checkout;
		}
		public int getFloor() {
			return floor;
		}
		public void setFloor(int floor) {
			this.floor = floor;
		}
		public int getRooms() {
			return rooms;
		}
		public void setRooms(int rooms) {
			this.rooms = rooms;
		}
		public String getH_tel() {
			return h_tel;
		}
		public void setH_tel(String h_tel) {
			this.h_tel = h_tel;
		}
		public String getH_fax() {
			return h_fax;
		}
		public void setH_fax(String h_fax) {
			this.h_fax = h_fax;
		}
		
		@Override
		public String toString() {
			return "HotelVO [h_uid=" + h_uid + ", h_name=" + h_name + ", h_class=" + h_class + ", h_star=" + h_star
					+ ", h_people=" + h_people + ", h_country=" + h_country + ", h_address=" + h_address + ", checkin="
					+ checkin + ", checkout=" + checkout + ", floor=" + floor + ", rooms=" + rooms + ", h_tel=" + h_tel
					+ ", h_fax=" + h_fax+ "]";
		}
		
		
		
}
