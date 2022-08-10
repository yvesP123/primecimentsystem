<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Prime|Manage Customer</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assetss/css/styles.css">
		<link rel="stylesheet" href="assetss/css/plugins.css">
		<link rel="stylesheet" href="assetss/css/themes/theme-1.css" id="skin_color" />
	</head>
	<body>
		<div id="app">		
		<%@ include file="sidebar.jsp" %>

			<div class="app-content">
				<%@ include file="header.jsp" %>
						
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Accountant | Manage Customer</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>Accountant</span>
									</li>
									<li class="active">
										<span>Manage Customer</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
						

									<div class="row">
								<div class="col-md-12">
									<h5 class="over-title margin-bottom-15">Manage <span class="text-bold">Customer</span></h5>
									<p style="color:red;"></p>	
									<table class="table table-hover" id="sample-table-1">
										<form>
										<button type="submit" class="btn btn-primary" onClick="Print();">Print</button>
										</form><br>
										<form action="search.jsp"><input type="text" name="search" ><button type="submit" class="btn btn-primary">Search</button></form>
										<thead>
											<tr>
												<th class="center">#</th>
												<th>Name</th>
												<th>Phone</th>
												<th>Unit Price </th>
												<th class="hidden-xs">Quantity</th>
												
												<th>Total Amount </th>
												<th>Action</th>
												
											</tr>
										</thead>
										<tbody>
										
<%@ include file="config.jsp" %>
<%
Statement st;
String search=request.getParameter("search");
ResultSet rs;
String sql="select * from customer where name='"+search+"'";
st=conn.createStatement();
rs=st.executeQuery(sql);
while(rs.next()){
	int unit=rs.getInt("unit");
	int quantity=rs.getInt("quantity");
	int ammount;
	ammount=unit*quantity;
	
%>

											<tr>
												<td class="center"><%=rs.getString("id") %></td>
												<td class="hidden-xs"><%=rs.getString("name") %></td>
												<td><%=rs.getString("phone") %></td>
												<td><%=rs.getString("unit") %>
												</td>
												<td><%=rs.getString("quantity") %>
												</td>
												<td><% out.print(ammount); %></td>
												
												<td >
												<div class="visible-md visible-lg hidden-sm hidden-xs">
							<a href="edit-doctor.php?id=<?php echo $row['id'];?>" class="btn btn-transparent btn-xs" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
													
	<a href="manage-doctors.php?id=<?php echo $row['id']?>&del=delete" onClick="return confirm('Are you sure you want to delete?')"class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Remove"><i class="fa fa-times fa fa-white"></i></a>
										
										
												</div>
												</td>
											</tr>
											
											<%} %>
											
											
										</tbody>
									</table>
								</div>
							</div>
								</div>
							</div>
						</div>
						<!-- end: BASIC EXAMPLE -->
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
			<%@ include file="setting.jsp" %>
	
			
			<!-- end: SETTINGS -->
		</div>
		<script>
var p;
function Print()
{
	p=print();
	
}
</script>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assetss/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assetss/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>