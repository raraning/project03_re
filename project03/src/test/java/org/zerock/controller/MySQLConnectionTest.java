package org.zerock.controller;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MySQLConnectionTest {
	private static final String URL = "jdbc:mysql://localhost:3306/project3";	
	private static final String USER = "root";
	private static final String PW = "1111";

	@Test
	public void testConnection() throws Exception{
		//Class.forName(DRIVER);
		try{
			Connection con = DriverManager.getConnection(URL,USER,PW); //try 구문에서 객체 생성 
			System.out.println(con); //객체 콘솔 출력
			con.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
