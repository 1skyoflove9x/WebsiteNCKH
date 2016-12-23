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
		SELECT * FROM ThongTinSinhVien,DeTai_SinhVien,DeTai_ThongTin,DeTai
		WHERE ThongTinSinhVien.MSSV='${sessionScope['loginUser']}'
		and ThongTinSinhVien.MSSV=DeTai_SinhVien.MSSV
		and DeTai.MaDeTai=DeTai_ThongTin.MaDeTai
		and DeTai_SinhVien.MaDeTai=DeTai.MaDeTai;
		</sql:query>
		</c:if>
		
    <c:if test="${sessionScope.quyen == 'giangvien'||sessionScope.quyen == 'nhanvienql'}">
     <sql:query dataSource="${snapshot}" var="result">
		SELECT * FROM ThongTinCanBo,DeTai_CanBo,DeTai,DeTai_ThongTin
		WHERE ThongTinCanBo.MaCanBo = '${sessionScope['loginUser']}'
		and ThongTinCanBo.MaCanBo=DeTai_CanBo.MaCanBo
		and DeTai.MaDeTai=DeTai_ThongTin.MaDeTai
		and DeTai_CanBo.MaDeTai=DeTai.MaDeTai;
		</sql:query>
		</c:if>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Xem Mã Số Đề Tài</strong></div>
    </div>
    </div>
  <c:forEach var="row" items="${result.rows}">
       <input type="text" name="button" class="btn btn-primary" value="${row.MaCapDT}">
    <form style=" border: groove; margin-left:15px; margin-right:15px;">	
</br>
<div class="col-xs-12 col-md-2 ">
<strong> Họ Và Tên:</strong>
    </div>
<div class="col-xs-12 col-md-4 ">
<c:out value="${row.HoTen}"/>
    </div>
<div class="col-xs-12 col-md-2">
<strong>Mã Số</strong>
    </div>
<div class="col-xs-12 col-md-4  ">
   <c:if test="${sessionScope.quyen == 'sinhvien'}">
<c:out value="${row.MSSV}"/>
	</c:if>
	  <c:if test="${sessionScope.quyen == 'giangvien'}">
<c:out value="${row.MaCanBo}"/>
</c:if>
    </div></br></br>

<div class="col-xs-12 col-md-2  ">
<strong> Khoa:</strong>
    </div>
<div class="col-xs-12 col-md-4 ">
   <c:if test="${sessionScope.quyen == 'sinhvien'}">
<c:out value="${row.Khoa}"/>
	</c:if>
	  <c:if test="${sessionScope.quyen == 'giangvien'}">
<c:out value="${row.DonViCongTac}"/>
	</c:if>
    </div>
<div class="col-sm-2">
   <c:if test="${sessionScope.quyen == 'sinhvien'}">
<strong>Lớp</strong>
    </div>
<div class="col-xs-12 col-md-2 ">
	<c:out value="${row.Lop}"/>
	</c:if>
    </div></br></br>
<div class="col-xs-12 col-md-2  ">
<strong> Tên Đề Tài:</strong>
    </div>
<div class="col-xs-12 col-md-10  ">
<c:out value="${row.TenDeTai}"/>
    </div></br></br>
<div class="col-xs-12 col-md-2">
<strong>Lý Do:</strong>
</div>
 <div class="col-xs-12 col-md-10 ">
<c:out value="${row.LyDo}"/>
</div></br></br>
</c:forEach>
</form>
    
</body>
</html>