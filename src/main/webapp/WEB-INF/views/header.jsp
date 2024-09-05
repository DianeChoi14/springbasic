<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="title" content="AdminLTE 4 | Fixed Sidebar">
<meta name="author" content="ColorlibHQ">
<meta name="description"
	content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS.">
<meta name="keywords"
	content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard">
<!--end::Primary Meta Tags-->
<!--begin::Fonts-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
	integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
	crossorigin="anonymous">
<!--end::Fonts-->
<!--begin::Third Party Plugin(OverlayScrollbars)-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/styles/overlayscrollbars.min.css"
	integrity="sha256-dSokZseQNT08wYEWiz5iLI8QPlKxG+TswNRD8k35cpg="
	crossorigin="anonymous">
<!--end::Third Party Plugin(OverlayScrollbars)-->
<!--begin::Third Party Plugin(Bootstrap Icons)-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.min.css"
	integrity="sha256-Qsx5lrStHZyR9REqhUF8iQt73X06c8LGIUPzpOhwRrI="
	crossorigin="anonymous">
<!--end::Third Party Plugin(Bootstrap Icons)-->
<!--begin::Required Plugin(AdminLTE)-->
<link rel="stylesheet" href="dist/css/adminlte.css">
<!--end::Required Plugin(AdminLTE)-->
</head>

<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
	<div class="app-wrapper">
		<!--begin::App Wrapper-->
		<!--begin::Header-->
		<nav class="app-header navbar navbar-expand bg-body">
			<!--begin::Container-->
			<div class="container-fluid">
				<!--begin::Start Navbar Links-->
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						data-lte-toggle="sidebar" href="#" role="button"> <i
							class="bi bi-list"></i>
					</a></li>
					<li class="nav-item d-none d-md-block"><a href="#"
						class="nav-link">Home</a></li>
					<li class="nav-item d-none d-md-block"><a href="#"
						class="nav-link">Contact</a></li>
				</ul>
				<!--end::Start Navbar Links-->


				<!--begin::End Navbar Links-->
				<!--begin::Notifications Dropdown Menu-->
				<li class="nav-item dropdown"><a class="nav-link"
					data-bs-toggle="dropdown" href="#"> <i class="bi bi-bell-fill"></i>
						<span class="navbar-badge badge text-bg-warning">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="bi bi-envelope me-2"></i> 4 new messages <span
							class="float-end text-secondary fs-7">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="bi bi-people-fill me-2"></i> 8 friend requests <span
							class="float-end text-secondary fs-7">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="bi bi-file-earmark-fill me-2"></i> 3 new reports <span
							class="float-end text-secondary fs-7">2 days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer"> See All
							Notifications </a>
					</div></li>
				<!--end::Notifications Dropdown Menu-->
				<li class="nav-item dropdown user-menu"><img
						src="dist/assets/img/user2-160x160.jpg"
						class="user-image rounded-circle shadow" alt="User Image" style="width:20px;" > <span
						class="d-none d-md-inline">관리자</span>
				</li>
				
				
				<!--end::End Navbar Links-->
			</div>
			<!--end::Container-->
		</nav>
		<!--end::Header-->
	</div>
	</div>
</body>
</html>