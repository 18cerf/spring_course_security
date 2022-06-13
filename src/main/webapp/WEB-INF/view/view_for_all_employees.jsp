<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br><br>
<h2>INFO FOR ALL EMPLOYEES</h2>

<br><br>

<security:authorize access="hasRole('HR')">
    <input type="button" value="salary"
           onclick="window.location.href = 'hr_info'">
    only for hr stuff
</security:authorize>

<br><br>

<security:authorize access="hasRole('MANAGER')">
    <input type="button" value="performance"
           onclick="window.location.href = 'manager_info'">
    only for manager stuff
</security:authorize>

<br><br>


</body>
</html>
