package com.multi.aop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.multi.aop.model.vo.Member;

@Service("memberService")
public class MemberService {
	// 현재 Class가 AOP를 통해서 컨트롤 될 대상이 될 부분
	// 파라메터를 받아올때 Member로 통일 시켜 Aspect 호출시 공통적인 메소드 처리가 가능하도록 설계하는게 특징

	// dao단을 대신할 list
	private List<Member> list = new ArrayList<Member>();
	{
		list.add(new Member(0, "admin", "1234", "홍길동", 27));
		list.add(new Member(1, "test1", "1234", "최길동", 31));
	}

	public List<Member> selectAllMember() {
		System.out.println("selectAllMember Call!");
		return list;
	}

	public Member selectOneMember(Member m) throws IllegalAccessException {
		System.out.println("selectOneMember Call!! member : " + m);
		if (m == null || m.getId() == null || m.getId().length() == 0) {
			System.out.println("selectOneMember 에러 발생!");
			throw new IllegalAccessException("id가 잘못되었습니다.");
		}

		for (Member item : list) {
			if (item.getId().equals(m.getId())) {
				return item;
			}
		}
		return null;
	}

	public int insertMember(Member m) {
		System.out.println("insertMember Call!!");
		list.add(m);
		return 1;
	}

	public int updateMember(Member m) {
		System.out.println("updateMember Call!!");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId().equals(m.getId())) {
				list.set(i, m);
				return 1;
			}
		}
		return 0;
	}

	public int deleteMember(Member m) {
		System.out.println("deleteMember Call!!");
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId().equals(m.getId())) {
				list.remove(i);
				return 1;
			}
		}
		return 0;
	}

}
