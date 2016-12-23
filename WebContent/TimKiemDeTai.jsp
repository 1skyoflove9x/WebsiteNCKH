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
  <link rel="stylesheet" type="text/css" href="ThuVien/csss/bootstrap.css"/>
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

	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"     
	     user="root"  password="0123"/>
	 <sql:query dataSource="${snapshot}" var="result">
		     select DISTINCT DeTai_SinhVien.MaCapDT,DeTai.TenDeTai,ThongTinCanBo.HoTen 
		    from DeTai,ThongTinCanBo,DeTai_SinhVien
		    where DeTai.MaDeTai=DeTai_SinhVien.MaDeTai and DeTai.GVHD=ThongTinCanBo.MaCanBo  and
		     MaCapDT like '%${param.val}%' or TenDeTai like '%${param.val}%'
             or ThongTinCanBo.HoTen  like '%${param.val}%'
	</sql:query>
	 <c:if test="${ empty param.val }">
	 	<p>nhập điểu kiện</p>
	 </c:if>
	  <c:if test="${not empty param.val }">
            <table class="table table-striped">
              <thead>
                <tr>
              	  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
               <c:forEach var="row" items="${result.rows}">
                <tr>
                <td><c:out  value="${row.MaCapDT}"/></td>
                  <td><c:out  value="${row.TenDeTai}"/></td>
                  <td><c:out  value="${row.HoTen}"/></td>
				<td><div id="tb1"><a href = "Actor_GiaoVien_XemDeTai.jsp?MaDeTai=${row.MaDeTai}">Xem chi tiết</a></div></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
       </c:if>
</body>
</html>