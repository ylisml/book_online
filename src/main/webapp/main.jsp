<%--
  Created by IntelliJ IDEA.
  User: 16462
  Date: 2023/5/24
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>主页</title>
</head>
<style>
    table {
        margin: 0px auto;
    }
    th {
        width: 140px;
        background-color: lightgrey;
    }
    td:nth-child(1) {
        text-align: center;
    }
    td:nth-child(2) {
        text-align: left;
    }
    td:nth-child(3) {
        text-align: center;
    }
    td:nth-child(4) {
        text-align: right;
    }
    td:nth-child(5) {
        text-align: right;
    }
    div>label {

    }

    div>a {
        float: right;
    }

    tr:nth-child(even) {
        background-color: #f4ffff;
    }
</style>
<body>
    <div>
        <label id="welcome">${bname}：欢迎！</label>
        <a href="#">退出</a>
    </div>
    <hr>
    <table border="1px" cellspacing="0">
        <caption><h3>书籍列表</h3></caption>
        <tr>
            <th>序号</th>
            <th>书名</th>
            <th>IBSN</th>
            <th>价格</th>
            <th>库存</th>
        </tr>
        <c:forEach items="${books}" var="book" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${book.bname}</td>
            <td>${book.isbn}</td>
            <td>${book.price}</td>
            <td>${book.stock}</td>
        </tr>
        </c:forEach>
        <%--<tr>
            <td>第一本</td>
            <td>234234254534</td>
            <td>12.5</td>
            <td>122</td>
        </tr>
        <tr>
            <td>第二本</td>
            <td>234234254534</td>
            <td>12.5</td>
            <td>122</td>
        </tr>
        <tr>
            <td>第三本</td>
            <td>234234254534</td>
            <td>12.5</td>
            <td>122</td>
        </tr>
        <tr>
            <td>第四本</td>
            <td>234234254534</td>
            <td>12.5</td>
            <td>122</td>
        </tr>--%>
    </table>
</body>
</html>
