<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<style>
	.tablehead {
		background-color: green;
	}

	.tablehead tr {
		color: white;
	}

	.title-container {
		background-color: green;
		width: 100vw;
		height: 100px;
		text-align: center;
	}

	.title-container h2 {
		color: white;
		padding: 25px;
	}

	.add-button {
		width: 200px;
	}

	.add-button button {
		font-size: 15px;
		width: 200px;
		height: 35px;
		cursor: pointer;
		font-weight: bold;
		border-color: #05386b;
		border-radius: 5px;
		background-color: transparent;
		border-width: 1px;
		box-shadow: 1 1 rgba(255, 255, 255);
	}

	.add-button button:hover {
		background-color: #05386b;
		color: white;
	}

	.add-button a {
		color: #05386b;
	}

	.add-button a:hover {
		color: white;
	}
</style>

<title>Customer List</title>
</head>

<body>
	<div class="title-container">
		<h2>CUSTOMER RELATIONSHIP MANGEMENT</h2>
	</div>
	<div class="container">
		<hr>
		<div class="add-button">
			<a href="/CustomerRelationshipManagement/customers/showFormForAdd"><button>
					Add Customer</button></a>
		</div>
		<hr>
		<table class="table table-bordered  ">
			<thead class="tablehead">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Customers}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/CustomerRelationshipManagement/customers/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/CustomerRelationshipManagement/customers/delete?customerId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
								Delete </a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
