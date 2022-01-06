package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class Test {

	public static void main(String[] args) {
		
		// jdbc 연결 & Deployment assembly add
		// Dao test
		GuestbookDao gd= new GuestbookDao();
		List<GuestbookVo> gbList= gd.getList();
		
		System.out.println(gbList.toString());
	}

}
