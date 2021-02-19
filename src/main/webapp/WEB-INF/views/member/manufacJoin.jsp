<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <!-- css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    <!-- JavaScript -->
    <!--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="../resources/js/join.js"></script>
</head>

<body>
    <header>
        <!-- 헤더를 쓰는 곳 -->
    </header>
    <main>
        <div class="container">
           <div class="form">
            <form class="form-horizontal" role="form" method="post" onsubmit="return validate();" action="${contextPath}/member/addMember.do">
                <div class="form-group">
                    <h4><label for="provision" class="col-lg-2 control-label">회원가입약관</label></h4>
                    <input type="hidden" name="uno" id="uno" value="3"/>
                    <div class="col-lg-10" id="provision">
                    
                        <textarea class="form-control" rows="8" style="resize:none">제 1조 (목적)
    본 약관은 스타트업 AS(이하 "수리점"이라 합니다)에서 운영하는 인터넷 홈페이지ㄹ에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)의 이용에 관한 사항을 규정함을 목적으로 합니다.

제 2조(정의)
    1. 제조사(회원) : 인터넷 홈페이지에 로그인 하여 본 약관에 따라 서비스를 제공하는자를 말합니다.
    2. 운영자           : 서비스의 전반적인 관리와 원활한 운영을 위하여 수리점에서 선정한 사람
    3. 개인정보        : 당해 정보에 포함되어 있는 개인의 정보등의 사항에 의하여 특정 개인을 식별 할 수 있는 정보를 말합니다.
    4. 해지                : 이용자가 서비스 개통 후 이용계약을 해약하는 것
                      제 3 조 (약관의 효력 및 변경)
① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.
② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.
                       제 2 장 서비스 이용계약

 

제 4 조 (이용계약의 성립)
① 이용약관 하단의 동의 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.
② 이용계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 사이트가 승낙함으로써 성립합니다.

 

제 5 조 (이용신청)
① 신청자가 본 서비스를 이용하기 위해서는 사이트 소정의 가입신청 양식에서 요구하는 이용자 정보를 기록하여 제출해야 합니다.
② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한을 받을 수 있습니다.

 

제 6 조 (이용신청의 승낙)
① 사이트는 신청자에 대하여 제2항, 제3항의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.
② 사이트는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
가. 서비스 관련 설비에 여유가 없는 경우
나. 기술상 지장이 있는 경우
다. 기타 사이트가 필요하다고 인정되는 경우
③ 사이트는 신청자가 다음에 해당하는 경우에는 승낙을 거부할 수 있습니다.
가. 다른 개인(사이트)의 명의를 사용하여 신청한 경우
나. 이용자 정보를 허위로 기재하여 신청한 경우
다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
라. 기타 사이트 소정의 이용신청요건을 충족하지 못하는 경우

 

제 7 조 (이용자정보의 변경)
회원은 이용 신청시에 기재했던 회원정보가 변경되었을 경우에는, 온라인으로 수정하여야 하며 변경하지 않음으로 인하여 발생되는 모든 문제의 책임은 회원에게 있습니다.

 

제 3 장 계약 당사자의 의무

 

제 8 조 (사이트의 의무)
① 사이트는 회원에게 각 호의 서비스를 제공합니다.
가. 신규서비스와 도메인 정보에 대한 뉴스레터 발송
나. 추가 도메인 등록시 개인정보 자동 입력
다. 도메인 등록, 관리를 위한 각종 부가서비스
② 사이트는 서비스 제공과 관련하여 취득한 회원의 개인정보를 회원의 동의없이 타인에게 누설, 공개 또는 배포할 수 없으며, 서비스관련 업무 이외의 상업적 목적으로 사용할 수 없습니다. 단, 다음 각 호의 1에 해당하는 경우는 예외입니다.
가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우
다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
③ 사이트는 이 약관에서 정한 바에 따라 지속적, 안정적으로 서비스를 제공할 의무가 있습니다.

 

