<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/nghiencuukhoahoc"
			     user="root"  password="0123"/>
			 
  <% request.setCharacterEncoding("UTF-8");
%>
        <sql:update dataSource="${snapshot}" var="result">
            INSERT INTO ThongTinSinhVien(MSSV,HoTen,Email,SDT ,Khoa,Lop,Nganh ,NienKhoa ,NgaySinh ,GioiTinh,CMND ,DiaChi ,TKNganHang ,ChiNhanh) 
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);
            <sql:param value="${param.MSSV}" />
            <sql:param value="${param.HoTen}" />
            <sql:param value="${param.Email}" />
            <sql:param value="${param.SDT}" />
            <sql:param value="${param.Khoa}" />
            <sql:param value="${param.Lop}" />
            <sql:param value="${param.Nganh}" />
            <sql:param value="${param.NienKhoa}" />
            <sql:param value="${param.NgaySinh}" />
            <sql:param value="${param.GioiTinh}" />
            <sql:param value="${param.CMND}" />
            <sql:param value="${param.DiaChi}" />
            <sql:param value="${param.TKNganHang}" />
            <sql:param value="${param.ChiNhanh}" />
            
        </sql:update>
             <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Thêm Thông Tin Sinh Viên Thành Công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_SinhVien.jsp" >
                <c:param name="errMsg" value="Thêm Thông Tin Sinh Viên Thất Bại" />
            </c:redirect> 
        </c:if> 
 
</body>
</html>