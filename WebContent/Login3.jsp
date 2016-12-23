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
<title>Đăng nhập</title>
</head>
<body>
<%
    String uname = request.getParameter("uname");    
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/detainckh",
            "root", "0123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from dangnhap where uName='" + uname + "' and Pass='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("uName", uname);
        response.sendRedirect("Actor_SinhVien.jsp");
    } else {
        out.println("Invalid password <a href='Login.jsp'>try again</a>");
    }
%>
</body>
</html>