제 9 조 (회원의 의무)
① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.
가. 다른 회원의 ID를 부정하게 사용하는 행위
나. 서비스에서 얻은 정보를 사이트의 사전승낙 없이 회원의 이용 이외의 목적으로 복제하거나 이를 변경, 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위
다. 사이트의 저작권, 타인의 저작권 등 기타 권리를 침해하는 행위
라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위
마. 범죄와 결부된다고 객관적으로 판단되는 행위
바. 기타 관계법령에 위배되는 행위
② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수하여야 합니다.
③ 회원은 내용별로 사이트가 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.

 

제 4 장 서비스 제공 및 이용

 

제 10 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)
① 아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은 회원에게 있습니다.
② 자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 사이트에 그 사실을 통보해야 합니다.

 

제 11 조 (서비스 제한 및 정지)
① 사이트는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신 사업자가 전기통신서비스를 중지하는 등 기타 불가항력적 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.
② 사이트는 제1항의 규정에 의하여 서비스의 이용을 제한하거나 정지할 때에는 그 사유 및 제한기간 등을 지체없이 회원에게 알려야 합니다.

 

제5장 계약사항의 변경, 해지

 

제 12 조 (정보의 변경)
회원이 주소, 비밀번호 등 고객정보를 변경하고자 하는 경우에는 홈페이지의 회원정보 변경 서비스를 이용하여 변경할 수 있습니다.

 

제 13 조 (계약사항의 해지)
회원은 서비스 이용계약을 해지할 수 있으며, 해지할 경우에는 본인이 직접 서비스를 통하거나 전화 또는 온라인 등으로 사이트에 해지신청을 하여야 합니다. 사이트는 해지신청이 접수된 당일부터 해당 회원의 서비스 이용을 제한합니다. 사이트는 회원이 다음 각 항의 1에 해당하여 이용계약을 해지하고자 할 경우에는 해지조치 7일전까지 그 뜻을 이용고객에게 통지하여 소명할 기회를 주어야 합니다.
① 이용고객이 이용제한 규정을 위반하거나 그 이용제한 기간 내에 제한 사유를 해소하지 않는 경우
② 정보통신윤리위원회가 이용해지를 요구한 경우
③ 이용고객이 정당한 사유 없이 의견진술에 응하지 아니한 경우
④ 타인 명의로 신청을 하였거나 신청서 내용의 허위 기재 또는 허위서류를 첨부하여 이용계약을 체결한 경우
사이트는 상기 규정에 의하여 해지된 이용고객에 대해서는 별도로 정한 기간동안 가입을 제한할 수 있습니다.

 

제6장 손해배상

 

제 14 조 (면책조항)
① 사이트는 회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
② 사이트는 회원의 귀책사유나 제3자의 고의로 인하여 서비스에 장애가 발생하거나 회원의 데이터가 훼손된 경우에 책임이 면제됩니다.
③ 사이트는 회원이 게시 또는 전송한 자료의 내용에 대해서는 책임이 면제됩니다.
④ 상표권이 있는 도메인의 경우, 이로 인해 발생할 수도 있는 손해나 배상에 대한 책임은 구매한 회원 당사자에게 있으며, 사이트는 이에 대한 일체의 책임을 지지 않습니다.

 

제 15 조 (관할법원)

 

서비스와 관련하여 사이트와 회원간에 분쟁이 발생할 경우 사이트의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn agree" name="provisionYn" autofocus="autofocus">
                                회원가입 약관에 동의합니다.
                            </label>
                        </div>
                    </div>
                </div>
                <br />
                <div class="form-group">
                    <h4><label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label></h4>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">
제1조 (개인정보의 처리 목적)
① 개인정보보호위원회는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
가. 서비스 제공
교육 콘텐츠 제공, 본인인증, 증명서발급(교육 수료증) 등 서비스 제공에 관련한 목적으로 개인정보를 처리합니다.
협박 사례를 적극 신고하시기 바랍니다.

