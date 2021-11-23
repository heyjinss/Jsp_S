<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.z01_database.*"
    import = "jspexp.z02_vo.*"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/a00_com/a01_com.css">
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery-3.6.0.js" 
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    $("h2").text("비동기처리방식").click(function(){
	        var xhr = new XMLHttpRequest();
	        xhr.open("get","z04.data.txt",true); // 동기방식으로 처리..
	        xhr.send();
	        xhr.onreadystatechange=function(){
	            if(xhr.readyState==4 && xhr.status==200){
	                $("#show").html(xhr.responseText);
	            }
	        }
	    });
	});
</script>
</head>
<body>
	<h2 align="center"></h2>
	<table width="30%" align="center" class="listTable">
		<tr><th>사원명</th><th>급여</th><th>부서</th></tr>
		<tr id="show"></tr>
	</table>	
	
</body>
</html>