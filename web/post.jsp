<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en-US"> <!--<![endif]-->
<head>
    <% if(session.getAttribute("user")==null){
        response.sendRedirect("login.jsp");
    }
    %>
    <!-- META TAGS -->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>发帖页面</title>
    <link rel="shortcut icon" href="main/images/favicon.png"/>
    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css' href='main/css/bootstrap5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='responsive-css-css' href='main/css/responsive5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='pretty-photo-css-css' href='main/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='main-css-css' href='main/css/main5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='custom-css-css' href='main/css/custom5152.html?ver=1.0' type='text/css' media='all'/>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script></script>
    <![endif]-->
</head>
<body>
<div class="header-wrapper">
    <header>
        <div class="container">
            <div class="logo-container">
                <nav class="main-nav">
                    <div class="menu-top-menu-container">
                        <ul id="menu-top-menu" class="clearfix">
                            <li><a href="index.jsp">主页</a></li>
                            <li class="current-menu-item"><a href="post.jsp">发帖</a></li>
                            <li><a href="articles-list.jsp">所有帖子</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                            <% if (session.getAttribute("user")==null) {%>
                            <li><a href="login/login.html">登陆/注册</a></li>
                            <%}else{
                                String username = (String)session.getAttribute("user");%>
                            <li><a href="user?flag=message"><%=username%></a></li>
                            <%}%>
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
</div>

<!-- 网页大标题和搜索栏 -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">比格论坛</h3>
        <p class="search-tag-line">民议世间百态 众说天下风云——精彩尽在 比格论坛</p>
        <form id="search-form" class="search-form clearfix" method="get" action="../Search" autocomplete="off">
            <input class="search-term required" type="text" id="search" name="search"
                   placeholder="search what you want" title="* Please enter a search term!"/>
            <input class="search-btn" type="submit" value="搜索"/>
            <div id="search-error-container"></div>
        </form>
    </div>
</div>

<div class="page-container">
    <div class="container">
        <div class="row">
            <!-- 发帖窗口 -->
            <div class="span8 page-content">
                <article class="type-page hentry clearfix">
                    <h1 class="post-title">发帖</h1>
                    <hr>
                </article>
                <form id="contact-form" class="row" action="../post?flag=publish" method="post">
                    <div class="span2">
                        <label for="title">标题<span>*</span> </label>
                    </div>
                    <div class="span6">
                        <input type="text" name="title" id="title" class="required input-xlarge" value="标题"
                               title="* Please provide your title">
                    </div>
                    <div class="span2">
                        <label>类型*</label>
                    </div>
                    <div class="span6">
                        <!--<input type="text" name="reason" id="reason" class="input-xlarge" value="">-->
                        <select id="type" name="type">
                            <option >娱乐</option>
                            <option >新闻</option>
                            <option >体育</option>
                            <option >健康</option>
                            <option >其他</option>
                        </select>
                    </div>
                    <div class="span2">
                        <label for="content">内容<span>*</span> </label>
                    </div>
                    <div class="span6">
                        <textarea name="content" id="content" class="required span6" rows="6" title="* Please enter your message"></textarea>
                    </div>
                    <div class="span6 offset2 bm30">
                        <input type="submit" name="submit" value="发表" class="btn btn-inverse">
                    </div>
                    <div class="span6 offset2 error-container"></div>
                    <div class="span8 offset2" id="message-sent"></div>
                </form>
            </div>
            <!-- end of page content -->

            <!-- start of sidebar -->
            <aside class="span4 page-sidebar">

                <section class="widget">
                    <div class="quick-links-widget">
                        <h3 class="title">快速访问</h3>
                        <ul id="menu-quick-links" class="menu clearfix">
                            <li><a href="post.jsp">发帖</a></li>
                            <li><a href="index.jsp">主页</a></li>
                            <li><a href="../allpost">所有帖子</a></li>
                            <li><a href="faq.jsp">个人中心</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                        </ul>
                    </div>
                </section>
                <!-- end of sidebar -->
        </div>
    </div>
</div>
<!-- End of Page Container -->
<!-- Start of Footer -->
<footer id="footer-wrapper"><!-- end of #footer -->

    <!-- Footer Bottom --><!-- End of Footer Bottom -->

</footer>
<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>

<!-- script -->
<script type='text/javascript' src='main/js/prettyphoto/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.easing.1.34e44.js?ver=1.3'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.liveSearchd5f7.js?ver=2.0'></script>
<script type='text/javascript' src='main/js/prettyphoto/jflickrfeed.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.formd471.js?ver=3.18'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.validate.minfc6b.js?ver=1.10.0'></script>
<script type='text/javascript' src='main/js/prettyphoto/custom5152.js?ver=1.0'></script>

<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>

