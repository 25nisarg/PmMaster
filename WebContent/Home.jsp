<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.html"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>PM Master</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img2/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Oswald:wght@600&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib2/animate/animate.min.css" rel="stylesheet">
<link href="lib2/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css2/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css2/style.css" rel="stylesheet">
<style>
body {
	background-image: url("img2/Bg.jpg");
}

.btn {
	border-radius: 5px;
}

h1 {
	font-size: 7rem;
}

.marginMain {
	margin-top: 50px !important;
}
</style>
</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Team Start -->
	<div
		class="marginMain container-xxl py-5 position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="container">
			<div class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="max-width: 600px;">
				<h1 class="text-uppercase">PM Master</h1>
			</div>
			<div class="row g-4">
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="team-item">
						<div class="team-img position-relative overflow-hidden">
							<img class="img-fluid" src="img2/upload.jpg" alt="">
							<div class="team-social">
								<a class="btn" href="Upload.jsp">
									<h5>View Page</h5>
								</a>
							</div>
						</div>
						<div class="bg-secondary text-center p-4">
							<h5 class="text-uppercase">Upload Data</h5>

						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
					<div class="team-item">
						<div class="team-img position-relative overflow-hidden">
							<img class="img-fluid" src="img2/Data.jpg" alt="">
							<div class="team-social">
								<a class="btn" href="VData.jsp">
									<h5>View Page</h5>
								</a>
							</div>
						</div>
						<div class="bg-secondary text-center p-4">
							<h5 class="text-uppercase">Quater Data View</h5>

						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="team-item">
						<div class="team-img position-relative overflow-hidden">
							<img class="img-fluid" src="img2/Sub.jpg" alt="">
							<div class="team-social">
								<a class="btn" href="CDataW.jsp">
									<h5>View Page</h5>
								</a>
							</div>
						</div>
						<div class="bg-secondary text-center p-4">
							<h5 class="text-uppercase">Data Submission</h5>

						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
					<div class="team-item">
						<div class="team-img position-relative overflow-hidden">
							<img class="img-fluid" src="img2/Down.jpg" alt="">
							<div class="team-social">
								<a class="btn" href="ExportR.jsp">
									<h5>View Page</h5>
								</a>
							</div>
						</div>
						<div class="bg-secondary text-center p-4">
							<h5 class="text-uppercase">Export Report</h5>

						</div>
					</div>
				</div>
				<!-- Team End -->

				<!-- JavaScript Libraries -->
				<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
				<script src="lib2/wow/wow.min.js"></script>
				<script src="lib2/easing/easing.min.js"></script>
				<script src="lib2/waypoints/waypoints.min.js"></script>
				<script src="lib2/owlcarousel/owl.carousel.min.js"></script>

				<!-- Template Javascript -->
				<script src="js2/main.js"></script>
</body>

</html>