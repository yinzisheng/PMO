<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="utf-8">
<title>PMO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->

<%-- <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet"> --%>
<link href="<%=path%>/css/bootstrap-table.css" rel="stylesheet">

<link href="<%=path%>/css/bootstrap-cerulean.min.css" rel="stylesheet">

<link href="<%=path%>/css/charisma-app.css" rel="stylesheet">
<link
	href='<%=path%>/bower_components/fullcalendar/dist/fullcalendar.css'
	rel='stylesheet'>
<link
	href='<%=path%>/bower_components/fullcalendar/dist/fullcalendar.print.css'
	rel='stylesheet' media='print'>
<link href='<%=path%>/bower_components/chosen/chosen.min.css'
	rel='stylesheet'>
<link href='<%=path%>/bower_components/colorbox/example3/colorbox.css'
	rel='stylesheet'>
<link
	href='<%=path%>/bower_components/responsive-tables/responsive-tables.css'
	rel='stylesheet'>
<link
	href='<%=path%>/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css'
	rel='stylesheet'>
<link
	href='<%=path%>/bower_components/bootstrap-val/bootstrapValidator.css'
	rel='stylesheet'>
<link href='<%=path%>/css/jquery.noty.css' rel='stylesheet'>
<link href='<%=path%>/css/noty_theme_default.css' rel='stylesheet'>
<link href='<%=path%>/css/elfinder.min.css' rel='stylesheet'>
<link href='<%=path%>/css/elfinder.theme.css' rel='stylesheet'>
<link href='<%=path%>/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='<%=path%>/css/uploadify.css' rel='stylesheet'>
<link href='<%=path%>/css/animate.min.css' rel='stylesheet'>
<link href='<%=path%>/css/bootstrap-datetimepicker.css' rel='stylesheet'>
<link href='<%=path%>/css/bootstrap-datetimepicker.min.css'
	rel='stylesheet'>
<link href='<%=path%>/css/style.css' rel='stylesheet'>

<!-- jQuery -->
<script src="<%=path%>/bower_components/jquery/jquery.min.js"></script>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="<%=path%>/img/favicon.ico">

</head>
<script>
var path='<%=path%>';
</script>

