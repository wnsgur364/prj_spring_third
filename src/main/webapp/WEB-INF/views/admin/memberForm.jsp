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
    <title>MemberForm</title>
    <%@ include file="../include/includeCss.jsp" %>
	<%@ include file="../include/includeJs.jsp" %>
</head>
<body>
<%@ include file="../include/includeHeaderAdmin.jsp" %>
    <div class="container">
		<form class="needs-validation" id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data" novalidate>
			<!-- 프로필 이미지 업로드시 -->
			<div class="col-md-4 text-center">
	      		<c:set var="type" value="1"/>		<!-- #-> -->
	        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
				<c:choose>
					<c:when test="${seq eq 0 }">
						<img id="<c:out value="${name }"/>Preview" src="/resources/images/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${fn:length(listUploaded) eq 0 }">
								<img id="<c:out value="${name }"/>Preview" src="/resources/images/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
							</c:when>
							<c:otherwise>
								<c:set var="GetNy" value="0"/>
								<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
									<c:if test="${listUploaded.type eq type }">
							        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" value="<c:out value="${listUploaded.seq }"/>"/>
							        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"/>  
										<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
										<c:set var="GetNy" value="1"/>		
									</c:if>
								</c:forEach>
								<c:if test="${GetNy eq 0 }">
									<img id="<c:out value="${name }"/>Preview" src="/resources/images/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
				<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
				<label for="<c:out value="${name }"/>" class="form-label input-file-button"><b>+</b></label>
	 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
	        </div>
	        
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
			<!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        <!-- 입력 폼 내용 입력해야함. -->
	        
	        
	        
	        
	        
	        
	        <div class="col-md-4 py-2">
	        	<c:set var="type" value="2"/>
	        	<c:set var="name" value="uploadImg"/>
	        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
	        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
	        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
	        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
	            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
	 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
				<div id="<c:out value="${name }"/>Preview" class="addScroll" style="background: #FFFFFF33; height: 20vh;">
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq type }">
							<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
								<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
								<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
							</div>
						</c:if>
					</c:forEach>
				</div>
	        </div>
	        <div class="col-md-4 py-2">
	        	<c:set var="type" value="3"/>
	        	<c:set var="name" value="uploadFile"/>
	        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
	        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
	        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
	        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>   	
				<label for="uploadFile" class="form-label input-file-button">파일첨부</label>
				<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);" >
				<div class="addScroll" style="background: #FFFFFF33; height: 20vh;">
					<ul id="<c:out value="${name }"/>Preview" class="list-group">
						<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							<c:if test="${listUploaded.type eq type }">
								<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center">
								<a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }"/></a>
								<span class="badge bg-danger rounded-pill" onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>
								</li>
							</c:if>
						</c:forEach>				
					</ul>
				</div>
	        </div>
		</form>
    </div>
</body>
</html>