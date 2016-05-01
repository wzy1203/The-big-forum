<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/demo.css"/>
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/style2.css"/>
    <link rel="stylesheet" type="text/css" href="main/css/LoginAndRegister/animate-custom.css"/>
    <script src="main/js/prettyphoto/jquery-1.12.3.min.js"></script>
    <script src="main/js/newlogin.js"></script>
</head>
<body>
<div class="container">
    <header>
        <h1>THE BIG 论坛</h1>
        <nav class="codrops-demos">
            <a href="login.jsp">登陆</a>
            <a href="register.jsp" class="current-demo">注册</a>
        </nav>
    </header>
    <section>
        <div id="container_demo">
            <div id="wrapper">
                <div id="login" class="animate form">
                    <form action="../user?flag=register" method="post">
                        <h1>Log in</h1>
                        <p>
                            <label for="username" class="uname" data-icon="u"> Your email or username </label>
                            <input id="username" name="username" required="required" type="text"
                                   placeholder="your name"/>
                        </p>
                        <span id="p1"></span>
                        <p>
                            <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                            <input id="password" name="password" required="required" type="password"
                                   placeholder="your password"/>
                        </p>
                        <p>
                            <label for="confirm" class="confirm" data-icon="p">Confirm your password </label>
                            <input id="confirm" name="confirm" required="required" type="password"
                                   placeholder="confirm your password"/>
                        </p>
                        <span id="p2"></span>
                        <p>
                            <label for="email" class="email" data-icon="e">your email </label>
                            <input id="email" name="email" required="required" type="email" placeholder="your email"/>
                        </p>
                        <p class="login button">
                            <input type="submit" id="submitRegister" value="注册" disabled="disabled"/>
                        </p>
                        <p class="change_link">
                            这是一个注册的界面.
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
</html>