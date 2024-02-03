<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        input[type=text] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
    </style>

</head>
<body>



<form:form action="saveTask" modelAttribute="task">

    <form:hidden path="id"/>

    <p><form:input path="nameTask" placeholder="Название задачи" class="submissionfield" /></p>

    <p><form:input type="text" path="description" placeholder="Описание задачи" class="submissionfield"/> </p>

    <p><form:input path="ungency" placeholder="Важность" class="submissionfield"/></p>

    <p><input type="submit" value="Ok"></p>

</form:form>



</body>
</html>