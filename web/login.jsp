<%--
  Created by IntelliJ IDEA.
  User: za
  Date: 4/24/16
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/demo.css"/>
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/style.css"/>
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/animate-custom.css"/>
</head>
<body>
<div class="container">
    <header>
        <h1>THE BIG 论坛</h1>
        <nav class="codrops-demos">
            <a href="login.jsp" class="current-demo">登陆</a>
            <a href="register.jsp">注册</a>
        </nav>
    </header>
    <section>
        <div id="container_demo">
            <div id="wrapper">
                <div id="login" class="animate form">
                    <form action="../user?flag=login" method="post">
                        <h1>Login</h1>
                        <p>
                            <label for="username" class="uname" data-icon="u"> Your username </label>
                            <input id="username" name="username" required="required" type="text"
                                   placeholder="your name"/>
                        </p>
                        <p>
                            <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                            <input id="password" name="password" required="required" type="password"
                                   placeholder="your password"/>
                        </p>
                        <p class="login button">
                            <input type="submit" value="登陆"/>
                        </p>
                        <p class="change_link">
                            这是一个登陆的界面.
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>
