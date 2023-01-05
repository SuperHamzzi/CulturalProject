package com.multi.aop.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int no;
	private String id;
	private String pw;
	private String name;
	private int age;
}
