<!DOCTYPE html>
<html lang="zh-CN">
	<head>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
		<title>图书管理登录系统</title>
		<link rel="stylesheet"  href="./css/login.css" />
	</head>

	<body>
		 <div class="login">
		 	<h2>图书管理登录系统</h2>
            <form method="post" action="login">
                    <!-- 请求类型action -->
                <div class="login_box_index">
                    <div class="login_box">
                        <!-- required就是不能为空  必须在css效果中有很大的作用 -->
                        <input type="text" name='uname' id='name' required  />
                        <!-- 用户名传递 name -->
                        <label>用户名：</label>
                    </div>
                    <div class="login_box">
                        <!-- 用户名传递 paaword -->
                        <input type="password" name='password' id='pwd' required="required">
                        <label>密码：</label>
                    </div>
                </div>
                <button type="submit">
                    <!-- 登录请求 -->
                    <a class="a">
                        登录
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                </button>
            </form>
            <div class="register">
                <a href="./register.jsp">
                    注册
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
            <div class="register_1">
                <a href="./index.jsp" class="a">
                    返回
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
            </div>
		</div>
        <script  type="text/javascript" color="255,255,255" opacity='0.7' zIndex="-2" count="200" src="./js/Rolling_line.js"></script>
	</body>
</html>
