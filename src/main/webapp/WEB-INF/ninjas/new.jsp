<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-lg-4 mt-4">
		<div class="row">
			<h1 class="text-primary">New Ninja</h1>
		</div>
		<div class="row my-4">
			<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
				<div class="row mb-2">
					<form:label path="dojo" class="col-sm-3 col-form-label">Dojo:</form:label>
					<div class="col-sm-9">
						<form:select path="dojo" class="form-select">
							<option selected>Select a dojo</option>
							<c:forEach var="dojo" items="${allDojos}">
								<option value="${dojo.id}">${dojo.name}</option>
							</c:forEach>
						</form:select>
						<div class="row">
							<form:errors class="my-2 text-danger" path="dojo"/>
						</div>
					</div>
				</div>
				<div class="row my-2">
					<form:label path="firstName" class="col-sm-3 col-form-label">First Name:</form:label>
					<div class="col-sm-9">
						<form:input type="text" path="firstName" class="form-control"></form:input>
					</div>
					<div class="row">
						<form:errors class="my-2 text-danger" path="firstName"/>
					</div>
				</div>
				<div class="row my-2">
					<form:label path="lastName" class="col-sm-3 col-form-label">Last Name:</form:label>
					<div class="col-sm-9">
						<form:input type="text" path="lastName" class="form-control"></form:input>
					</div>
					<div class="row">
						<form:errors class="my-2 text-danger" path="lastName"/>
					</div>
				</div>
				<div class="row my-2">
					<form:label path="age" class="col-sm-3 col-form-label">Age:</form:label>
					<div class="col-sm-9">
						<form:input type="text" path="age" class="form-control"></form:input>
					</div>
					<div class="row">
						<form:errors class="my-2 text-danger" path="age"/>
					</div>
				</div>
				<div class="row mt-2 justify-content-end">
					<input type="submit" class="btn btn-primary col-sm-2 me-3" value="Submit"/>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>





