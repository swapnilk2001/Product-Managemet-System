<%@page import="com.jbk.product.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./basefile.jsp"%>
<title>Product CRUD Operation</title>
</head>
<body>


	<div class="container mt-3 ">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Details</h1>
				<form
					action="/update-product/${product.id}"
					method="post">

					<div class="form-group">
						<label for="name" class="form-label"><b>Product Name</b></label> <input
							name="name" required="required" type="text" class="form-control"
							id="name" placeholder="Enter Product Name"
							value="${product.name }">
					</div>
					<div class="form-group">
						<label for="description" class="form-label"><b>Description</b></label>
						<textarea name="description" required="required" id="description"
							placeholder="Enter your description" class="form-control"
							rows="5">${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="price" class="form-label"><b>Price</b></label> <input
							name="price" required="required" type="text" class="form-control"
							id="price" value="${product.price }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
