package com.multi.mybatis.member.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.mybatis.member.model.dao.MemberDao;
import com.multi.mybatis.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Qualifier("memberDao") // 없어도 되는 문장
	private MemberDao dao;
	
	// root-context.xml에서 정의한 Bean(콩)
	@Autowired
	@Qualifier("sqlSession")
	private SqlSessionTemplate session;
	
	
	@Override
	public int joinMember(Member member) {
		return dao.insertMember(session, member);
	}

	@Override
	public Member searchMember(String id) {
		return dao.selectMemberById(session, id);
	}

	@Override
	public List<Member> getMemberList() {
		return dao.selectMemberAll(session);
	}

	@Override
	public int deleteMember(String id) {
		return dao.deleteMember(session, id);
	}

}
