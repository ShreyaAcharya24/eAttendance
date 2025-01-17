<%@page import="com.attendance.system.model.Batch"%>
<%@page import="com.attendance.system.model.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>


<title>eAttendance | Manage Batches</title>

<jsp:include page="components/head-imports.jsp"></jsp:include>

</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- SideBar -->
		<jsp:include page="components/sidebar.jsp"></jsp:include>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<jsp:include page="components/topbar.jsp"></jsp:include>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Outer Row -->

					<!-- Nested Row within Card Body -->
					<div class="row">
						<!-- Page Heading -->
						<h1 class="h3 mb-4 text-gray-800">Add Batch</h1>
						<div class="col-md-6">
							<div class="p-5">
								<form class="user" id="addBatch">
									<div class="form-group">
										<input type="text" class="form-control form-control-user"
											id="batchName" name="batchName" placeholder="Enter Batch"
											required />
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<div class="mt-2 mb-2" id="batchResponce"></div>
									<button type="submit"
										class="btn btn-primary btn-user btn-block">Add Batch
									</button>
								</form>
							</div>
						</div>
					</div>
					<hr />
					<div class="row">
						<h1 class="h3 mb-4 text-gray-800">Available Courses</h1>
						<div class="col-md-12">
							<div class="p-5">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable" width="100%"
										cellspacing="0">
										<thead>
											<tr>
												<th>Batch Id</th>
												<th>Duration</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Batch Id</th>
												<th>Duration</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</tfoot>

										<tbody>
											<%
											List<Batch> batches = (List<Batch>) request.getAttribute("batchList");
											for (Batch batch : batches) {
											%>
											<tr>
												<td><%=batch.getId()%></td>
												<td><%=batch.getBatchName()%></td>
												<td><button type="button"
														class="btn btn-warning updBatch"
														data-bid="<%=batch.getId()%>" data-toggle="modal"
														data-target="#editBatch">
														<i class="fas fa-edit"></i>
													</button></td>
												<td><button type="button"
														class="btn btn-danger delBatch"
														data-bid="<%=batch.getId()%>">
														<i class="fas fa-trash"></i>
													</button></td>
											</tr>
											<%
											}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="components/footer.jsp"></jsp:include>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<jsp:include page="components/models.jsp"></jsp:include>

	<jsp:include page="components/js-imports.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#side-batch").addClass("active")
		});
	</script>
</body>
</html>
