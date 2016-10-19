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
		$("#Center_Div").load(url);
		
	});
	});
	$('.carousel').carousel()

</script>
<script type="text/javascript">
function loadXmlDoc()
{
    return $.ajax({
        type: "GET",
        url: "Data/books.xml",
        dataType: "xml",
        async:false
    }).responseXML;
}
 
$(function()
{
    var xmlDoc=loadXmlDoc();
    var select=$("#tendetaiSelect");
    $(xmlDoc).find("book").each(function()
    {
        var title=$(this).find("tendetai").text();
        var id=$(this).attr("id");
        select.append("<option value='"+id+"'>"+title+"</option>");
    });
 
    var ul=$("#infoList");
    select.change(function()
    {
        ul.html("");
        var book=$("book[id='"+this.value+"']",xmlDoc);
        ul.append("<td>"+book.attr("id")+"</td>");
        book.children().each(function()
        {
            var li="<td>"+$(this).text()+"</td>";
            ul.append(li);
        });
    });
    
    var select=$("#giaovienhdSelect");
    $(xmlDoc).find("book").each(function()
    {
        var title=$(this).find("gvhd").text();
        var id=$(this).attr("id");
        select.append("<option value='"+id+"'>"+title+"</option>");
    });
    var ul=$("#infoList");
    select.change(function()
    {
        ul.html("");
        var book=$("book[id='"+this.value+"']",xmlDoc);
        ul.append("<td>"+book.attr("id")+"</td>");
        book.children().each(function()
        {
            var li="<td>"+$(this).text()+"</td>";
            ul.append(li);
        });
    });

var select=$("#madetaiSelect");
$(xmlDoc).find("book").each(function()
{
    var title=$(this).find("book").text();
    var id=$(this).attr("id");
    select.append("<option value='"+id+"'>"+id+"</option>");
});
var ul=$("#infoList");
select.change(function()
{
    ul.html("");
    var book=$("book[id='"+this.value+"']",xmlDoc);
    ul.append("<td>"+book.attr("id")+"</td>");
    book.children().each(function()
    {
        var li="<td>"+$(this).text()+"</td>";
        ul.append(li);
    });
});

var select=$("#keyword");
$(xmlDoc).find("book").each(function()
{
    var title=$(this).find("book").text();
    var id=$(this).attr("id");
    select.append("<option value='"+id+"'>"+id+"</option>");
});
var ul=$("#infoList");
select.change(function()
{
    ul.html("");
    var book=$("book[id='"+this.value+"']",xmlDoc);
    ul.append("<td>"+book.attr("id")+"</td>");
    book.children().each(function()
    {
        var li="<td>"+$(this).text()+"</td>";
        ul.append(li);
    });
});

});
</script>
<style>
            .success{color:blue;}
            .error {color:red;}
        </style>
</head>

<body>
   <div id="Center_Div" class="Center_Div"> 
          <div class="panel-group" align="center">
    <div class="panel panel-info">
      <div class="panel-heading" id="tieude" style="color: blue"><strong>Tìm Kiếm</strong></div>
    </div>
    </div>
<form style=" border: groove;width:700px; margin-left:15px; margin-right:15px;">	
 </br>
 <strong style="margin-left:10px;color: red ">Tên Đề Tài:  </strong>
    <select id="tendetaiSelect" style="width:200px"></select>
     <strong style="margin-left:10px;color: red ">GV hưỡng dẫn:  </strong>
    <select id="giaovienhdSelect" style="width:200px"></select>
    
     </br></br>
 <div class="form-group">
 <strong style="color: red "  class="col-sm-2">Mã đề tài:  </strong>
    <div class="col-sm-4">
      <select id="madetaiSelect" style="width:200px"></select>
    </div>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="name" id="keyword" placeholder="Nhập từ cần kiếm..">
    </div>
     <div class="col-sm-2">
      <button type="submit" class="btn btn-primary" >tìm</button>
    </div>
</br></br>
  </div>
    </br>

 <form style=" border: groove;width:700px; height:700px;margin-left:15px; margin-right:15px;">	
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Mã Đề Tài</th>
                  <th>Tên Đề Tài</th>
                  <th>Họ Tên Chủ Nhiệm</th>
                  <th>GV Hướng Dẫn</th>
	<th></th>
                </tr>
              </thead>
              <tbody>
                <tr id="infoList">
                </tr>
              </tbody>
            </table>
               
          </div>
          </form>
</form>   
</body>
</html>