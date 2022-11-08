<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
</head>
<body>
<jsp:useBean id="Product" class="com.pk.jsp.Product">
<jsp:setProperty name="Product" property="*"></jsp:setProperty>
</jsp:useBean>
<br/>
Product Details:
<br/>ID  <jsp:getProperty property="id" name="Product"/>
<br/>Name <jsp:getProperty property="name" name="Product"/>
<br/>Description <jsp:getProperty property="desc" name="Product"/>
<br/>Price <jsp:getProperty property="price" name="Product"/>
</body>
</html>