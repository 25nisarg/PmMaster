<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.html"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Upload</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
#MainNav {
	display: block !important;
	margin-bottom: 50px;
}

form {
	display: flex;
	margin-top: 1%;
	align-items: center;
	justify-content: center;
	height: auto;
	width: 100%;
}

.containerS {
	display: inline-block;
	align-items: center;
	justify-content: center;
	margin: 0 auto;
}

.colb {
	display: flex;
	align-items: center;
	justify-content: end;
	/* margin: 20px; */
	/* padding: 20px; */
}

.col {
	width: 400px;
}

.border-bottom {
	border-bottom: 2px solid #dee2e6 !important;
}

.row {
	padding-bottom: 10px;
}
</style>

</head>

<body>

	<form action="VDataW.jsp" method="post">

		<div class="containerS border-bottom">
			<div class="row">
				<div class="col">
					<div class="form-floating">
						<select class="form-select" name="y" id="floatingSelect"
							aria-label="Floating label select example">
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
						</select> <label for="floatingSelect">Select Year</label>
					</div>

				</div>
				<div class="col">

					<div class="form-floating">
						<select class="form-select" name="q" id="floatingSelect"
							aria-label="Floating label select example">
							<option value="Q1">Quater1</option>
							<option value="Q2">Quater2</option>
							<option value="Q3">Quater3</option>
							<option value="Q4">Quater4</option>
						</select> <label for="floatingSelect">Select Quater</label>
					</div>

				</div>
				<div class="colb col">
					<input type="submit" class="btn btn-secondary btn-lg">
				</div>
			</div>
			<div class="row"></div>
		</div>


	</Form>
</body>

</html>