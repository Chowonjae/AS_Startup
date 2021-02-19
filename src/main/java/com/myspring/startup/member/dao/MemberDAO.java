package com.myspring.startup.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.startup.member.vo.MemberVO;
//11
public interface MemberDAO {
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	public int insertNewMember(Map<String, Object> memberJoinMap) throws DataAccessException;
	public int RecentManufacNo() throws DataAccessException;
	public int RecentManufacApply() throws DataAccessException;
	public void applyManufac(Map<String, Object> memberJoinMap) throws DataAccessException;
	
}
