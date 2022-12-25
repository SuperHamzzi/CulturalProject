package com.team2.mvc.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.team2.mvc.entity.Member;

@Mapper //- Mybatis API
public interface MemberMapper {	 
	public Member registerCheck(String ID); 
	public int register(Member m); //회원등록( 성공1, 실패0 )
	public Member memLogin(Member mvo); // 로그인체크
	public int memUpdate(Member mvo); // 수정하기
	public Member getMember(String ID);
}
