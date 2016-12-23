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
<title>update thông tin sinh vien</title>
</head>
<body>
<property name="hibernate.connection.useUnicode"
value="true" />
<property name="hibernate.connection.characterEncoding"
value="UTF-8" />
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			     url="jdbc:mysql://localhost:3306/detainckh?useUnicode=true&characterEcoding=utf-8"
			     user="root"  password="0123"/>
			 
 
 <% request.setCharacterEncoding("UTF-8");
%>
        <sql:update dataSource="${snapshot}" var="result">
            INSERT INTO PhanCongPhanBien(MaDeTai,MaCanBo,NgayPhanBien)
			VALUES(?,?,?);         
            <sql:param value="${param.madetai}"/>
            <sql:param value="${param.GVHD}"/>
            <sql:param value="${param.NgayPhanBien}"/>
        </sql:update>
        
         <sql:update dataSource="${snapshot}" var="trangthai">
             UPDATE DeTai_SinhVien
            SET 
            TrangThai=?
            where DeTai_SinhVien.MaDeTai='${param.madetai}'
            <sql:param value="${param.TrangThai}" />
        </sql:update>
  
               <c:if test="${result>=1 and trangthai>=1 }">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Phân công phản biện thành công" />
            </c:redirect> 
        </c:if> 
          <c:if test="${result==0 or trangthai==0}">
            <font size="5" color='red'> False update data</font>
 
             <c:redirect url="../Actor_NhanVien.jsp" >
                <c:param name="errMsg" value="Không thể phân công" />
            </c:redirect> 
        </c:if> 


</body>
</html>