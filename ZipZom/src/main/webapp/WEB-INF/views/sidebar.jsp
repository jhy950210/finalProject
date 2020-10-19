<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Zipzom - Realtor</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- 폰트 테스트 -->
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!-- jQuery UI -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="./resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<!-- Select2 -->
<link rel="stylesheet" href="./resources/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="./resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
<!-- datepicker -->
<link rel="stylesheet" href="./resources/plugins//jquery-ui/jquery-ui.css">
<!-- daterange picker -->
<link rel="stylesheet" href="./resources/plugins/daterangepicker/daterangepicker.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet" href="./resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet" href="./resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- Bootstrap4 Duallistbox -->
<link rel="stylesheet" href="./resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="./resources/css/adminlte.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="./resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="./resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}

.w3-content {
  width: 100%;
  height: 100%;
  text-align: center;
  position: relative;
  z-index: 1;
}
.w3-content::after {
  width: 100%;
  height: 100%;
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.5;
}


</style>
</head>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>ZipZom</b></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="./newDashboard.jsp" class="w3-bar-item w3-button">Home</a>
    <a href="./intro_website.jsp" class="w3-bar-item w3-button">About</a>
    <a href="./customer_manage.do" class="w3-bar-item w3-button">고객관리</a>
    
    <a onclick="myAccFunc1()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn1">
      매물관리 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="./pfs_manage.do" class="w3-bar-item w3-button">등록매물관리</a>
      <a href="./pfs_compare2.do" class="w3-bar-item w3-button">매물비교</a>
    </div>
    
    <a onclick="myAccFunc2()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
      고객상담 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc2" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="./consulting_rtp.do" class="w3-bar-item w3-button">매물 시세</a>
      <a href="./consulting_map.do" class="w3-bar-item w3-button">매물 위치</a>
      <a href="./final_report.jsp" class="w3-bar-item w3-button w3-light-grey" <i class="fa fa-caret-right w3-margin-right"></i>>상담보고서</a> 
    </div>
    <a href="#" class="w3-bar-item w3-button">일정관리</a>

  </div>

</nav>

<script>
// Accordion 
function myAccFunc1() {
  var x = document.getElementById("demoAcc1");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

function myAccFunc2() {
  var x = document.getElementById("demoAcc2");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn1").click();
document.getElementById("myBtn2").click();


// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
