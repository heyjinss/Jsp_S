<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.z01_database.*"
    import = "jspexp.z02_vo.*"
    import = "java.util.*"    
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a01_com.css">
<style>
	
</style>
<script src="<%=path%>/a00_com/jquery-3.6.0.js" 
	type="text/javascript"></script>

</head>
<%-- 
# 

--%>
<%
Product prod = (Product)request.getAttribute("prod");
%>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("요청객체범위(request)");
	});
</script>
<body>
	<h2 align="center"></h2>
	<%
	if(prod!=null){
	%>
	<table  align="center" class="listTable">
		<tr><th>물건명</th><td><%=prod.getName()%></td></tr>
		<tr><th>가격</th><td><%=prod.getPrice()%></td></tr>
		<tr><th>갯수</th><td><%=prod.getCnt()%></td></tr>
	</table>	
	<%
	}
	%><%-- el을 활용해서 이전페이지에서 선언한 request.setAttribute("prod"...) 이름으로 property로 사용 가능하다. --%>
	<table  align="center" class="listTable">
		<tr><th>물건명</th><td>${prod.name}</td></tr>
		<tr><th>가격</th><td>${prod.price}</td></tr>
		<tr><th>갯수</th><td>${prod.cnt}</td></tr>
	</table>	
	
</body>
</html>