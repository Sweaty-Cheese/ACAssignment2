<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="com.example.acassignment2.MyWeek" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<jsp:useBean id="myweek" class="com.example.acassignment2.MyWeek"/>
<div align='center'>
    <jsp:setProperty name="myweek" property="name" value="Aidan"/>

    <h2><jsp:getProperty name="myweek" property="description"/></h2>

    There are, of course, <jsp:getProperty name="myweek" property="numberDays"/> days in the week.

    <br/><br/>

    <jsp:getProperty name="myweek" property="name"/> works on <jsp:getProperty name="myweek" property="workingDays"/></h2>, leaving <jsp:getProperty name="myweek" property="numberOffDays"/> days to enjoy the other things in life.

    <br/>

    This means that, <jsp:getProperty name="myweek" property="name"/> is working <jsp:getProperty name="myweek" property="timeWorkingPercent"/>% of the time.

    <br/>

    <jsp:getProperty name="myweek" property="opinion"/>

</div>
</body>
</html>