document.write("<script src='/resources/js/constants.js'></script>");

checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) {
	if(allowedMaxTotalFileNumber < (filesCount + uploadedFilesCount)){
		alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//		$("#file"+seq).val("");
//		obj.val("");
		return false;
	}
}

checkUploadedExt = function(objName, seq, div) {
	var ext = objName.split('.').pop().toLowerCase();
	var extArray = eval("extArray" + div);
	
	if(extArray.indexOf(ext) == -1) {
		alert("허용된 확장자가 아닙니다.");
//		$("#file"+seq).val("");
		return false;
	}
}

checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

	if(obj.size > allowedEachFileSize){
		alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
		$("#file"+seq).val("");
		return false;
	}
}


checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
	if(totalSize > allowedTotalFileSize){
		alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
		$("#file"+seq).val("");
		return false;
	}
}

// 이미지 전용
var extArray1 = new Array();
extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

// 문서관련
var extArray2 = new Array();
extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

// 이하는 커스텀
var extArray3 = new Array();
extArray3 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray4 = new Array();
extArray4 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray5 = new Array();
extArray5 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray6 = new Array();
extArray6 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray7 = new Array();
extArray7 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray8 = new Array();
extArray8 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

var extArray9 = new Array();
extArray9 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];