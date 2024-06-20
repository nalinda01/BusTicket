<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <title>Database Connection Check</title>
</head>
<body>
    <h1>Database Connection Status:</h1>
    <c:if test="${isDatabaseConnected}">
        <p style="color: green;">Connected</p>
    </c:if>
    <c:if test="${!isDatabaseConnected}">
        <p style="color: red;">Not Connected</p>
    </c:if>
</body>
</html>
