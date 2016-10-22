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
				
				url = "TrangChu_Admin.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#quanlytaikhoan").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "QuanLyTaiKhoan.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			$("#postthongbao").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "PostThongBao.jsp";
				//url = "files/file-001.php";
				$("#Center_Div").load(url);
				
	        });
			
			$("#importfile").click(function(e) {
				//=======.load(url)================
				var url,data;
				
				url = "ImportFile.jsp";
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
        <li><a  id="diemdanhgia"><span class="glyphicon glyphicon-briefcase"></span> Trang Chủ</a></li>
        <li><a  id="dangkydetai"> <span class="glyphicon glyphicon-hand-up"></span> Thống Kê Hệ Thống</a></li>
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
                                             <a class="menu" id="quanlytaikhoan"> <span class="glyphicon glyphicon-folder-open"></span>  Quản Lý Tài Khoản</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="importfile"> <span class="glyphicon glyphicon-sort"></span>  ImportFile</a>
                                            </td>
                                        </tr>
                                           <tr>
                                            
                                            <td class="contentnews1" align="left">        
                                             <a class="menu" id="postthongbao"> <span class="glyphicon glyphicon-upload"></span>  Post Thông Báo</a>
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
<table class="table table-striped">
              <thead>
                <tr>
                  <th>Lượng người truy cập</th>
                  <th>Người đăng ký đề tài</th>
                  <th>Số người tiếp cận thông tin</th>
                </tr>

  <tr>
                   <th>1000</th>
                  <th>200</th>
                  <th>100000</th>
                </tr>
              </thead>
              <tbody>
</table>
</br>
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Nhúng Thông Báo Từ Drive</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

<div id="Center_Div"> 
           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;"> Nhúng thông báo </h2>

<form id="registration-form" class="form-horizontal">
</br></br>
<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label class="control-label" for="name">URL <span class="rq"> * </span></label>
     <div class="controls">
    <textarea type="url" class="form-control" rows="2" name="url" id="tenurl" minlength="20" placeholder="nhập link URL drive"  required></textarea>
    </div>
    </div>
  <div class="form-group" style="margin-left:10px;margin-right:10px">
    <label class="control-label" for="name">Tên Tiêu Đề <span class="rq"> * </span></label>
     <div class="controls">
    <textarea type="text" class="form-control" rows="2" name="name" id="tenieude" minlength="20" placeholder="nhập tên tiêu đề"  required></textarea>
    </div>
    </div>  
     </form>
     <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Trở Về</button>
        <button type="button" class="btn btn-primary" onclick= "Save(); return false;">Đăng</button>
      </div>
    </div>
  </div>
  </div>
</div>
   
   
 </br>
 <form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Stt</th>
                  <th>Tiêu Đề</th>
                  <th>Thao Tác</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr id="row1">
                  <td>1</td>
          <td><div id="tb1"><a href = "#">Mẫu đơn đăng ký đề tài nghiên cứu khoa học năm 2017</a></div></td>
              <td> <button type="button"id="1" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                                <tr id="row2">
                  <td>2</td>
               <td><div id="tb2"><a href = "#">Mẫu giấy đề nghị thanh toán kinh phí năm 2017</a></div></td>
              <td> <button type="button" id="2" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <                <tr id="row3">
                  <td>3</td>
                <td><div id="tb3"><a href = "#">Biểu mẫu đăng ký đề tài nghiên cứu khoa học năm 2016</a></div></td>
              <td> <button type="button"  id="3"class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row4">
                  <td>4</td>
                <td><div id="tb4"><a href = "#">Giới Thiệu về đăng ký đề tài nghiên cứu khoa học năm 2016</a></div></td>
              <td> <button type="button"  id="4"class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row5">
                  <td>5</td>
                <td><div id="tb5"><a href = "#">Danh sách đề tài nghiên cứu khoa học năm 2016</a></div></td>
              <td> <button type="button" id="5"class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row6">
                  <td>6</td>
               	<td><div id="tb2"><a href = "#">Thông báo về việc ký hợp đồng NCKH năm 2015</a></div></td>
              <td> <button type="button" id="6" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row8">
                  <td>8</td>
              <td><div id="tb2"><a href = "#">Kết quả các đề tài nghiên cứu khoa học năm 2015</a></div></td>
              <td> <button type="button" id="8" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row9">
                  <td>9</td>
               <td><div id="tb2"><a href = "#">Kết quả các đề tài nghiên cứu khoa học năm 2014</a></div></td>
              <td> <button type="button" id="9" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
  </tr>
                <tr id="row10">
                  <td>10</td>
                  <td><div id="tb2"><a href = "#">Kết quả các đề tài nghiên cứu khoa học năm 2013</a></div></td>
              <td> <button type="button" id="10" class="btn btn-primary btn_remove">Xóa</button></td>
	<td> <button type="button" class="btn btn-primary">Sửa</button></td>
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
    <br/>
           </form>   
</body>
</html>