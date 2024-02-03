<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="white-space" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Yulia</title>
    <style>


        .submissionfield { width: 400px; height: 80px;  border: 2px solid #999999; padding: 5px; word-break: break-word;  }

        .perenos-hyphens {
            overflow: auto;
        }

        input[type=text] {
            width: 50%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        .frame {
            border: 3px solid #00a8e1;
        }













    </style>

    <meta http-equiv="charset" content="windws-1251">


</head>
<body>

<table
        border="0"
        align="center"
        rules="rows"
        style="width:100%;">
    <!--Создаём строку-->
    <tr>
        <!--Создаём ячейку строки-->
        <td>
            <!--ШАПКА САЙТА-->

            <!--В ячейке строки создаём ещё одну таблицу для шапки сайта.
            Оформление:
            border="1" - двойная рамка толщиной в 1px
            background="images/168.png" - картинка в шапке сайта, если требуется.
            Адрес картинки вы должны вставить свой.
            bgcolor="#7FFFD4" - фоновый цвет в шапке, если нет картинки.
            cellpadding="10" - отступ содержимого от рамки не менее 10px.
            style="width:100%; border-radius:5px;" - добавляем "резиновость"
            и закругляем уголки рамки-->
            <table
                    border="0"
                    background="images/168.png"
                    bgcolor="#a9a9a9"
                    cellpadding="10"
                    style="width:100%; border-radius:5px;">
                <!--Создаём строку таблицы-->
                <tr>
                    <!--Создаём столбец таблицы-->
                    <th>
                        <!--Содержание ячейки столбца-->
                        <h1>Детали задачи</h1>
                        <h3>Здесь вы можете ознакомится с задачей подробней. При необходимости сделать изменения</h3>
                        <!--Закрываем таблицу-->
                    </th>
                </tr>
            </table>

            <!--ОСНОВНОЙ КОНТЕНТ-->

            <!--В этой же ячейке контейнера создаём ещё одну таблицу
            для основного контента.
            Оформление как и в предыдущей таблице-->

            <table
                    border="0"
                    bgcolor="#e6e6fa"
                    cellpadding="10"
                    style="width:100%; border-radius:5px;">
                <!--Создаём строку-->
                <tr>
                    <!--Создаём ячейку
                    Оформление:
                    rowspan="2" - объединяем две ячейки в одну.
                    Число объединяемых ячеек по числу ячеек в сайдбаре.
                    style="width:80%" - основной контент занимает 80% всей площади,
                    оставшиеся 20% для сайдбара-->
                    <td
                            rowspan="2"
                            style="width:100%" >

                        <!--Начинаем абзац с красной строки-->
                        <table
                                align="left"
                                rules="rows"
                                style="width:70%;"
                                border="5" cellspacing="10" cellpadding="15">

                            <form:form action="saveTask" modelAttribute="task" items="task">
                                <h3>Подробно </h3>

                                <form:hidden path="id"/>
<%--                                <p>    <h4>${task.nameTask}</h4>           </p>--%>
                                <p><form:input path="nameTask" placeholder="Название задачи" class="submissionfield" /></p>
<%--                                <p>       ${task.description}       </p>--%>
                                <p><form:input path="description" placeholder="Описание задачи" class="submissionfield"  /> </p>

                                <form:select path="ungency" >
                                    <form:option value="High" label="High"></form:option>
                                    <form:option value="Average" label="Average"></form:option>
                                    <form:option value="Low" label="Low"></form:option>

                                </form:select>




                                <p><input type="submit" value="Ok"></p>



                                <c:url var="deleteButton" value="/deleteTask">
                                    <c:param name="taskId" value="${task.id}"/>
                                </c:url>

                                <input type="button" value="Удалить" onclick="window.location.href='${deleteButton}'"/>


                            </form:form>







<%--                            <c:url var="deleteButton" value="/deleteTask">--%>
<%--                                <c:param name="empId" value="${allTask.id}"/>--%>
<%--                            </c:url>--%>

<%--                            <input type="button" value="Удалить" onclick="window.location.href='${deleteButton}'"/>--%>
<%--                            <h1>AAAAAAAAAAAAAAAAAa</h1>--%>





                        </table>
                        <!--Закрываем ячейку-->
                    </td>

                    <!--САЙДБАР-->

                    <!--Создаём ячейку сайдбара-->
                    <td bgcolor="#e6e6fa">

                        <!--Абзац для ссылки на страницу сайта-->
                        <p>
                            <img src="https://beskonta.ru/storage/system/resized/xy_230x196/28a6a1a8fdf4d4c4609930f031a2c6a5_d45bac6.jpg.webp" class="frame">
                        </p>

                        <p>
                            <!--Ссылка на страницу сайта-->
                            <a href="https://siterost.net/post/background-image-html-css">
                                <!--Картинка маркера перед названием страницы-->

                                <!--Название страницы
                                style="margin-left:5px;" - отступ названия от маркера-->
                                <span style="margin-left:5px;">Список пользователей</span></a>
                            <!--Закрываем абзац-->
                        </p>
                        <p>
                            <a href="">
                                <span style="margin-left:5px;">Регистрация</span></a>
                        </p>
                        <p>
                            <a href="">
                                <span style="margin-left:5px;">Архив</span></a>
                        </p>
                        <!--Закрываем строку Меню-->
                    </td>
                </tr>
                <!--Создаём строку с дополнительной информацией-->
                <tr>
                    <!--Ячейка с дополнительной информацией-->
                    <td
                            bgcolor="#e6e6fa"
                            align="center">
                        <h3>Общая информация</h3>
                        <p>Текст общей информации или реклама</p>
                        <!--Закрываем ячейку с общей информацией
                        и таблицу основного контента-->
                    </td>
                </tr>
            </table>



            <!--ПОДВАЛ-->

            <!--Создаём таблицу подвала-->
            <table
                    border="0"
                    bgcolor="#a9a9a9"
                    height="100"
                    cellpadding="10"
                    style="width:100%; border-radius:5px;">
                <!--Создаём строку.-->
                <tr>
                    <!--Создаём столбец-->
                    <th>
                        <h3>Помни! Главное - качество.</h3>
                        <!--Закрываем таблицу подвала. При желании в подвале можно
                        сделать несколько строк и столбцов-->
                    </th>
                </tr>
            </table>
            <!--Закрываем таблицу контейнера-->
        </td>
    </tr>
</table>



<div class="background">
<%--    <img src="https://beskonta.ru/storage/system/resized/xy_230x196/28a6a1a8fdf4d4c4609930f031a2c6a5_d45bac6.jpg.webp"  />--%>
</div>



</body>
</html>
