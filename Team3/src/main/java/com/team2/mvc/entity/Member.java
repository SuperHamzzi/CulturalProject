package com.team2.mvc.entity;

import lombok.Data;


@Data
public class Member {
	private int UNO; //유저넘버
	private String ID; //아이디
	private String PASSWORD; //패스워드
	private String NAME; // 이름
	private String NICKNAME; //닉네임
	private String EMAIL; // 이메일
	private String ROLE; //관리자 여부
}
