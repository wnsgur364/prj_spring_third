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
    <title>BoardSelectOne</title>
    <%@ include file="../include/includeCss.jsp" %>
	<%@ include file="../include/includeJs.jsp" %>
</head>
<body>
<%@ include file="../include/includeHeader.jsp" %>
    <div class="container">
	    <div class="col">
	    	<h1 class="text-center">게시글 제목</h1>
	    	<div class="text-end">
	    		<span>작성자 : 이준혁</span><br>
	    		<span>작성일 : 2023.08.31</span>
	    	</div>
	    	<div class="col d-flex justify-content-center mt-5 mb-5">
		    	<div class="col-10">
		    		본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 내용 본문 내용 본문 내용 본문 내용 본문 내용 본문 내용 
		    	</div>
	    	</div>
	    	<hr>
	    	<div class="col d-flex justify-content-center mt-5 mb-5">
		    	<div class="col-6">
				  	<input class="form-control" placeholder="댓글을 입력해주세요."></input>
				</div>
				<div class="col-1">
					<button class="btn btn-outline-dark" type="button">등록</button>
				</div>
			</div>	
			<div class="col text-center">
				댓글내용 공간
			</div>
			<hr>
	    	<div class="col d-flex justify-content-center align-items-center mt-5">
	    		<button class="btn btn-outline-dark" type="button" onclick="goBack()">뒤로</button>
	    		<button class="btn btn-outline-dark" type="button" onclick="location.href='boardList'">목록</button>
	    	</div>
	    </div>
    </div>
</body>
</html>