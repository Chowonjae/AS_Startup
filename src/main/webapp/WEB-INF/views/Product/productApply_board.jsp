<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<% request.setCharacterEncoding("UTF-8"); %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <c:set var="productMap"  value="${productMap}" /> <!-- 제품리스트 -->
	<c:set var="totProduct"  value="${productMap.totProduct}" /> <!-- 글 갯수 -->
	<c:set var="pageMap"  value="${pageMap}" /> <!-- 로그인된 제조사명 -->
	<c:set var="manufacSearch"  value="${productMap.manufacSearch}" /> <!-- 제조사명 리스트 -->
	<!-- 페이징 -->
	<c:set var="section"  value="${productMap.section}" /> 
	<c:set var="pageNum"  value="${productMap.pageNum}" />
	
		

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품등록 게시판</title>
	<script type="text/javascript">
	
	/* 검색필터 => 제조사이름 리스트 --> 제품그룹 */
	function manufacSelect(manufacName){
	$.ajax({
    type: "POST",
    async: "true",
	url: "${contextPath}/Product/selectManufacturer.do",
	dataType: "json",
	data: {param:manufacName},
	success: function(result){
				$("#productGroup").find("option").remove().end().append("<option value=''>제품</option>");
				$.each(result, function(i){
					$("#productGroup").append("<option value='" + result[i] + "'>" + result[i] + "</option>");
				});
			},
    error: function(jqXHR, textStatus, errorThrown){
	alert("오류가 발생하였습니다.");
			}
    	});
	}
	
	</script>
<style>
	#frmSearchProd{
	float:left;
	}
	a{text-decoration: none; color:black;}
</style>
</head>
<body>

    <div class="container">
<!-- 	제품검색 	-->
    	<form id="frmSearchProd" action="${contextPath }/Product/searchProduct.do" method="get">
	<!-- 	ajax 필터기능 = manufacSelect(this.value)	   -->
    	<select id="manufacName" name="manufacName" onchange="manufacSelect(this.value)">
        <option value="">제조사</option>
        	<c:forEach var="manufacSearch" items="${manufacSearch}">
        		<option value="${manufacSearch}">${manufacSearch}</option>
        	</c:forEach>
	    </select>
	    
	    
	    <select id="productGroup" name="productGroup">
	    	<option value="">제품</option>
	    </select>
	    <input type="text" name="productName">
	    <input type="submit" value="검색">
	    </form>

        <button style="float: right;"><a href="${contextPath }/Product/applyProductView.do?manufacName=${pageMap.manufacName}&pageNum=${pageNum}&section=${section}">제품등록</a></button>
        <table class="table" id="list_view">
            <thead>
                <tr>
                    <th scope="col" style="border-right: 1px solid #eee; width: 45%">제품</th>
                    <th scope="col" style="border-right: 1px solid #eee; width: 20%">분류</th>
                    <th scope="col" style="border-right: 1px solid #eee; width: 20%">제조사</th>
                    <th scope="col" style="border-right: 1px solid #eee; width: 10%">승인</th>
                </tr>
            </thead>
            <tbody>
            <!-- 제품리스트 -->
            <c:choose>
            <c:when test="${totProduct==0}">
            <tr>
                    <td scope="row">
	                    <p align="center">
	                    	<b>등록된 제품이 없습니다.</b>
	                    </p>
                    </td>
                    
            </tr> 
            </c:when>
            <c:when test="${productMap != null }">
            
            
	            <c:forEach var="productMap" items="${productMap.productList}">
	                <tr>
	                    <th scope="row"><a href="${contextPath }/Product/ProductDetail.do?productNo=${productMap.productNo}&pageNum=${pageNum}&section=${section}">
	                    ${productMap.productName }</a></th>
	                    <td>${productMap.productGroup}</td>
	                    <td>${productMap.manufacName}</td>
	                    <c:choose>
		                    <c:when test="${productMap.approvalStatus == 1}">
		                    	<td>승인</td>
		                    </c:when>
		                    <c:when test="${productMap.approvalStatus == 2}">
		                    	<td>승인불가</td>
		                    </c:when>
		                    <c:when test="${productMap.approvalStatus == 3}">
	                    		<td>승인대기</td>
	                    	</c:when>
	                    </c:choose>
	                </tr>
				</c:forEach>	
			</c:when>
			</c:choose>
			 <!-- 제품리스트 -->
            </tbody>
        </table>

		<!-- 페이징 페이지 = 10개, 1페이지 = 10개글 -->
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
            <c:if test="${totProduct != null }">
            <c:choose>
            	
            	<c:when test="${totProduct > 100}">
		            <c:forEach var="page" begin="1" end="10" step="1">
		            	<c:if test="${section > 1 && page==1}">
			                <li class="page-item disabled">
			                    <a class="page-link" href="${contextPath }/Product/listProduct.do?section=${section-1}&pageNum=${(section-1)}*10+1" tabindex="-1" aria-disabled="true">Previous</a>
			                </li>
			            </c:if>
			                <li class="page-item"><a class="page-link" href="${contextPath}/Product/listProduct.do?section=${section}&pageNum=${page}">${(section-1)*10 +page }</a></li>
			            <c:if test="${page == 10}">
			                <li class="page-item">
			                    <a class="page-link" href="${contextPath}/Product/listProduct.do?section=${section}&pageNum=${section*10+1}">Next</a>
			                </li>
			            </c:if>
		            </c:forEach>
                </c:when>
                <c:when test="${totProduct == 100}">
                	<c:forEach var="page" begin="1" end="10" step="1">
                		<li class="page-item"><a class="page-link" href="${contextPath}/Product/listProduct.do?section=${section}&pageNum=${page}">${(totArticles/10)*10+page}</a></li>
                	</c:forEach>
                </c:when>
                
                <c:when test="${totProduct < 100}">
                	<c:forEach var="page" begin="1" end="${totProduct/10+1}" step="1">
                		<c:choose>
	                		<c:when test="${page==pageNum }">
	                			<li id="selectPage" class="page-item"><a class="page-link" href="${contextPath}/Product/listProduct.do?section=${section}&pageNum=${page}">${page }</a></li>
	                		</c:when>
                			<c:otherwise>
                				<li class="page-item"><a class="page-link" href="${contextPath}/Product/listProduct.do?section=${section}&pageNum=${page}">${page }</a></li>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                </c:when>
             </c:choose>
             </c:if>
            </ul>
        </nav>

    </div>

</body>
</html>