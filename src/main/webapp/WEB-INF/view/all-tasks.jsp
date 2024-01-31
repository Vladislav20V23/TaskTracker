<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>

<body>

<h2>Welcome</h2>
<br>
<br>
<table>

    <tr>
        <th>Задача</th>
        <th>Описание</th>
        <th>Важность</th>
    </tr>


    <c:forEach var="task" items="${allTask}">

        <tr>
            <td>${task.nameTask}</td>
            <td>${task.description}</td>
            <td>${task.ungency}</td>
        </tr>


    </c:forEach>




</table>

</body>

</html>