<body>
	<!-- topbar starts -->
	<c:import url="/service/manage/top" />
	<!-- topbar ends -->
	<div class="ch-container">
		<div class="row">
			<!-- left menu starts -->
			<c:import url="/service/performanceManagement/leftHRBP" />
			<!-- left menu ends -->
			<div id="content" class="col-lg-10 col-sm-10">
				<!-- content starts -->
				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<!--代码区  -->
				
		<div class="panel panel-default" style="margin:40px 100px">
		   <div style="padding:5px;color:white;font-size:18px; height:40px;background:#4682B4">Data Upload</div>
		   <div style="margin:40px 100px">
		   
		       <table id="dataUpload">  </table>
		      
		   </div>  
		          
		</div>

    <!--弹框  -->
        <div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <form action="" method="post" enctype="multipart/form-data" name="uploadfile">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					        <h4 style="bgcolor:blue" id="myModalLabelfile">Data Upload</h4>
					      </div>
					      <div class="modal-body">
					           <input type="file" name="my" id="file" value="浏览" style="display: none;"
					           onchange="document.uploadfile.filePath.value=this.value"/> 
					           Choose a file					           
					           <input type="text" name="filePath" id="filePath"/>
					           <input type="button" value="Browse..." onclick="document.uploadfile.my.click()"/><br>

					      </div>
					      <!--按钮  -->
					     <div class="form-group">
						    <div style="width:20%;float:right">
						    <input type="button" value="Cancel"
							name="subscribe" id="#" href="#"
							class="button btn btn-primary" data-dismiss="modal"
							style="background-color: #B0C4DE; border: 0 none; border-radius: 4px; color: #FFFFFF; cursor: pointer; display: inline-block; font-size: 15px; font-weight: bold; height: 32px; line-height: 32px; margin: 0 5px 10px 0; padding: 0; text-align: center; text-decoration: none; vertical-align: top; white-space: nowrap; width: 100px; margin:auto ;">
						    </div>
						    
						    <div style="width:20%;float:right">
						    <input type="button" value="Upload"
							name="subscribe" id="sub_search" href="#"
							class="button btn btn-primary" data-dismiss="modal"
							style="background-color: #B0C4DE; border: 0 none; border-radius: 4px; color: #FFFFFF; cursor: pointer; display: inline-block; font-size: 15px; font-weight: bold; height: 32px; line-height: 32px; margin: 0 5px 10px 0; padding: 0; text-align: center; text-decoration: none; vertical-align: top; white-space: nowrap; width: 100px; margin:auto ;">
						    </div>						    
						</div>
						<!--按钮  -->
					    </div>
					  </div>
			  </form>
         </div>

    <!--弹框  -->
	<!--上传成功  -->  
	
	<div class="modal fade" id="uploadsuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h4 >Web Notice</h4>
					      </div>
					      <div class="modal-body">
					           Successfully Upload	<br><br><br>
					           
                           <input type="checkbox" value="1" name="sProblem">
					           Do not display this dialog anymore				           

					      </div>
					      <!--按钮  -->
					     <div class="form-group">
						    <div style="text-align:center;width:100%;float:left">
						    <input type="button" value="Ok"
							name="subscribe" id="#" href="#"
							class="button btn btn-primary" data-dismiss="modal"
							style="background-color: #B0C4DE; border: 0 none; border-radius: 4px; color: #FFFFFF; cursor: pointer; display: inline-block; font-size: 15px; font-weight: bold; height: 32px; line-height: 32px; margin: 0 5px 10px 0; padding: 0; text-align: center; text-decoration: none; vertical-align: top; white-space: nowrap; width: 100px; margin:auto ;">
						    </div>	    
						</div>
						<!--按钮  -->
					    </div>
					  </div>

         </div>
	
	
	<!--上传成功  -->


							<!--代码区  -->	 
						</div>
						</div>
					</div>
				</div>
              </div>
              <hr>
           
				<c:import url="/service/manage/footer" />

			</div>
			<!--/.fluid-container-->

			<!-- external javascript -->

			<script
				src="<%=path%>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
			<script
				src="<%=path%>/bower_components/bootstrap-val/bootstrapValidator.min.js"></script>

			<!-- library for cookie management -->
			<script src="<%=path%>/js/jquery.cookie.js"></script>
			<!-- calender plugin -->
			<script src='<%=path%>/bower_components/moment/min/moment.min.js'></script>
			<script
				src='<%=path%>/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
			<!-- data table plugin -->
			<script src='<%=path%>/js/jquery.dataTables.min.js'></script>

			<!-- select or dropdown enhancer -->
			<script src="<%=path%>/bower_components/chosen/chosen.jquery.min.js"></script>
			<!-- plugin for gallery image view -->
			<script
				src="<%=path%>/bower_components/colorbox/jquery.colorbox-min.js"></script>
			<!-- notification plugin -->
			<script src="<%=path%>/js/jquery.noty.js"></script>
			<!-- library for making tables responsive -->
			<script
				src="<%=path%>/bower_components/responsive-tables/responsive-tables.js"></script>
			<!-- tour plugin -->
			<script
				src="<%=path%>/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
			<!-- star rating plugin -->
			<script src="<%=path%>/js/jquery.raty.min.js"></script>
			<!-- for iOS style toggle switch -->
			<script src="<%=path%>/js/jquery.iphone.toggle.js"></script>
			<!-- autogrowing textarea plugin -->
			<script src="<%=path%>/js/jquery.autogrow-textarea.js"></script>
			<!-- multiple file upload plugin -->
			<script src="<%=path%>/js/jquery.uploadify-3.1.min.js"></script>
			<!-- history.js for cross-browser state change on ajax -->
			<script src="<%=path%>/js/jquery.history.js"></script>
			<!-- application script for Charisma demo -->
			<script src="<%=path%>/js/charisma.js"></script>

			<script type="text/javascript" src="<%=path%>/js/pmo/performanceHrbp.js"></script>
			<script type="text/javascript"
				src="<%=path%>/js/pmo/employeeValid.js"></script>
			<script type="text/javascript"
				src="<%=path%>/js/bootstrap-datetimepicker.js"></script>
			<script type="text/javascript"
				src="<%=path%>/js/bootstrap-datetimepicker.min.js"></script>
			<script type="text/javascript"
				src="<%=path%>/js/bootstrap-datetimepicker.zh-CN.js"></script>
				
			<script type="text/javascript"
				src="<%=path%>/js/pmo/bootstrap-table.js"></script>
			<script type="text/javascript"
				src="<%=path%>/js/pmo/bootstrap-table-zh-CN.js"></script>
			<%-- <script type="text/javascript"
				src="<%=path%>/js/pmo/jquery-2.2.1.min.js"></script> --%>
</body>
</html>
