<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title Here</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h3 class="text-success mt-3 mb-4">New survey</h3>
		<p class="text-danger err">
				<form:errors path="survey.*" />
			</p>
		<form:form class="form-group col" method="POST" action="/submitsurvey"
			modelAttribute="survey">
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="firstName">First Name:</form:label>
				<form:input class="col-sm-6" type="text" path="firstName" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="lastName">Last Name:</form:label>
				<form:input class="col-sm-6" type="text" path="lastName" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="stAddress">Street address:</form:label>
				<form:input class="col-sm-6" type="text" path="stAddress" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="city">City:</form:label>
				<form:input class="col-sm-6" type="text" path="city" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="state">State:</form:label>
				<form:input class="col-sm-6" type="text" path="state" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="zip">Zip:</form:label>
				<form:input class="col-sm-6" type="text" path="zip" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="email">Email:</form:label>
				<form:input class="col-sm-6" type="email" path="email" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="phoneNumber">Phone number:</form:label>
				<form:input class="col-sm-6" type="number" path="phoneNumber" />
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="surveyDate">Survey Date:</form:label>
				<form:input class="col-sm-6" type="date" path="surveyDate" />
			</div>
			<%-- <div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="like">Like:</form:label>
				<form:select class="col-sm-6" path="Like">
						<form:option value="Students">Students</form:option>
						<form:option value="Location">Location</form:option>
						<form:option value="Campus">Campus</form:option>
						<form:option value="Atmosphere">Atmosphere</form:option>
						<form:option value="Dorm rooms">Dorm rooms</form:option>
						<form:option value="Sports">Sports</form:option>
				</form:select>
			</div> --%>
			<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="reason">Reason:</form:label>
					<form:select class="col-sm-6" path="reason">
						<form:option value="Students">Students</form:option>
						<form:option value="Location">Location</form:option>
						<form:option value="Campus">Campus</form:option>
						<form:option value="Atmosphere">Atmosphere</form:option>
						<form:option value="Dorm rooms">Dorm rooms</form:option>
						<form:option value="Sports">Sports</form:option>
					</form:select>
				</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="interestSource">interest from:</form:label>
						<form:checkbox path="interestSource" value="Students"/> students
						<form:checkbox path="interestSource" value="Location" />locations
						<form:checkbox path="interestSource" value="Campus" />campus
						<form:checkbox path="interestSource" value="Atmosphere" />atmosphere
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="recommendationLevel">recommendationLevel:</form:label>
						<form:radiobutton value="likely" path="recommendationLevel" />likely
						<form:radiobutton value="unlikely" path="recommendationLevel" />unlikely
						<form:radiobutton value="very likely" path="recommendationLevel" /> very likely
			</div>
			<div class="row mb-2">
				<form:label class="col-sm-6 col-form-label" path="comment">Comments:</form:label>
				<form:textarea class="col-sm-6" type="date" path="comment" />
			</div>
			<div class="row">
				<input class="btn btn-secondary butnn mt-3" type="submit"
					value="Create" />
			</div>
		</form:form>
	</div>
	<!-- End of Container -->
</body>
</html>