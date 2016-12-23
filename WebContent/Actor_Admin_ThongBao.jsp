<%@ page import="connectdatabase.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="ThuVien/favicon.ico" type="image/x-icon" /><title>
	Nghiên Cứu Khoa Học Trường Đại Học Sư Phạm Kỹ Thuật
</title><meta name="Keywords" content="UTE Portal :: HCMC University of Technology and Education, Đại học Sư phạm Kỹ thuật" />
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" type="text/css" href="ThuVien/css/Main.css"/>
  <link rel="stylesheet" type="text/css" href="ThuVien/css/bootstrap.css"/>
    <script src="ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="ThuVien/Js/bootstrap.min.js"></script>
    <script src="ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="../ThuVien/Jquery/localization/messages_vi.js"></script>
 <script src="ThuVien/Js/jquery-ui.min.js"></script>
<script src="ThuVien/Js/script.js"></script>
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
    <script type="text/javascript">
	$(document).ready(function(){

			var url,data;
			$("#trangchu").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "TrangChu_Admin.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#quanlytaikhoan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "QuanLyTaiKhoan.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#postthongbao").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "PostThongBao.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#importfile").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "ImportFile.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#tb1").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
				//url = "files/file-001.php";
				$("#lod").load(url);
				
			});
			
			if (top !== self) {
				$.ui.dialog.prototype._focusTabbable = $.noop;
			}

	});

</script>
<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>
<body>			
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
	     user="root"  password="0123"/>
	     <sql:query dataSource="${snapshot}" var="result">
	SELECT * FROM ThongBao where ID='${param.ID}'
	</sql:query>
<div class="col-xs-12 col-sm-12 ">

	<div class="page-header no-margin no-padding">
	<div class="container" >
	 <a  href="http://hcmute.edu.vn/">
	 <img src="ThuVien/Images/banner.jpg" class="img-responsive" /></a>
 <img src="ThuVien/Images/line_ngang.jpg" class="img-responsive" /></a>
	</div>
</div>
</div>

<div id="Main">
<div class="container">
<div class="col-xs-12 col-md-3 ">	
<nav class="navbar navbar-default navbar-static-top" role="navigation">
  <div class="container-fluid">
<div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">    
       <span class="icon-bar"></span> 
       <span class="icon-bar"></span> 
       <span class="icon-bar"></span> 
       </button>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-left nav-tabs">
        <li> <a class="menu" id="trangchu"> <span class="glyphicon glyphicon-list-alt"></span>  Trang Chủ</a></li>
        <li>  <a class="menu" id="quanlytaikhoan"> <span class="glyphicon glyphicon-folder-open"></span>  Quản Lý Tài Khoản</a></li>
        <li>  <a class="menu" id="importfile"> <span class="glyphicon glyphicon-sort"></span>  ImportFile</a></li>
 		 <li>  <a class="menu" id="postthongbao"> <span class="glyphicon glyphicon-upload"></span>  Post Thông Báo</a></li>
     <li> <a class="menu" href="logout.jsp"> <span class="glyphicon glyphicon-eject"></span>  Đăng Xuất</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<h3>

  </h3>
<div class="col-xs-12 col-md-9">

	<div id="load">
	<c:forEach var="row" items="${result.rows}">
      <h3 style="clear:right; margin-left:20px;color:#009;"><c:out  value="${row.TieuDe}"/></h3>
      <p><c:out  value="${row.NoiDun}"/></p>
      </c:forEach>
	</div>
</div>
</div>
</div>
<footer class="site-footer">

<div class="container">
	<div class="row">
		<div class="col-md-5">
		<address>
		
		
		</address>	
		</div>
		</div>
		<div class="bottom-footer">
		<div class="col-md-5">
		Copyright @2013</br>
		Trường Đại học sư phạm kỹ thuật TP. HCM</br>
		Địa Chỉ 1, Võ Văn Ngân,Phường Linh Chiểu,Quận Thủ Đức,Thành Phố Hồ Chí Minh</br>
		Điện thoại:(+84-8)38968641 -(+84-8)3896133</br>
		E-mail:ic@hcmute.edu.vn
		</div>
		<div class="col-md-7">
		<ul class="footer-nav">
		<li><a href="http://hcmute.edu.vn/">Trang Chủ</a>
		<li><a href="https://www.facebook.com/SV.SPKT/?fref=ts">Fb</a>
		<li><a href="https://www.youtube.com/user/UTECommunicationDept">youtube</a>
		
		</ul>
		</div>
	</div>
</div>
</footer>
</body>
</html>