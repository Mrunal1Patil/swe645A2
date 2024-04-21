<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title Here</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
        <h1>all surveys</h1>
        <table class="table table-striped table-dark text-light">
			<thead class="table-dark">
				<tr>
					<th scope="col">survey number</th>
					<th scope="col">fname</th>
					<th scope="col">lname</th>
					<th scope="col">email</th>
					<th scope="col">phoneNumber</th>
					<th scope="col">stAdd</th>
					<th scope="col">city</th>
					<th scope="col">state</th>
					<th scope="col">zip</th>
					<th scope="col">reason</th>
					<th scope="col">interest</th>
					<th scope="col">recommend</th>
					<th scope="col">comment</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${surveys}" var="sur">
					<tr>
						<td scope="row">Survey</td>
						<td><c:out value="${sur.firstName}" /></td>
						<td><c:out value="${sur.lastName}" /></td>
						<td><c:out value="${sur.email}" /></td>
						<td><c:out value="${sur.phoneNumber}" /></td>
						<td><c:out value="${sur.stAddress}" /></td>
						<td><c:out value="${sur.city}" /></td>
						<td><c:out value="${sur.state}" /></td>
						<td><c:out value="${sur.zip}" /></td>
						<td><c:out value="${sur.reason}" /></td>
						<td><c:out value="${sur.interestSource}" /></td>
						<td><c:out value="${sur.recommendationLevel}" /></td>
						<td><c:out value="${sur.comment}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
    </div> <!-- End of Container -->
</body>
</html>