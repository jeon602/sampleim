<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-16
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>202310161705</title>
</head>
<body>
    <h4>TO DO</h4>
        <h5>
            <form action="/add" method="post">
                <input type="text" name="todo" placeholder="할 일을 입력하세요">
                <buttom>추가</buttom>
            </form>
        </h5>

        <hr>
        <h4>TO DO LIST</h4>
        <div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>TODO</th>
                    <th>DATE</th>
                </tr>
                <c:forEach items="${todolist}" var="todo">
                    <tr>
                        <th>${todo.id}</th>
                        <th>${todo.todo}</th>
                        <th>${todo.inserted}</th>
                    </tr>
                </c:forEach>
            </table>
        </div>

</body>
</html>
