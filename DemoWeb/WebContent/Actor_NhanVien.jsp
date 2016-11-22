<%@ page import="connectdatabase.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="ThuVien/Jquery/localization/messages_vi.js"></script>
<script src="ThuVien/Js/script.js"></script>
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
    <script type="text/javascript">
	$.validator.setDefaults( {
		submitHandler: function () {
			alert( "Cập nhật thành công!" );
			location = "Actor_NhanVien.jsp"
		}
		
	} );
	$(document).ready(function(){
		url = "TrangChu_NhanVien.jsp";
		var url,data;
		$("#load").load(url);
		$("#trangchu").click(function(e) {
			//=======.load(url)================
			var url,data;
			
			url = "TrangChu_NhanVien.jsp";
			//url = "files/file-001.php";
			$("#load").load(url);
			
        });
			$("#thongtincanhan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "ThongTinCaNhanGV_NV.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			
			$("#detaiduocphancongpheduyet").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDuocPhanCongPheDuyet.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#detaiduocphancongphanbien").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDuocPhanCongPhanBien.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#detaidanghuongdan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDangHuongDan.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#duyethuydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DuyetHuyDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#duyetdangkydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DuyetDangKyDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });

			$("#xemdanhgia").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "XemDanhGia.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#trangthaidetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "TrangThaiDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#diemdanhgia").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DiemDanhGia.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#dangkydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DangKyDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#xemmadetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "XemMaDeTai.jsp";
				$("#load").load(url);
				
	        });
			
			$("#giahandetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "GiaHanDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#huydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "HuyDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#nopbaocao").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "NopBaoCao.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			
			$("#capmadetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "CapMaDeTai.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#timkiem").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "TimKiem.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#thaydoitrangthaidetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "ThayDoiTrangThaiDeTai.jsp";
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
			$("#phanconghoidongnghiemthu").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "PhanCongHoiDongNghiemThu.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#phanconghoidongphanbien").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "PhanCongHoiDongPhanBien.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#nhapdiemdanhgia").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "NhapDiemDanhGia.jsp";
				//url = "files/file-001.php";
				$("#load").load(url);
				
	        });
			$("#tb1").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
				//url = "files/file-001.php";
				$("#load").load(url);
				
			});
			
	});
	$('.carousel').carousel()
</script>
<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>
<body>
<%
User user =(User) session.getAttribute("user");
if(user==null)
{
	response.sendRedirect("home");	
	return;
}
%>

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
        <li>  <a class="menu" id="trangchu"> <span class="glyphicon glyphicon-list-alt"></span>  Trang Chủ</a></li>
        <li> <a class="menu" id="thongtincanhan"> <span class="glyphicon glyphicon-user"></span>  Thông tin cá nhân</a></li>
 		 <li><a class="menu" id="xemdanhgia"> <span class="glyphicon glyphicon-inbox"></span>  Xem Đánh Giá Đề Tài</a></li>
       <li>  <a class="menu" id="detaiduocphancongpheduyet"> <span class="glyphicon glyphicon-ok"></span>  Đề Tài Được Phân Công Phê Duyệt</a></li>
     <li>  <a class="menu" id="detaiduocphancongphanbien"> <span class="glyphicon glyphicon-bullhorn"></span>  Đề Tài Được Phân Công Phản Biện</a></li>
     <li>   <a class="menu" id="duyethuydetai"> <span class="glyphicon glyphicon-remove"></span> Duyệt Hủy Đề Tài</a></li>
     <li><a class="menu" id="duyetdangkydetai"> <span class="glyphicon glyphicon-tags"></span>  Duyệt Đăng Ký Đề Tài</a></li>
      <li> <a class="menu" id="nhapdiemdanhgia"> <span class="glyphicon glyphicon-upload"></span>  Nhập Điểm Đánh Giá</a></li>
     <li> <a class="menu" id="capmadetai"> <span class="glyphicon glyphicon-barcode"></span>  Cấp Mã Đề Tài</a></li>
     <li> <a class="menu" id="postthongbao"> <span class="glyphicon glyphicon-upload"></span>  Post Thông Báo</a></li>
             <li><a class="menu" id="thaydoitrangthaidetai"> <span class="glyphicon glyphicon-pencil"></span>  Thay Đổi Trạng Thái Đề Tài</a></li>
		<li><a class="menu" id="phanconghoidongnghiemthu"> <span class="glyphicon glyphicon-edit"></span>  Phân Công Hội Đồng Nghiệm Thu</a> </li>  
        <li><a class="menu" id="phanconghoidongphanbien"> <span class="glyphicon glyphicon-check"></span>  Phân Công Hội Đồng Phản Biện</a></li>
     <li> <a class="menu" href="home"> <span class="glyphicon glyphicon-eject"></span>  Đăng Xuất</a></li>
     <li>  <a class="menu" id="timkiem"> <span class="glyphicon glyphicon-search"></span>  Tìm Kiếm</a></li>
      </ul>
      <ul>
      <div id="menu1">
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" >Đề tài của tôi
        <span class="caret"></span></a>
        <ul class="sub-menu">
           <li><a  id="diemdanhgia"><span class="glyphicon glyphicon-briefcase"></span> Điểm Đánh Giá</a></li>
            <li><a  id="dangkydetai"> <span class="glyphicon glyphicon-hand-up"></span> Đăng Ký Đề Tài</a></li>
           <li><a  id="trangthaidetai"> <span class="glyphicon glyphicon-tasks"></span> Trạng Thái ĐT</a></li>
        <li><a 	id="giahandetai"> <span class="glyphicon glyphicon-asterisk"></span> Gia Hạn Đề Tài</a></li>
        <li><a  id="huydetai"> <span class="glyphicon glyphicon-flag"></span> Hủy Đề Tài</a></li>
        <li><a  id="nopbaocao"> <span class="glyphicon glyphicon-floppy-open"></span> Nộp Báo Cáo</a></li>
        </ul>
      </li>
      </div>
</ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<div class="col-xs-12 col-md-9">
<div id="load">

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