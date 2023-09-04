<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="KO">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MemberList</title>
    <%@ include file="../include/includeCss.jsp" %>
	<%@ include file="../include/includeJs.jsp" %>
</head>
<body>
<%@ include file="../include/includeHeaderAdmin.jsp" %>
    <div class="container">
        <div class="col">
        	<form name=formList method="post">
        		<div class="d-flex py-3">
					<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<div class="col-4 d-flex">
	   					<select id="shOption" class="form-select" name="shOption">
			                <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
			                <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>아이디</option>
			                <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>이름</option>
			                <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>이메일</option>
			                <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>전화번호</option>
			                <option value="5" <c:if test="${vo.shOption eq 5}">selected</c:if>>성별</option>
			                <option value="6" <c:if test="${vo.shOption eq 6}">selected</c:if>>회원등급</option>
	   					</select>
		                <input class="form-control" type="text" placeholder="검색어" aria-label="Search" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
		                <button class="btn btn-outline-dark" id="btnSearch" type="button"><i class="bi bi-search"></i></button>
					</div>
				</div>
             	<table class="table table-hover text-center table-responsive">
                 	<thead>
	                 	<tr>
	                 		<th>
	                 			<input type="checkbox" name="checked" id="allCheck" value="">
	                 		</th>
	                      	<th>번호</th>
	 	                    <th>회원등급</th>
	     	                <th>아이디</th>
	         	            <th>이름</th>
	         	            <th>생일</th>
							<th>성별</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>우편번호</th>
							<th>주소</th>
							<th>등록일자</th>
							<th>수정일자</th>
	             		</tr>
	                 </thead>
	                 <tbody>
	                 	<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td>데이터가 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" >
									<tr>
									    <th>
									    	<input type="checkbox" name="checked" value="">
									    </th>
									    <td><c:out value="${list.seq}"></c:out></td>
									    <td><c:out value="${list.defaultNy}"></c:out></td>
									    <td><c:out value="${list.id}"></c:out></td>
									    <td><c:out value="${list.name}"></c:out></td>
									    <td><c:out value="${list.dob}"></c:out></td>
									    <td><c:out value="${list.gender}"></c:out></td>
									    <td><c:out value="${list.email}"></c:out></td>
									    <td><c:out value="${list.phone}"></c:out></td>
									    <td><c:out value="${list.zipcode}"></c:out></td>
									    <td><c:out value="${list.address}"></c:out></td>
									    <td><c:out value="${list.regDate}"></c:out></td>
									    <td><c:out value="${list.updtDate}"></c:out></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>	
	                 </tbody>
             	</table>
             	<br>
       				<%@ include file="../include/pagination.jsp" %> 
       			<br>
        	</form>
        </div>
        <div class="col d-flex justify-content-center align-items-center">
       		<button class="btn btn-outline-dark" type="button" onclick="location.href='memberForm'">추가</button>
        	<button class="btn btn-outline-dark" id="btnModification" type="button" >수정</button>
			<button class="btn btn-outline-dark" id="btnExcel" type="button">엑셀변환</button>
        </div>
    </div>
<script>
	// 서치버튼 클릭이벤트
	$("#btnSearch").on("click", function(){
		$("form[name=formList]").attr("action","/memberList").submit();
	});
	
	$("#btnModification").click(function() {
		// 체크된 체크박스를 배열로 저장
		var checkedItems = [];
		$("input[name='checked']:checked").each(function() {
			checkedItems.push($(this).closest("tr").find("td:eq(1)").text()); // seq 값 가져오기
		});
	
		// 수정 폼으로 데이터 전달
		if (checkedItems.length > 0) {
			var url = "codeForm?seq=" + checkedItems.join(",");
			location.href = url;
		}
		
	    // 체크박스 해제
	    $("input[name='checked']").prop('checked', false);
	});
	
	// 체크박스 올 체크
	$(document).ready(function() {
		$('#allCheck').click(function() {
		    $('input[name="checked"]').prop('checked', this.checked);
	  	});
	
	  	$('input[name="checked"]').click(function() {
	    	if (!$(this).is(':checked')) {
			  		$('#allCheck').prop('checked', false);
	    	}
	  	});
	});
			
	// 페이지네이션
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "codeList").submit();
	}
	
	// 엑셀 변환
	$("#btnExcel").click(function() {
		$("form[name=formList]").attr("action", "/excelDownload").submit();
	});
</script>
</body>
</html>