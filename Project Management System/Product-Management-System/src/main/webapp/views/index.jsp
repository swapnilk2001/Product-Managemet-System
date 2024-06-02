<%@page import="com.jbk.product.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product crud operation</title>
<%@include file="./basefile.jsp"%>

</head>


<style>
body {
	background-image: url("views/images/i2.jpeg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100%;
}
</style>

<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome To Product App</h1>

				<table class="table">
					<thead class="table-dark">
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">&#x20b9;Price</th>
							<th scope="col">Action</th>
						</tr>

					</thead>

					<tbody>
						<%
						List<Product> productList = (List<Product>) request.getAttribute("product");
						int index = 1;
						for (Product p : productList) {
						%>
						<tr>
							<th scope="row">SR00123T<%=p.getId() %></th>
							<td><%= p.getName() %></td>
							
							<th><%=p.getDescription()%></th>
							<th class="font-weight-bold">&#x20b9;<%=p.getPrice()%></th>
							<td>
								<a href="delete-product/<%=p.getId()%>">
									<i class="fa-solid fa-trash-can text-danger"></i>
								</a>
								
								<a href="update_product/<%=p.getId()%>">
								<i class="fa-solid fa-pen-nib"></i>
								
								</a>
							</td> 


						</tr>
						<%
						}
						%>

					</tbody>

				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>

				</div>






			</div>

		</div>

	</div>




</body>

</html>