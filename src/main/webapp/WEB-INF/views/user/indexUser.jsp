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
    <title>Index</title>
    <%@ include file="../include/includeCss.jsp" %>
	<%@ include file="../include/includeJs.jsp" %>
</head>
<body>
<%@ include file="../include/includeHeader.jsp" %>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <form class="col-5 d-flex mb-5" role="search">
                <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-dark" type="button"><i class="bi bi-search"></i></button>
            </form>
        </div>
        <div class="col">
            메인화면
        </div>
    </div>
</body>
</html>