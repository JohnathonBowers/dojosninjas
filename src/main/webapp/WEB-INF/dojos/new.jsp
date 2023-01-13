<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
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
			<h1 class="text-primary">New Dojo</h1>
		</div>
		<div class="row my-4">
			<form:form action="/dojos/new" method="POST" modelAttribute="dojo">
				<div class="row mb-2">
					<form:label path="name" class="col-sm-3 col-form-label">Name:</form:label>
					<div class="col-sm-9">
						<form:input type="text" path="name" class="form-control" ></form:input>
					</div>
					<div class="row">
						<form:errors class="my-2 text-danger" path="name"/>
					</div>
				</div>
				<div class="row mt-2 justify-content-end">
					<input type="submit" class="btn btn-primary col-sm-2 me-3" value="Submit" />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>








