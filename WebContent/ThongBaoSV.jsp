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

	$(document).ready(function(){
		
	 var url,data;
	
	$("#${sessionScope['IdThongBao']}").click(function(e) {
	//=======.load(url)================
	var url,data;
	
	url = "DocThongBao.jsp";
	data: ({ ID: ${sessionScope['IdThongBao']}}),
	//url = "files/file-001.php";
	$("#Center_Div").load(url);
	
});
	
});
</script>
    
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
	    <%--   ,dangnhap WHERE ThongTinSinhVien.MSSV=dangnhap.uName 
	AND ThongTinSinhVien.MSSV = '${sessionScope['loginUser']}'; --%>
	     <sql:query dataSource="${snapshot}" var="result">
	SELECT  * FROM ThongBao where nguoinhan='${sessionScope['loginUser']}' or nguoinhan='1' order by ID DESC limit 10
	</sql:query>
    <div id="Center_Div" class="Center_Div"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Trang Chủ</strong></div>
    </div>
    </div>
		<table class="table table-bordered" style="margin-top:15px;" border =1 style ="cellspacing=10; cellpadding=20" align ="center" width = "100%">
			  <thead>
				<tr>
				<th>Tiêu Đề</th>
				<th>Ngày Gửi</th>
				 </tr>
				    </thead>
				    <tbody>
				<c:forEach var="row" items="${result.rows}">
				<tr>
				<td><div id="${row.ID}"><a href = "Actor_SinhVien_ThongBao.jsp?ID=${row.ID}"><c:out value="${row.TieuDe}"/></a></div></td>
				<td><c:out value="${row.NgayDang}"/></td>
				</tr>
				</tbody>
				   
				</c:forEach>
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

    <br/>
 

</body>
</html>