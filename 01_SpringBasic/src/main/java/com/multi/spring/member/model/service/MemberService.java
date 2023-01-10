package com.multi.spring.member.model.service;

import java.util.List;

import com.multi.spring.member.model.vo.Member;

public interface MemberService {
	int joinMember(Member member);
	List<Member> getAllList();
	Member login(String id);
}
