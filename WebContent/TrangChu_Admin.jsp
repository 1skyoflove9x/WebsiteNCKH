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
	SELECT  * FROM ThongBao order by ID DESC limit 10
	</sql:query>


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
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
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
			        <table class="table table-bordered" style="margin-top:15px;" border =1 style ="cellspacing=10; cellpadding=20" align ="center" width = "100%">
			  <thead>
				<tr>
				<th>Tiêu Đề</th>
				<th>Ngày Gửi</th>
				<th></th>
				<th></th>
				 </tr>
				    </thead>
				    <tbody>
				<c:forEach var="row" items="${result.rows}">
				<tr>
				<td><div id="${row.ID}"><a href = "Actor_Admin_ThongBao.jsp?ID=${row.ID}"><c:out value="${row.TieuDe}"/></a></div></td>
				<td><c:out value="${row.NgayDang}"/></td>
				 <td><button class="btn btn-danger">Xóa</button>
				 <td><button class="btn btn-primary" data-toggle="modal"
												data-target="#myModal${row.id}">Cập Nhật</button> <!-- Modal -->				
							<div id="myModal${row.id}" class="modal" role="dialog">
												<div class="modal-dialog">
													<!-- Modal content-->
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
															<h4 class="modal-title">Chỉnh sử thông báo</h4>
														</div>
														<div class="modal-body">
														<form id="signupForm1" action="Data/DB_insert_ThongBao.jsp" method="post">
					  <div class="form-group " style="margin-left:10px;margin-right:10px">
					<label for="exampleInputEmail1">Tên Tiêu Đề <span class="rq"> * </span></label>
					    <textarea class="form-control"  name="TieuDe" id="TieuDe" rows="3" ${row.TieuDe} placeholder="Nhập Tiêu Đề" minlength="6" ></textarea>
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
					    <textarea class="form-control" name="NoiDung" id="NoiDung" ${row.NoiDun} rows="20" placeholder="Nhập nội dung thông báo"></textarea>
					</div></br>
					 <div class="form-group" style="margin-left:10px;margin-right:10px">
					    <label for="exampleInputFile">File đính kèm</label>
					    <input type="file" id="exampleInputFile">
					    <p class="help-block">load các file báo cáo đính kém</p>
					</div></br>
					 <div class="form-group " style="margin-left:10px;margin-right:10px">
					<label for="exampleInputEmail1">Ngày đăng</label>
					    <input type="date" name="NgayDang" id="NgayDang" ${row.NgayDang} class="form-control" id="inputEmail3" ></br>
					</div>
					<div class="form-group" style="margin-left:10px;margin-right:10px">
					    <label for="inputEmail3" class="col-xs-12 col-md-2">
					<label class="radio-inline">
					  <input type="checkbox" name="NguoiNhan"  id="NguoiNhan" value="1">Gửi Tất Cả
					</label>
					</label>
					    <div class="col-xs-12 col-md-3">
					    </div>
					<label for="inputEmail3" class="col-xs-12 col-md-2">Gửi Cá Nhân</label>
					    <div class="col-xs-12 col-md-5">
					      <input type="text" class="form-control"${row.NguoiNhan} name="NguoiNhan" id="NguoiNhan" placeholder="Nhập mã số sinh viên hoặc mã số cán bộ" minlength="8">
					    </div>
					
					  </div></br></br></br>
					   <div class="modal-footer">
					   <input type="reset" class="btn btn-default" value="reset"/>
      					<input type="submit" class="btn btn-success btn-large" value="Save" />
      					</div>
					</form>  
														</div>

													</div>

												</div>
											</div>
												
												</td>
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
          
</body>
</html>