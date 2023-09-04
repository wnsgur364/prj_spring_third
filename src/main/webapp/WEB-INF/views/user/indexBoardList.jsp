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
        	<form>
             	<table class="table table-hover text-center">
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
	                     <tr>
	                         <th scope="row">1</th>
	                         <td class="col-7">
	                         	<a href="boardSelectOne" class="link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">
	                         		취업 시켜주세요.
	                         	</a>
	                         </td>
	                         <td>이준혁</td>
	                         <td>2023.08.31</td>
	                         <td>3,125,522,014</td>
	                     </tr>
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
</body>
</html>