나. 민원처리
개인정보 열람, 개인정보 정정·삭제, 개인정보 처리정지 요구, 개인정보 유출사고 신고 등 개인정보와 관련된 민원처리를 목적으로 개인정보를 처리합니다.

② 개인정보보호위원회가 개인정보 보호법 제32조에 따라 등록·공개하는 개인정보파일의 처리목적은 다음과 같습니다.
순번	개인정보파일의 명칭	운영근거	처리목적
1	교육서비스 제공 사용자 정보	정보주체 동의	개인정보보호 온라인교육에 대한 본인인증, 교육이력관리, 교육수료증 발급
2	개인정보 열람등요구 처리 사용자 정보	개인정보보호법 제35조-제39조	개인정보 열람등요구 처리 행정업무의 참고 또는 사실 증명
3	유출사고 신고 처리 사용자 정보	개인정보보호법 제34조
신용정보의 이용 및 보호에 관한 법률 제39조	유출사고 신고 처리 행정업무의 참고 또는 사실 증명
4	개인정보보호 전문강사 명단	정보주체 동의	개인정보보호 교육지원(강사풀 제공)
                       제2조 (개인정보의 처리 및 보유 기간)
① 개인정보보호위원회는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.
② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
순번	개인정보파일의 명칭	운영근거	보유기간
(목적 달성시)
1	교육서비스 제공 사용자 정보	정보주체 동의	2년
2	개인정보 열람등요구 처리 사용자 정보	개인정보보호법 제35조-제39조	3년
3	유출사고 신고 처리 사용자 정보	개인정보보호법 제34조
신용정보의 이용 및 보호에 관한 법률 제39조	3년
4	개인정보보호 전문강사 명단	정보주체 동의	3년
제3조 (개인정보의 제3자 제공)
① 개인정보보호위원회는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
② 개인정보보호위원회는 민원 신청인이 공공기관에 대하여 신청한 개인정보 열람, 정정·삭제, 처리정지민원을 처리하기 위하여 민원 신청인의 개인정보를 개인정보파일 보유기관에게 이송(제공)하고 있으며, (민원사무 처리에 관한 법률)에서 정하는 기간 동안 해당 기관에서 보유 및 이용합니다.
- 이송(제공)하는 개인정보 항목 : 신청인 성명, 생년월일, 전화번호, 주소
                       제7조 (개인정보 파기 절차 및 방법)
① 개인정보보호위원회는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
가. 파기절차
불필요한 개인정보 및 개인정보파일은 개인정보책임자의 책임 하에 내부방침 절차에 따라 다음과 같이 처리하고 있습니다.
- 개인정보의 파기
보유기간이 경과한 개인정보는 종료일로부터 지체 없이 파기합니다.
- 개인정보파일의 파기
개인정보파일의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보파일이 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 지체 없이 그 개인정보파일을 파기합니다.
나. 파기방법
1) 전자적 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
2) 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
                       제9조 (개인정보의 안전성 확보 조치)
개인정보보호위원회는 「개인정보보호법」 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

1. 내부관리계획의 수립 및 시행
개인정보보호위원회의 내부관리계획 수립 및 시행은 개인정보보호위원회의 내부관리 지침을 준수하여 시행합니다.

2. 개인정보 취급 담당자의 최소화 및 교육
개인정보를 취급하는 담당자를 지정하고 최소화하여 개인정보를 관리하는 대책을 시행하고 있습니다.

3. 개인정보에 대한 접근 제한
개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.

4. 접속기록의 보관 및 위변조 방지
개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.

5. 개인정보의 암호화
이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.

6. 해킹 등에 대비한 기술적 대책
개인정보보호위원회는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다. 또한 네트워크 트래픽의 통제(Monitoring)는 물론 불법적으로 정보를 변경하는 등의 시도를 탐지하고 있습니다.

7. 비인가자에 대한 출입 통제
개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

제10조 (권익침해 구제방법)
정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의하실 수 있습니다. (아래의 기관은 개인정보보호 포털과는 별개의 기관으로서, 개인정보보호 포털의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다)

