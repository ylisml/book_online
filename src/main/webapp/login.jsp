<%--
  Created by IntelliJ IDEA.
  User: yanghongtao
  Date: 2023/5/30
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>图书管理系统</title>
</head>
<body>
<h1 align="center">图书管理系统</h1>
<form action="listall" method="post">
  <div>
    <label>姓名</label>
    <input type="text" name="sname" />
  </div>
  <div>
    <label>密码</label>
    <input type="password" name="pswd" />
  </div>
  <div>
    <label>姓名</label>
    <input type="submit" name="登录" />
  </div>
</form>
</body>
</html>
