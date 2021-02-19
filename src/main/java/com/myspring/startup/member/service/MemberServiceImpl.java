package com.myspring.startup.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.startup.member.dao.MemberDAO;
import com.myspring.startup.member.vo.MemberVO;
//11
@Service("memberService")
@Transactional(propagation=Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO login(MemberVO memberVO) throws Exception{
		return memberDAO.loginById(memberVO);
	}

	@Override
	public int addMember(Map<String, Object> memberJoinMap) throws Exception {
		return memberDAO.insertNewMember(memberJoinMap);
		
	}
	
	public void addManufac(Map<String, Object> memberJoinMap) throws Exception{
		memberDAO.insertNewMember(memberJoinMap);
		int RecentManufacNo = memberDAO.RecentManufacNo();
		int RecentManufacApply = memberDAO.RecentManufacApply();
		
		memberJoinMap.put("manufacNo", RecentManufacNo+1);
		memberJoinMap.put("approvalNum", RecentManufacApply+1);
		
		memberDAO.applyManufac(memberJoinMap);
	}
}
