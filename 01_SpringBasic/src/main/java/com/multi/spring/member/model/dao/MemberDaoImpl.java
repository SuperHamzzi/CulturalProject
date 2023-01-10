package com.multi.spring.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.multi.spring.member.model.vo.Member;


// @Repository : 실제 동작하는 Dao를 알리는 어노테이션, Spring에서 Bean으로 자동으로 생성해준다.
@Repository
public class MemberDaoImpl implements MemberDao{

	private List<Member> list = new ArrayList<Member>();
	
	@Override
	public int insertMember(Member member) {
		if(member.getId() == null || member.getId().length() == 0) {
			return 0;
		}
		list.add(member);
		return 1;
	}

	@Override
	public List<Member> selectAll() {
		return list;
	}

	@Override
	public Member selectById(String id) {
		for(Member m : list) {
			if(m.getId().equals(id)) {
				return m;
			}
		}
		return null;
	}
}
