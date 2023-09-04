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
			<div class="col text-center">
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
	        <div class="text-center"> 
	        <!-- 입력창 시작 -->
<!-- 		    <div class="form-floating py-4"> -->
<%-- 		        <input type="text" class="form-control" id="seq" name="seq" required readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''}> --%>
<!-- 		    	<label for="seq">Seq (Auto Increment)</label> -->
<!-- 		    	<div class="invalid-feedback"></div> -->
<!-- 		    </div> -->
<!-- 	        <div class="form-floating py-4"> -->
<!-- 	        	<label for="id">아이디</label> -->
<%-- 	            <input type="text" class="form-control" id="id" name="id" required readonly value="<c:out value="${item.id}"/>"> --%>
<!-- 	        </div> -->
<!-- 	        <div class="form-floating py-4"> -->
<!-- 	        	<label for="pw">비밀번호</label> -->
<%-- 	            <input type="password" class="form-control" id="pw" name="pw" required value="<c:out value="${item.pw}"/>"> --%>
<!-- 	        	<div class="isvalid-feedback"></div> -->
<!-- 	        </div> -->
	         	<div class="form-floating col-6 mb-3">
				  	<input type="password" class="form-control" id="floatingInput" name="pw">
				  	<label for="floatingInput">테스트용</label>
				  	<div class="invalid-feedback"></div>
				</div>
				<div class="form-floating mb-3">
				  <input type="text" class="form-control" id="name" name="name" placeholder="">
				  <label for="name">이름을 입력하세요.</label>
				  <div class="invalid-feedback"></div>
				</div>
<!-- 	        <div class="form-floating py-4"> -->
<!-- 	        	<label for="name">이름</label> -->
<%-- 	            <input type="text" class="form-control" id="name" name="name" required value="<c:out value="${item.name}"/>"> --%>
<!-- 	            <div class="invalid-feedback"></div> -->
<!-- 	        </div> -->
<!-- 		    <div class="form-floating"> -->
<!-- 		        <label for="gender">성별</label> -->
<!-- 		        <select id="gender" class="form-control" name="gender"> -->
<%-- 		            <option value="0" <c:if test="${item.gender == 0}">selected</c:if>>성별을 선택해주세요.</option> --%>
<%-- 		            <option value="1" <c:if test="${item.gender == 1}">selected</c:if>>남성</option> --%>
<%-- 		            <option value="2" <c:if test="${item.gender == 2}">selected</c:if>>여성</option> --%>
<%-- 		            <option value="3" <c:if test="${item.gender == 3}">selected</c:if>>기타</option> --%>
<!-- 		        </select> -->
<!-- 		    </div> -->
<!-- 	        <div class="form-floating"> -->
<!-- 	        	<label for="email">이메일</label> -->
<%-- 	            <input type="text" class="form-control" id="email" name="email" required value="<c:out value="${item.email}"/>"> --%>
<!-- 	        </div> -->
<!-- 	        <div class="form-floating"> -->
<!-- 	        	<label for="phone">전화번호</label> -->
<%-- 	            <input type="text" class="form-control" id="phone" name="phone" required value="<c:out value="${item.phone}"/>"> --%>
<!-- 	        </div> -->
<!-- 		    <div class="form-floating"> -->
<!-- 		        <label for="level">권한등급</label> -->
<!-- 		        <select id="level" class="form-control" name="level"> -->
<%-- 		            <option value="0" <c:if test="${item.level == 0}">selected</c:if>>권한등급을 선택해주세요.</option> --%>
<%-- 		            <option value="4" <c:if test="${item.level == 4}">selected</c:if>>관리자</option> --%>
<%-- 		            <option value="5" <c:if test="${item.level == 5}">selected</c:if>>사용자</option> --%>
<!-- 		        </select> -->
<!-- 		    </div> -->
			</div>
			<!-- 파일 업로드 -->	
			<div class="d-flex justify-content-center">        
		        <div class="col-md-4 py-2 text-center">
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
		        <div class="col-md-4 py-2 text-center">
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
		    </div>
		    <div class="d-flex justify-content-center"> 
	       		<button type="button" class="btn btn-outline-dark" id="btnList" onclick="location.href='memberList'">목록</button>
         		<button type="button" class="btn btn-outline-dark" id="btnUpdate">저장</button>
            	<button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제</button>
		    </div>
		    <%@ include file="../include/modalBase.jsp" %>
		</form>
    </div>
<script>

	var objPw = $("#pw");
	var objName = $("#name");
	var objSelect = $("#gender");
	var objEmail = $("#email");
	var objPhone = $("#phone");

	validationUpdt = function() {
	    if (checkPw(objPw, "영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다.") === false) return false;
	    if (checkName(objName, "이름은 한글만 입력 가능합니다.") === false) return false;
	    if (checkSelectNull(objSelect, "성별을 선택해 주세요.") === false) return false;
	    if (checkEmail(objEmail, "유효한 이메일 주소를 입력해주세요.") === false) return false;
	    if (checkPhone(objPhone, "전화번호는 숫자만 입력해주세요.") === false) return false;
	}

	// 업데이트버튼 클릭이벤트
	$("#btnUpdate").on("click", function(){
		if (validationUpdt() == false) return false;
		$("form[name=form]").attr("action","/memberUpdate").submit();
	});

	// 딜리트버튼 클릭이벤트
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action","/memberDelete").submit();
	});
	
	// 파일 업로드
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

		var files = $("#" + objName +"")[0].files;
		var filePreview = $("#" + objName +"Preview");
		var numbering = [];
		var maxNumber = 0;
		
		if(uiType == 1) {
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else if(uiType == 2){
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else {
			// by pass
		}
		
		$("#" + objName + "MaxNumber").val(maxNumber);

		var totalFileSize = 0;
		var filesCount = files.length;
		var filesArray = [];
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
		for (var i=0; i<filesCount; i++) {
			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

			totalFileSize += files[i].size;
			
			filesArray.push(files[i]);
		}

		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			for (var i=0; i<filesArray.length; i++) {
				var file = filesArray[i];

				var picReader = new FileReader();
			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
			    picReader.readAsDataURL(file);
			}			
		} else if(uiType == 2) {
			for (var i = 0 ; i < filesCount ; i++) {
				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.onload = function () {
				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
			 }	
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		} else {
			return false;
		}
		return false;
	}
	
	
	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;

			var divImage = "";
			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
	    };
	}
	
	
	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	
	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		var sort = parseInt(maxNumber) + i;
		
		var li ="";
		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li +='</li>';
		
		filePreview.append(li);
	}
	
	
	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#li_"+type+"_"+sort).remove();

		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	openViewer = function (type, sort) {
		var str = '<c:set var="tmp" value="'+ type +'"/>';
		$("#modalImgViewer").append(str);
		$("#modalImgViewer").modal("show");
	}

</script>    
</body>
</html>