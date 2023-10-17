<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-16
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
    body {
        background-color: aliceblue;
        text-align: center;
        }
    h3{
        font-size: 3rem;
        font-family: "Segoe Print";
    }
    h4{
        font-family: "Segoe Print";
    }
    div{
        width: 100%; height: auto;
        justify-content: space-between;
        border: 2px solid black;
        border-radius: 20px;
    }
    .t1{
        display: flex;
    }
    th{
        justify-content: space-between;
    }
    </style>
</head>

<body>
<h3>🐬TO DO LIST🐬</h3>
<h4>
    <form action="/add" method="post">
        <input type="text" name="todo" placeholder="할 일을 입력하세요" style="margin-top: auto">
        <button style="background-color: lightpink">추가</button>
    </form>
</h4>

<br>

<h4 style="font-size: 1.5rem">TO DO LIST</h4>
<div>
    <table class="t1">
        <tr class="tt1">
            <th>ID</th>
            <th>TODO</th>
            <th>DATE & TIME</th>
        </tr>
        <c:forEach items="${todoList}" var="todo">
            <tr>
                <td>${todo.id}<br></td>

                <td>${todo.todo}<br></td>

                <td>${todo.inserted}<br></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>