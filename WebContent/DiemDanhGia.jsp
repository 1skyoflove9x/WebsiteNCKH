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
		SELECT * FROM DiemDanhGia,ThongTinCanBo 
		where ThongTinCanBo.MaCanBo=DiemDanhGia.MaGV 
		and MaDeTai='${sessionScope.loginUser}'
		</sql:query>
		 <sql:query dataSource="${snapshot}" var="test">
			SELECT sum(TongDiem) as Tong FROM DiemDanhGia,ThongTinCanBo 
			where ThongTinCanBo.MaCanBo=DiemDanhGia.MaGV and MaDeTai='${sessionScope.loginUser}'	
	</sql:query>
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Điểm Đánh Giá Đề Tài</strong></div>
    </div>
    </div>
    
		<div class="form-group">
		  <c:forEach items="${test.rows}" var="r">
        <c:choose>
          <c:when test="${r.Tong>=100}">
		  <span style=" margin-right:1%; color:red;text-align: left;font-size: 1.9rem">Xếp Loại: Xuất Sắc</label>
		  </span>
		  </c:when>
		  <c:when test="${r.Tong>=50 and r.Tong<100}">
		  <span style=" margin-right:1%; color:red;text-align: left;font-size: 1.9rem">Xếp Loại: Giỏi</label>
		  </span>
		  </c:when>
		  <c:when test="${r.Tong<50 and r.Tong>=20 }">
		  <span style=" margin-right:1%; color:red;text-align: left;font-size: 1.9rem">Xếp Loại: Trung Bình</label>
		  </span>
		  </c:when>
		  <c:when test="${r.Tong<20}">
		  <span style=" margin-right:1%; color:red;text-align: left;font-size: 1.9rem">Xếp Loại: Không Đạt</label>
		  </span>
		  </c:when>
		  </c:choose>
		  </c:forEach>
		</br>
		 </div>
		     <span style=" color:blue;text-align: left;font-size: 3rem">Điểm đánh giá chi tiết</span></br>
 <form style=" border: groove;width:100%; margin-left:1%; margin-right:1%;">	
</br><div class="form-group">
 <table class="table table-striped">
              <thead>
                <tr >
                  <th>Người Châm</th>
                  <th>Tình Hình Nghiên Cứu</th>
                  <th>Mục Tiêu</th>
                  <th>Phương Pháp Nghiên Cứu</th>
                  <th>Áp Dụng Thực Tế</th>
                  <th>Khả Năng Phát Triển</th>
                   <th>Tổng Điểm</th>
				<th></th>
				<th></th>
                </tr>
              </thead>
              <tbody>
                   <c:forEach var="row" items="${result.rows}">
             <tr onMouseOver="this.className='highlight'" onMouseOut="this.className='normal'"   onclick="getTblContents(this);" >
                  <td id="pId"><c:out  value="${row.ChucVu} "/><c:out  value="${row.HoTen}"/></td>
                  <td id="pName"><c:out value="${row.TinhHinhNhienCuu}"/></td>
                  <td id="pEmail"><c:out value="${row.MucTieu}"/></td>
                  <td width="15%"><c:out value="${row.PhuongPhap}"/></td>
                 <td width="10%"><c:out value="${row.GD}"/></td>
                 <td width="5%"><c:out value="${row.KhaNangPhatTrien}"/></td> 
                 <td width="5%"><c:out value="${row.TongDiem}"/></td> 
</c:forEach>
   </tbody>
            </table>	
</br></br>
 </div>


</form>
           </form>  
</body>
</html>