▶ 개인정보 침해신고센터 (한국인터넷진흥원 운영)
- 소관업무 : 개인정보 침해사실 신고, 상담 신청
- 홈페이지 : privacy.kisa.or.kr
- 전화 : (국번없이) 118
- 주소 : 전라남도 나주시 진흥길 9 한국인터넷진흥원
▶ 개인정보 분쟁조정위원회
- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
- 홈페이지 : www.kopico.go.kr
- 전화 : 1833-6972
- 주소 : 서울특별시 종로구 세종대로 209 정부서울청사 12층
▶ 대검찰청 사이버범죄수사단 :
- (국번없이) 1301, privacy@spo.go.kr (www.spo.go.kr)
▶ 경찰청 사이버안전국
- (국번없이) 182 (cyberbureau.police.go.kr)
또한, 개인정보의 열람, 정정·삭제, 처리정지 등에 대한 정보주체자의 요구에 대하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익을 침해 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.

☞ 중앙행정심판위원회(www.simpan.go.kr)의 전화번호 안내 참조
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn">
                                	개인정보 취급 방침에 동의합니다.
                            </label>
                        </div>
                        </div></div>
                        <br />
                        <div class="form-group">
                        <div class="form-group" id="divId">
                            <label for="inputId" class="col-lg-2 control-label">아이디*</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control onlyAlphabetAndNumber" id="cuId"  name="cuId" data-rule-required="true" placeholder="아이디를 입력하세요." maxlength="30">
                            </div>
                        </div>
                        <div class="form-group" id="divPassword">
                            <label for="inputPassword" class="col-lg-2 control-label">비밀번호*</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="password" name="pw" data-rule-required="true" placeholder="8~16이하의 영문 대 소문자, 숫자만 입력 가능합니다." maxlength="16">
                            </div>
                        </div>
                       	<div class="form-group" id="divPasswordCheck">
                            <label for="inputPasswordCheck" class="col-lg-2 control-label">비밀번호 확인*</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="pw_re" data-rule-required="true" placeholder="8~16이하의 영문 대 소문자, 숫자만 입력 가능합니다." maxlength="16">
                        </div>
                        <div class="form-group" id="divName">
                            <label for="inputName" class="col-lg-2 control-label">제조사명*</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control onlyHangul" id="name" name="manufacName" data-rule-required="true" placeholder="제조사명" maxlength="15">
                            </div>
                        </div>

                        <div class="form-group" id="divNickname">
								<label for="addr" class="col-lg-2 control-label">주소</label>
								<div class="col-lg-12">
									<input type="text" class="col-lg-4" id="postCode"
										style="padding: 5px; border-radius: 5px;" name="postCode"
										data-rule-required="true" placeholder="우편주소" maxlength="30"
										disabled> <input type="button"
										class="col-lg-2 btn btn-primary"
										onclick="sample5_execDaumPostcode()" value="주소 검색"> 
										<input type="text" class="form-control" id="addr1" name="addr1"
										data-rule-required="true" placeholder="주소" maxlength="30"
										readonly> 
										<input type="text" class="form-control"
										id="addr2" name="addr2" data-rule-required="true"
										placeholder="상세 주소" maxlength="30"> <br>
								</div>
							</div>
                        
                        <div class="form-group" id="divName">
                            <label for="inputName" class="col-lg-2 control-label">담당자*</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control onlyHangul" id="officer" name="officer" data-rule-required="true" placeholder="담당자 이름을 입력해주세요." maxlength="15">
                            </div>
                        </div>
                        
                        <div class="form-group" id="divName">
                            <label for="inputName" class="col-lg-2 control-label">전화번호*</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control onlyHangul" id="phone" name="tel" data-rule-required="true" placeholder="'-'빼고 입력해주세요." maxlength="11">
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-primary form-control" >회원가입</button>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </main>
    <footer>
        <!-- 푸터를 사용하는 곳 -->
    </footer>
</body></html>
