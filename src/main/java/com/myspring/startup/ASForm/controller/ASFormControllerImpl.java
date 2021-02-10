package com.myspring.startup.ASForm.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.startup.ASForm.service.ASFormService;
import com.myspring.startup.ASForm.vo.ASFormVO;
import com.myspring.startup.member.vo.MemberVO;

@Controller("asformController")
@RequestMapping("/ASForm/*")
public class ASFormControllerImpl implements ASFormController{
private static final String IMAGE_REPO = "C:\\board\\image";
	@Autowired
	private ASFormService asformService;
	@Autowired
	private ASFormVO asformVO;

	//AS신청서 출력
	@Override
	@RequestMapping(value="/ASForm.do", method= RequestMethod.GET)
	public ModelAndView ASForm(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/ASForm/ASForm");
		return mav;
	}
	
	//신청서 접수 버튼 누른뒤 작업
		@Override
		@RequestMapping(value="/addForm.do", method=RequestMethod.POST)
		@ResponseBody
		public ResponseEntity addASList(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
			multipartRequest.setCharacterEncoding("utf-8");
			Map<String, Object> asformMap = new HashMap<String, Object>();
			Enumeration enu = multipartRequest.getParameterNames();
			while(enu.hasMoreElements()) {
				String name=(String)enu.nextElement();
				String value=multipartRequest.getParameter(name);
				asformMap.put(name, value);
			}
			
			String imageFileName = upload(multipartRequest);
			HttpSession session = multipartRequest.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("member");
			String id = memberVO.getCuId();
			asformMap.put("CuId", id);
			asformMap.put("imageFileName", imageFileName);
			
			System.out.println("여기로 오냐");
			String message = null;
			ResponseEntity resEntity = null;
			HttpHeaders resHeaders = new HttpHeaders();
			resHeaders.add("Content-Type", "text/html; charset=utf-8");
			try {
				asformService.addAsForm(asformVO);
				if(imageFileName!=null && imageFileName.length() != 0) {
					File srcFile = new File(IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(IMAGE_REPO + "\\" + id);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
				message = "<script>";
				message += "alert('AS신청서 접수가 완료 되었습니다.');";
				message += " location.href='"+multipartRequest.getContextPath()+"/ASForm/ASForm.do';";
				message += " </script>";
			}catch(Exception e) {
				message = "<script>";
				message += "alert('접수 중 오류가 발생했습니다. 다시 시도해 주세요.');";
				message += " location.href='"+multipartRequest.getContextPath()+"/ASForm/ASForm.do';";
				message += " </script>";
				e.printStackTrace();
			}
			resEntity = new ResponseEntity<String>(message, resHeaders, HttpStatus.OK);
			return resEntity;
		}

	private String upload(MultipartHttpServletRequest multipartRequest) throws IllegalStateException, IOException {
		String imageFileName = null;
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			imageFileName = mFile.getOriginalFilename();
			File file = new File(IMAGE_REPO + "\\" + fileName);
			if(mFile.getSize() != 0) {
				if(! file.exists()) {
					if(file.getParentFile().mkdirs()) {
						file.createNewFile();
					}
				}
				mFile.transferTo(new File(IMAGE_REPO + "\\" + "temp" + "\\" + imageFileName));
			}
		}
		return imageFileName;
	}
}