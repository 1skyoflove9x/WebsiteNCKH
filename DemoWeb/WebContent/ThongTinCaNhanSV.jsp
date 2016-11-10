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
<title>Quản Lý Đề Tài Nghiên Cứu Khoa Học</title>
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
SELECT * FROM ThongTinSinhVien WHERE MSSV ='14110425';
</sql:query>

          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Thông Tin Sinh Viên </strong></div>
    </div>
    </div>
  <form style=" border: groove;width:100%;">	
  <c:forEach var="row" items="${result.rows}">
<form class="form-inline" role="form" >
</br></br>
<div class="form-group">
    <label for="inputText" class="col-xs-12 col-sm-2  control-label">Họ Và Tên</label>
    <div class="col-sx-12 col-sm-4">
<c:out value="${row.HoTen}"/>
    </div>
<label for="inputText" class="col-xs-12 col-sm-2  control-label">Mã Số</label>
    <div class="col-sx-12 col-sm-4">
<c:out value="${row.MSSV}"/>
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
    <label for="inputText" class="col-sm-2 control-label">Khoa</label>
    <div class="col-sm-4">
<c:out value="${row.Khoa}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Lớp</label>
    <div class="col-sm-4">
<c:out value="${row.Lop}"/>
    </div>
</br></br>
  </div>

<div class="form-group">
    <label for="inputText" class="col-sm-2 control-label">Ngành</label>
    <div class="col-sm-4">
<c:out value="${row.Nganh}"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Niên Khóa</label>
    <div class="col-sm-4">
<c:out value="${row.NienKhoa}"/>
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
</c:forEach>
</form>
</br>
	<button type="submit " onclick= "TroLai(); return false;"  class="btn btn-default">Trở Lại</button>
<button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Cập Nhật</button>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    

           <h2 id="ThongTinCaNhan" style="clear:right; margin-left:5%;color:#009;"> Cập Nhật Thông Tin Cá Nhân </h2>

<form id="signupForm1" action="DB_update_TTSV.jsp" method="post" class="form-horizontal" action="">
</br></br>
  <c:forEach var="row" items="${result.rows}">
<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Họ Và Tên <span class="rq"> * </span></label>
    <div class="col-sm-4">
    <input type="text" class="form-control" name="HoTen" id="name" value="${row.HoTen}"  minlength="6"/> 
    
    </div>
<label for="inputText" class="col-sm-2 control-label">Mã Số <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="MSSV" value="${row.MSSV}" id="maso" minlength="8"/>
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputEmail" class="col-sm-2 control-label">Email<span class="rq"> * </span> <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="email" class="form-control" name="Email" value="${row.Email}" id="email"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">SĐT<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="SDT" value="${row.SDT}" id="sdt" placeholder="Nhập số điện thoại..."  minlength="9"/>
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Khoa <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="Khoa" value="${row.Khoa}" id="khoa" placeholder="Nhập khoa trực thuộc.." minlength="5"/>
    </div>
<label for="inputText" class="col-sm-2 control-label">Lớp<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="Lop" value="${row.Lop}" id="lop" placeholder="Nhập lớp.." minlength="2">
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngành<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="Nganh" value="${row.Nganh}" id="nghanh" placeholder="Nhập ngành đang học.."  minlength="10">
    </div>
<label for="inputText" class="col-sm-2 control-label">Niên Khóa <span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" id="inputText" value="${row.NienKhoa}" name="NienKhoa " id="nienkhoa" placeholder="Nhập niên khóa..">
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">Ngày Sinh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="date" class="form-control" name="NgaySinh" value="${row.NgaySinh}" id="ngaysinh" date= "mm/dd/yyyy">
    </div>
<label for="inputText" class="col-sm-2 control-label">Giới Tính<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <label class="checkbox-inline">
  <input type="radio" name="optionsRadios" id="nam"" value="option1"> Nam
</label>
<label class="checkbox-inline">
  <input type="radio"  name="optionsRadios" id="nu" value="option2"> Nữ
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">CMND<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="CMND" id="cmnd" value="${row.CMND}" placeholder="Nhập số CMND."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Địa Chỉ<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="DiaChi" id="diachi"  value="${row.DiaChi}" placeholder="Nhập địa chỉ thường trú."  minlength="9">
    </div>
</br>
  </div>

<div class="form-group" style="margin-left:10px;margin-right:10px">
    <label for="inputText" class="col-sm-2 control-label">TK Ngân hàng<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="TKNganHang " id="tk" value="${row.TKNganHang}" placeholder="Nhập TK ngân hàng.."  minlength="9">
    </div>
<label for="inputText" class="col-sm-2 control-label">Chi Nhánh<span class="rq"> * </span></label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="ChiNhanh" id="chinhanhnh" value="${row.ChiNhanh}" placeholder="Nhập chi nhánh ngân hàng.." minlength="9">
    </div>
</br>
  </div>
 <div class="form-group">
								<div class="col-sm-5">
									<div class="checkbox">
										<label>
											<input type="checkbox" id="agree" name="agree" value="agree" required/>Tôi đã đồng ý cập nhật
										</label>
									</div>
								</div>
							</div>
</label>
</br>

        <input type="reset" value="reset"/>
       <input type="submit" value="Save" />
     </c:forEach>
</form>
</br>
           </form>   

    </div>
  </div>
</div>
</div>  


</body>
</html>
