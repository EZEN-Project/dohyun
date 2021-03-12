<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
 src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
 src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
 <script
 src="/resources/js/upload.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1 class="jumbotron">판매상품</h1>                
		</div>
		
		<div class="row">
			<a class="btn btn-primary" href="/sellboard/insert">글쓰기</a>
		</div>
		<hr>

		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><a href="/sellboard/read/${dto.bnum}">${dto.title}</a></td>
					<td>${dto.price}</td><br>
				</tr>
			</c:forEach>
		
		</tbody>

<%-- <c:forEach items="${attachList}" varStatus="image">
			<div class="form-group">
         	   <ul class="clearfix uploadedList"></ul>
            </div>
</c:forEach> --%>
	</div>
			
<script type="text/javascript">	
		$(document).ready(function() {
	         
			var bnum = ${vo.bnum};
	         
	         $.getJSON("/sellboard/getAttaches/"+bnum, function(result) {
	        	 
	        	 str = '';
	        	 
	            for (var i = 0; i < result.length; i++) {
					data = result[i];
					str += makeHtmlCode_read(data)
					
				}
	            
	            $(".uploadedList").html(str);
	         });

</script>
</body>
</html>