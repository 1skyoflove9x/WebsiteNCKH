		<%@ page language="java" contentType="text/html; charset=UTF-8"
		    pageEncoding="UTF-8"%>
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Quản Lý Đề Tài Nghiên Cứu Khoa Học</title><meta name="viewport" content="width=device-width, initial-scale=1">
		
		  
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
		<script>
		$(document).ready(function(){
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
		   <div id="load" > 
		          <div class="panel-group" align="center">
		    <div class="panel panel-info">
		      <div class="panel-heading" id="tieude" style="color: blue"><strong>Post Thông Báo</strong></div>
		    </div>
		    </div>
					<form id="signupForm1" action="Data/DB_insert_ThongBao.jsp" method="post">
					  <div class="form-group " style="margin-left:10px;margin-right:10px">
					<label for="exampleInputEmail1">Tên Tiêu Đề <span class="rq"> * </span></label>
					    <textarea class="form-control"  name="TieuDe" id="TieuDe" rows="3" placeholder="Nhập Tiêu Đề" minlength="6" ></textarea>
					  </div></br>
					       
					  <div class="form-group" style="margin-left:10px;margin-right:10px">
					   <button type="button" class="btn btn-default btn-lg" style="margin:auto; float:right; margin-right:10px; margin-bottom:2px;; margin-top:5px;">
					  <span class="glyphicon glyphicon-align-left" ></span>
					</button>
					<button type="button" class="btn btn-default btn-lg" style="margin:auto; float:right; margin-right:10px; margin-bottom:2px;; margin-top:5px;">
					  <span class="glyphicon glyphicon-align-center"></span>
					</button>
					<button type="button" class="btn btn-default btn-lg" style="margin:auto; float:right; margin-right:10px; margin-bottom:2px;; margin-top:5px;">
					  <span class="glyphicon glyphicon-align-right"></span>
					</button>
					<label for="exampleInputEmail1">Nội dung bài post <span class="rq"> * </span></label>
					    <textarea class="form-control" name="NoiDung" id="NoiDung" rows="20" placeholder="Nhập nội dung thông báo"></textarea>
					</div></br>
					 <div class="form-group" style="margin-left:10px;margin-right:10px">
					    <label for="exampleInputFile">File đính kèm</label>
					    <input type="file" id="exampleInputFile">
					    <p class="help-block">load các file báo cáo đính kém</p>
					</div></br>
					 <div class="form-group " style="margin-left:10px;margin-right:10px">
					<label for="exampleInputEmail1">Ngày đăng</label>
					    <input type="date" name="NgayDang" id="NgayDang" class="form-control" id="inputEmail3" ></br>
					</div>
					<div class="form-group" style="margin-left:10px;margin-right:10px">
					    <label for="inputEmail3" class="col-xs-12 col-md-2">
					<label class="radio-inline">
					  <input type="checkbox" name="NguoiNhan" id="NguoiNhan" value="1">Gửi Tất Cả
					</label>
					</label>
					    <div class="col-xs-12 col-md-3">
					    </div>
					<label for="inputEmail3" class="col-xs-12 col-md-2">Gửi Cá Nhân</label>
					    <div class="col-xs-12 col-md-5">
					      <input type="text" class="form-control" name="NguoiNhan" id="NguoiNhan" placeholder="Nhập mã số sinh viên hoặc mã số cán bộ" minlength="8">
					    </div>
					
					  </div></br></br></br>
					   <div class="modal-footer">
					   <input type="reset" class="btn btn-default" value="reset"/>
      					<input type="submit" class="btn btn-success btn-large" value="Save" />
      					</div>
					</form>  
		</body>
		</html>