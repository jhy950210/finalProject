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

</head>

<body class="hold-transition sidebar-mini">
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="./resources/index3.html" class="brand-link">
      <img src="./resources/img/zipzom_logo.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">ZipZom</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
			<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-tachometer-alt"></i>
					<p>
	                사이트 소개
	                
	                <i class="right fas fa-angle-left"></i>
					</p>
	            </a>
            	<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="./intro_website.jsp" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>사이트 소개</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="./board_notice.jsp" class="nav-link">
						<!-- 공지사항이나 업데이트에 새로운 글이 등록되면 옆에 숫자뜸 -->
						<span class="badge badge-info right">1</span>
						<i class="far fa-circle nav-icon"></i>
						<p>공지사항</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="./resources/index3.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>업데이트</p>
						</a>
					</li>
				</ul>
			</li>
          
			<li class="nav-item has-treeview">
				<a href="./customer_manage.do" class="nav-link">
					<i class="nav-icon fas fa-copy"></i>
					<p>
					고객 관리
					<i class="fas fa-angle-left right"></i>
					</p>
				</a>
            
			</li>
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-chart-pie"></i>
					<p>
                	고객 상담
					<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="../charts/chartjs.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>매물 시세</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="../charts/flot.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>맞춤 매물</p>
        		        </a>
              		</li>
					<li class="nav-item">
						<a href="../charts/inline.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>상담 보고서</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-tree"></i>
              		<p>
                	매물 관리
                	<i class="fas fa-angle-left right"></i>
              		</p>
            	</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="./pfs_manage.do" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>등록 매물 관리</p>
						</a>
					</li>
					<li class="nav-item">
                		<a href="./pfs_compare2.do" class="nav-link">
            	      	<i class="far fa-circle nav-icon"></i>
						<p>매물 비교</p>
             	   		</a>
              		</li>
             
            	</ul>
          </li>
          
	          <li class="nav-item">
					<a href="./resources/html/calendar.html" class="nav-link">
					<i class="nav-icon far fa-calendar-alt"></i>
					<p>일정 관리
	                <!-- 오늘의 일정 갯수가 옆에 뜸 -->
	                <span class="badge badge-info right">2</span>
					</p>
					</a>
	          </li>          
			</ul>
      	</nav>
      	<!-- /.sidebar-menu -->
    </div>
</aside>
</body>
</html>
