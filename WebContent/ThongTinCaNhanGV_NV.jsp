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
      addEventListener('load', prettyPrint, false);
$(document).ready(function() {
	var lenght = $("#Center_Div").css("height");
    $("#Left_Div").css("height",lenght);
$(".alert").alert()
});
$('.carousel').carousel()

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
SELECT * FROM ThongTinCanBo WHERE MaCanBo = '${sessionScope['loginUser']}';
</sql:query>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thông Tin Cán Bộ</strong></div>
    </div>
    </div>
     <form style=" border: groove;width:100%; margin-left:1%; margin-right:1%;">	
<form class="form-inline" role="form">
</br></br>
<div class="form-group">
  <c:forEach var="row" items="${result.rows}">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên</label>
    <div class="col-sm-4">
    <c:out value="${row.HoTen}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số</label>
    <div class="col-sm-4">
<c:out value="${row.MaCanBo}"/>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-4">
    <c:out value="${row.Email}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT</label>
    <div class="col-sm-4">
     <c:out value="${row.SDT}"/>
    </div>
</br></br>
  </div>


<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Chức Vụ</label>
    <div class="col-sm-4">
     <c:out value="${row.ChucVu}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Đơn Vị Công Tác</label>
    <div class="col-sm-4">
    <c:out value="${row.DonViCongTac}"/>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh</label>
    <div class="col-sm-4">
      <c:out value="${row.NgaySinh}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính</label>
    <div class="col-sm-4">
    <c:out value="${row.GioiTinh}"/>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">CMND</label>
    <div class="col-sm-4">
  <c:out value="${row.CMND}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ</label>
    <div class="col-sm-4">
<c:out value="${row.DiaChi}"/>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng</label>
    <div class="col-sm-4">
     <c:out value="${row.TKNganHang}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh</label>
    <div class="col-sm-4">
<c:out value="${row.ChiNhanh}"/>
    </div>
</br></br>
  </div>
</br>
 </c:forEach>
</form>
</br>
	<button type="submit " onclick= "TroLai(); return false;"  class="btn btn-default">Trở Lại</button>
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Cập Nhật</button>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:20px;color:#009;">Cập Nhật Thông Tin Cá Nhân </h2>

<form id="signupForm1" class="form-horizontal" action="Data/DB_update_CanBo.jsp" method="post">
</br></br>
  <c:forEach var="row" items="${result.rows}">
<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="HoTen" id="HoTen" value="${row.HoTen}"  placeholder="Nhập họ và tên..." minlength="6">
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="msgv" id="msgv" value="${row.MaCanBo}" placeholder="Nhập mã số sinh viên.."  minlength="8">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputEmail" class="col-sm-2 control-label">Email<span class="rq"> * </span> <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="email" class="form-control" name="Email" id="Email" value="${row.Email}" placeholder="Nhập địa chỉ gmail...">
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="SDT" id="SDT" value="${row.SDT}" placeholder="Nhập số điện thoại..."  minlength="9">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Chức vụ <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="ChucVu" value="${row.ChucVu}" id="ChucVu" placeholder="Nhập chức vụ..">
    </div>
<label for="inputText" class="col-sm-2 control-label">Đơn vị Công Tác<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="DonViCongTac" value="${row.DonViCongTac}" id="DonViCongTac" placeholder="Nhập đơn vị.">
    </div>
</br></br>
  </div>


<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="NgaySinh" value="${row.NgaySinh}" id="NgaySinh">
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <label class="checkbox-inline">
  <input type="radio"  name="GioiTinh" id="nam" value="Nam"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio"  name="GioiTinh"  id="nu" value="Nữ"> Nữ
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">CMND<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="CMND" value="${row.CMND}" id="CMND" placeholder="Nhập số CMND."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="DiaChi" value="${row.DiaChi}" id="DiaChi" placeholder="Nhập địa chỉ thường trú."  minlength="9">
    </div>
</br></br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="TKNganHang " value="${row.TKNganHang}" id="TKNganHang" placeholder="Nhập TK ngân hàng.."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="ChiNhanh" value="${row.ChiNhanh}" id="ChiNhanh" placeholder="Nhập chi nhánh ngân hàng..">
    </div>
</br></br>
  </div>
   <div class="form-group">
								<div class="col-sm-5" style="margin-left:10px;margin-right:10px">
									<div class="checkbox">
										<label>
											<input type="checkbox" id="agree" name="agree" value="agree" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
								</div>
							</div>
</label>
</br></br>
 <input type="reset" class="btn btn-primary" value="reset"/>
       <input type="submit" class="btn btn-primary" value="Save" />
        </c:forEach>
</form>

</br>
           </form>   
</div>
</div>   
           </form>   
</body>
</html>