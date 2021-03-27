<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title><decorator:title default="Master-layout"></decorator:title></title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<link href="<c:url value="/assets/client/lib/slick/slick.css" />"
	rel="stylesheet">
<link href="<c:url value="/assets/client/lib/slick/slick-theme.css" />"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<c:url value="/assets/client/css/style.css" />"
	rel="stylesheet">
</head>
<body>

	<%@ include file="/WEB-INF/views/layouts/client/header.jsp"%>

	<decorator:body />

	<%@ include file="/WEB-INF/views/layouts/client/footer.jsp"%>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/c80992f0d4.js"
		crossorigin="anonymous"></script>

	<!-- JavaScript Libraries -->
	<script src="<c:url value="/assets/client/lib/easing/easing.min.js" />"></script>
	<script src="<c:url value="/assets/client/lib/slick/slick.min.js" />"></script>

	<!-- Template Javascript -->
	<script src="<c:url value="/assets/client/js/main.js" />"></script>
	
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>