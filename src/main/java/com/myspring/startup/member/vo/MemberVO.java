package com.myspring.startup.member.vo;

import org.springframework.stereotype.Component;
//11
@Component("memberVO")
public class MemberVO {
	private String cuId;
	private String pw;
	private int uNo;
	private String name;
	private String email;
	private String addr;
	
	private String officer;
	private String tel;
	private int manufacNo;
	private int approvalNum;
	
	
	
	public int getManufacNo() {
		return manufacNo;
	}
	public void setManufacNo(int manufacNo) {
		this.manufacNo = manufacNo;
	}
	public int getApprovalNum() {
		return approvalNum;
	}
	public void setApprovalNum(int approvalNum) {
		this.approvalNum = approvalNum;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getOfficer() {
		return officer;
	}
	public void setOfficer(String officer) {
		this.officer = officer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCuId() {
		return cuId;
	}
	public void setCuId(String cuId) {
		this.cuId = cuId;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
}
