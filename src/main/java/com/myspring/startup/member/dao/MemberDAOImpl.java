package com.myspring.startup.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.startup.member.vo.MemberVO;
//11
@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return vo;
	}
	
	@Override
	public int insertNewMember(Map<String, Object> memberJoinMap) throws DataAccessException {
		return sqlSession.insert("mapper.member.insertNewMember", memberJoinMap);	//asformVO의 값을 해당 값의 테이블에 추가
	}
	
	@Override
	public int RecentManufacNo() {
		int RecentManufacNo = sqlSession.selectOne("mapper.member.RecentManufacNo");
		return RecentManufacNo;
	}
	
	@Override
	public int RecentManufacApply() {
		int RecentManufacApply = sqlSession.selectOne("mapper.member.RecentManufacApply");
		return RecentManufacApply;
	}
	
	@Override
	public void applyManufac(Map<String, Object> memberJoinMap) throws DataAccessException{
		sqlSession.insert("mapper.member.insertManufacturer", memberJoinMap);
		sqlSession.insert("mapper.member.insertManufacApply", memberJoinMap);
	}
}
