<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="date" class="java.util.Date"/>

<html>
<head>
    <title>JMS Test</title>
</head>
<body>
<h2>Here is today's date</h2>

<c:out value="${date}"/>
</body>
</html>