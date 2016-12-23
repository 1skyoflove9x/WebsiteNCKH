<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Cập Nhật Đề Tài</title>
</head>
<body>
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"
			     user="root"  password="0123"/>
			 
 
 <% request.setCharacterEncoding("UTF-8");
%>
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM DeTai,DeTai_ThongTin,DeTai_SinhVien,ThongTinSinhVien
			Where DeTai.MaDeTai=DeTai_ThongTin.MaDeTai 
			and DeTai.MaDeTai=DeTai_SinhVien.MaDeTai
			and DeTai_SinhVien.MSSV=ThongTinSinhVien.MSSV
       </sql:query>
        
             <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Tìm Thấy Đề Tài Thành Công!" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Không Thể Tìm Thấy Đề Tài!" />
            </c:redirect> 
        </c:if> 

</body>
</html>