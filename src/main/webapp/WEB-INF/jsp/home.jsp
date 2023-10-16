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
    <style>body{
        background-color: honeydew;
        text-align: center;
        ;
    }
    h3{
        font-size: 3rem;
        font-family: "Segoe Print";
    }
    div{width: 100%; height: auto;

        border: 2px solid black;

    }
    .t1{display: flex;
    }

    </style>
</head>
<body>
<h3>Things To Do!</h3>
<h4>
    <form action="/add" method="post">
        <input type="text" name="todo" placeholder="할 일을 입력하세요" >
        <button style="background-color: paleturquoise">추가</button>
    </form>
</h4>
<br>
<br>
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