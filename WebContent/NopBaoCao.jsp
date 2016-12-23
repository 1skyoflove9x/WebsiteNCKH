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
	       <c:if test="${sessionScope.quyen == 'sinhvien'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * FROM ThongTinSinhVien,DeTai_SinhVien,DeTai
			Where DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
			and ThongTinSinhVien.MSSV='${sessionScope['loginUser']}'
	</sql:query>
	</c:if>
	   <c:if test="${sessionScope.quyen == 'nhanvienql'||sessionScope.quyen == 'giangvien'}">
	 <sql:query dataSource="${snapshot}" var="result">
			SELECT * FROM DeTai,DeTai_CanBo,ThongTinCanBo
			Where DeTai.MaDeTai=DeTai_CanBo.MaDeTai
			and DeTai_CanBo.MaCanBo=ThongTinCanBo.MaCanBo
			and and ThongTinCanBo.MaCanBo='${sessionScope['loginUser']}'
	</sql:query>
	</c:if>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Nộp Báo Cáo</strong></div>
    </div>
    </div>
    <div style="padding:5px; color:red;font-style:italic;">
       ${errorMessage}
    </div>
     	  <c:forEach var="row" items="${result.rows}">
    <form enctype="multipart/form-data" action="uploadfile.jsp" method="post" onsubmit="return verify()">	
	<div class="col-xs-12 col-md-6 ">
	<strong> Họ Và Tên: <c:out  value="${row.HoTen}"/></strong>
	    </div>
	     <c:if test="${sessionScope.quyen == 'nhanvienql'||sessionScope.quyen == 'giangvien'}">
	<div class="col-xs-12 col-md-6 ">
	<strong>Mã Số: <c:out  value="${row.MaCanBo}"/></strong>
	    </div>
	    </c:if>
	      <c:if test="${sessionScope.quyen == 'sinhvien'}">
	<div class="col-xs-12 col-md-6 ">
	<strong>Mã Số: <c:out  value="${row.MSSV}"/></strong>
	    </div>
	    </c:if>
	    </br></br>
	      <c:if test="${sessionScope.quyen == 'sinhvien'}">
	<div class="col-xs-12 col-md-6 ">
	<strong> Khoa: <c:out  value="${row.Khoa}"/></strong>
	    </div>
	    </c:if>
	     <c:if test="${sessionScope.quyen == 'nhanvienql'||sessionScope.quyen == 'giangvien'}">
	<div class="col-xs-12 col-md-6 ">
	<strong> Đơn Vị Công Tác: <c:out  value="${row.DonViCongTac}"/></strong>
	    </div>
	    </c:if>
		  <c:if test="${sessionScope.quyen == 'sinhvien'}">
	<div class="col-xs-12 col-md-6 ">
	<strong>Lớp: <c:out  value="${row.Lop}"/></strong>
	    </div>
	    </c:if>
	    </br></br>
	<div class="col-xs-12 col-md-12 ">
	<strong> Tên Đề Tài:<c:out  value="${row.TenDeTai}"/></strong>
    </div>
    </br></br>
    <label class="col-xs-12 col-md-12">File báo cáo</label>
    </br>
    <div class="col-xs-12 col-md-12">
     <input type="file" name="filename" id="filename" accept=".txt, application/pdf, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/msword"  />
    <p class="help-block">load các file báo cáo đính kém (.xlsl,xls,.doc,.docx,.txt,.pdf)</p>
	</div>
	 <c:if test="${sessionScope.quyen == sinhvien'}">
	 <input type="hidden" class="form-control"  name="NguoiNhan" id="NguoiNhan" value="${row.HoTen}">
	 </c:if>
	 <c:if test="${sessionScope.quyen == 'nhanvienql'||sessionScope.quyen == 'giangvien'}">
	 <input type="hidden" class="form-control"  name="NguoiNhan" id="NguoiNhan" value="${row.HoTen}">
	 </c:if>
	<label class="col-xs-12 col-md-12">Mô Tả</label>
	 <div class="col-xs-12 col-md-12">
	 <input type="text" class="form-control" name="mota" id="mota" />
	</div>
	<div class="col-xs-12 col-md-12">
<label class="checkbox-inline">
  <input type="checkbox" id="inlineCheckbox1" value="option1">Tôi đồng ý  nộp báo cáo đề tài
</label>
</br></br>
  </div>
  <div  class="col-xs-12 col-md-4 col-md-offset-8 ">
<input type="submit  " class="btn btn-primary">Gửi</button>
	<input type="back" class="btn btn-default" >Trở Lại</button>  
    </div> 
    </br> 

    </form>
        </c:forEach>
</body>
</html>