<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="../ThuVien/favicon.ico" type="image/x-icon" /><title>
	Nghiên Cứu Khoa Học Trường Đại Học Sư Phạm Kỹ Thuật
</title><meta name="Keywords" content="UTE Portal :: HCMC University of Technology and Education, Đại học Sư phạm Kỹ thuật" />
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" type="text/css" href="../ThuVien/css/Main.css"/>
  <link rel="stylesheet" type="text/css" href="../ThuVien/css/bootstrap.css"/>
    <script src="../ThuVien/Jquery/jquery-1.11.3.min.js"></script>
     <script src="../ThuVien/Js/bootstrap.min.js"></script>
    <script src="../ThuVien/Jquery/jquery.bootstrap-autohidingnavbar.js"></script>
<script src="../ThuVien/Jquery/jquery.validate.min.js"></script> 
<script type="text/javascript" src="../ThuVien/Jquery/localization/messages_vi.js"></script>
<script src="../ThuVien/Js/script.js"></script>
    <script>
      $("nav.navbar-fixed-top").autoHidingNavbar();
    </script>
    <script type="text/javascript">
	$(document).ready(function(){

			var url,data;
			$("#trangchu").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "TrangChu_GiaoVien.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			$("#thongtincanhan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "ThongTinCaNhanGV_NV.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#xemdetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "XemDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			$("#detaiduocphancongpheduyet").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDuocPhanCongPheDuyet.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#detaiduocphancongphanbien").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDuocPhanCongPhanBien.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#detaidanghuongdan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DeTaiDangHuongDan.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#duyethuydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DuyetHuyDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#duyetdangkydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DuyetDangKyDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			

			$("#xemdanhgia").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "XemDanhGia.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			$("#trangthaidetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "TrangThaiDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			$("#diemdanhgia").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DiemDanhGia.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#dangkydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "DangKyDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#xemmadetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "XemMaDeTai.jsp";
				$("#Center_Div").load(url);
				
	        });
			
			$("#giahandetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "GiaHanDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#huydetai").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "HuyDeTai.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#nopbaocao").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "NopBaoCao.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#tb1").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "https://docs.google.com/document/d/15-zwTehY0-D3mKTVEkqpwWRb25kWzZ0b-5M1UkMfW7k/pub?embedded=true";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
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
<div class="row">
  <div class="col-xs-6 col-md-12 ">
	<table align="center" border="0" width="1002" id="table1" cellspacing="0" cellpadding="0">
		<tr>
			<td height="24">&nbsp;</td>
		</tr>
		<tr>
			<td>
			    <img  border="0" src="../ThuVien/Images/SPKT.jpg" height="143" style="width: 1002px"/>
			</td>
		</tr>
		</table>
</div>
<div class="col-xs-12 col-md-12 ">
						<table border="0" height="40" width="100%" id="table5" cellspacing="0" cellpadding="0">
						<td>
<nav class="navbar navbar-default" role="navigation">
  <div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
        <li><a  id="diemdanhgia"><span class="glyphicon glyphicon-briefcase"></span> Điểm Đánh Giá</a></li>
        <li><a  id="dangkydetai"> <span class="glyphicon glyphicon-hand-up"></span> Đăng Ký Đề Tài</a></li>
        <li><a  id="trangthaidetai"> <span class="glyphicon glyphicon-tasks"></span> Trạng Thái ĐT</a></li>
        <li><a  id="xemmadetai"> <span class="glyphicon glyphicon-sound-5-1"></span> Xem Mã Đề Tài</a></li>
        <li><a 	id="giahandetai"> <span class="glyphicon glyphicon-asterisk"></span> Gia Hạn Đề Tài</a></li>
        <li><a  id="huydetai"> <span class="glyphicon glyphicon-flag"></span> Hủy Đề Tài</a></li>
        <li><a  id="nopbaocao"> <span class="glyphicon glyphicon-floppy-open"></span> Nộp Báo Cáo</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li> <button style="margin-top:5px;" type="button" class="btn btn-primary">Đăng Xuất</button></li>
      </ul>
  

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</td>
								</table>

</div>	
<div class="col-xs-6 col-md-12 ">	
<div id="Main">
<div id="Left_Div">
<table border="0" width="100%" height="100%"  id="table28" cellspacing="0" cellpadding="0">

                                        <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="trangchu"> <span class="glyphicon glyphicon-list-alt"></span>  Trang Chủ</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="thongtincanhan"> <span class="glyphicon glyphicon-user"></span>  Thông tin cá nhân</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="xemdetai"> <span class="glyphicon glyphicon-th"></span>  Xem Đề Tài</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="xemdanhgia"> <span class="glyphicon glyphicon-inbox"></span>  Xem Đánh Giá Đề Tài</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="detaiduocphancongpheduyet"> <span class="glyphicon glyphicon-ok"></span>  Đề Tài Được Phân Công Phê Duyệt</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="detaiduocphancongphanbien"> <span class="glyphicon glyphicon-bullhorn"></span>  Đề Tài Được Phân Công Phản Biện</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="detaidanghuongdan"> <span class="glyphicon glyphicon-book"></span>  Đề Tài Đang Hưỡng Dẫn</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="duyethuydetai"> <span class="glyphicon glyphicon-remove"></span> Duyệt Hủy Đề Tài</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="duyetdangkydetai"> <span class="glyphicon glyphicon-tags"></span>  Duyệt Đăng Ký Đề Tài</a>
                                            </td>
                                        </tr>
                                          
               
                                    </table>   

</div>

<div id="Center_Div">

<div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Trang Chủ</strong></div>
    </div>
    </div>
<form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
<table class="table table-striped">
              <thead>
                <tr>
                  <th>Số lượng đề tài hưỡng dẫn</th>
                  <th>Số lượng đề tài phản biện</th>
                  <th>Số lượng đề tài phê duyệt</th>
 	<th>Số lượng chờ duyệt hủy</th>
	<th>Số lượng chờ duyệt Đăng Ký</th>
                </tr>

  <tr>
                   <th>2</th>
                  <th>2</th>
                  <th>2</th>
	<th>6</th>
	<th>20</th>
                </tr>
              </thead>
              <tbody>
</table>
</form></br>

 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>Phân Công</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>CNT1010</td>
                  <td>Ứng Dụng GPS và Sim 900A</td>
                  <td>Nguyễn Quốc Trường</td>
                  <td>Đang chờ nghiệm thu</td>
	<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
                <tr>
                 <td>2</td>
                  <td>CTT1001</td>
                  <td>Ứng dụng nước sạch nông thôn</td>
                  <td>Phạm Công Hậu</td>
                  <td>Đang chờ phê duyệt</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
                <tr>
                     <td>3</td>
                  <td>CK1002</td>
                  <td>Thùng rác thông minh</td>
                  <td>Lý Say Xình</td>
                  <td>Phản Biện ngày 20/10/2016</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>4</td>
                  <td>NN1003</td>
                  <td>Nghiên cứu về tạo lúa mới</td>
                  <td>Trần Trọng Trí</td>
                  <td>Đang chờ hủy</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>5</td>
                  <td>CKDT1021</td>
                  <td>Phát Triển Robot</td>
                  <td>Lê bảo</td>
                  <td>Yêu cầu hướng dẫn</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
<tr>
                 <td>6</td>
                  <td>CNT1032</td>
                  <td>Công Nghệ Nano</td>
                  <td>Lê Quốc Trung Trực</td>
                  <td>Yêu cầu Hủy</td>
<td><div id="tb1"><a href = "#">Xem chi tiết</a></div></td>
                </tr>
              </tbody>
            </table>
               <ul class="pagination" style="margin:auto; float:right; margin-right:10px; margin-bottom:12px;; margin-top:15px">
  <li><a href="#"><<</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">>></a></li>
</ul>
          </div>
</form>
           </form> 
		
</div>

<div id="Footer_Div">

 <table align="center"  border="0" width="1002" id="table1" cellspacing="0" cellpadding="0">
		<tr>
			<td height="24">&nbsp;</td>
		</tr>
		<tr>
			<td>
			     <span >Copyright © 2011 HCMUTE - All Rights Reserved</span>
			</td>
		</tr>
		</table>
</div>
</div>
</div>
</div>
</body>
</html>