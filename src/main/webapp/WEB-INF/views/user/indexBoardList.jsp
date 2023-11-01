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
    <title>BoardList</title>
    <%@ include file="../include/includeCss.jsp" %>
	<%@ include file="../include/includeJs.jsp" %>
</head>
<body>
<%@ include file="../include/includeHeader.jsp" %>
    <div class="container">
        <div class="col">
        	<form name=formList method="post">
             	<table class="table table-hover text-center table-responsive">
               		<thead>
                 		<tr>
	                      	<th scope="col">번호</th>
	 	                    <th class="col-5" scope="col">제목</th>
	     	                <th scope="col">작성자</th>
	         	            <th scope="col">날짜</th>
	         	            <th scope="col">조회수</th>
	             		</tr>
                 	</thead>
                 	<tbody>
<%-- 						<c:set var="listCodeTrCategory" value="${CodeServiceImpl.selectListCachedCode('3')}"/> --%>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
					                <td colspan="6">게시글이 없습니다.</td>
					            </tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="loop">
			                     	<tr>
				                        <th scope="row">${loop.count}</th>
				                        <td class="col-7">
			                        		<a href="boardSelectOne" id="linkContents" class="link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
			                        			${list.title}
				                        	</a>
				                        </td>
				                        <td>${list.author}</td>
				                        <td>${list.like}</td>
				                        <td>${list.modDate}</td>
				                     </tr>
                   				</c:forEach>
          					</c:otherwise>
       					</c:choose>
                	</tbody>
             	</table>
        	</form>
        </div>
        <div class="col d-flex justify-content-center align-items-center mb-3">
           	<form class="col-4 d-flex" role="search">
                <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-dark" type="button"><i class="bi bi-search"></i></button>
            </form>
        </div>
        <div class="col d-flex justify-content-center align-items-center">
       		<button class="btn btn-outline-dark" type="button" onclick="location.href='boardForm'">글쓰기</button>
        </div>
    </div>
<script>
	$("#linkContents").click(function() {
		// 수정 폼으로 데이터 전달
		if (checkedItems.length > 0) {
			var url = "boardSelectOne?seq=" + checkedItems.join(",");
			location.href = url;
		}
	});
</script>
</body>
</html>