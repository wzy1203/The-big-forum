<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>联系我们</title>
    <link rel="shortcut icon" href="main/images/favicon.png"/>
    <link rel="stylesheet" href="main/style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css' href='main/css/bootstrap5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='responsive-css-css' href='main/css/responsive5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='pretty-photo-css-css' href='main/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='main-css-css' href='main/css/main5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='custom-css-css' href='main/css/custom5152.html?ver=1.0' type='text/css' media='all'/>
    <script src="main/js/html5.js"></script>

</head>
<body>
<!-- Start of Header -->
<div class="header-wrapper">
    <header>
        <div class="container">
            <div class="logo-container">
                <nav class="main-nav">
                    <div class="menu-top-menu-container">
                        <ul id="menu-top-menu" class="clearfix">
                            <li><a href="index.jsp">主页</a></li>
                            <li><a href="post.jsp">发帖</a></li>
                            <li><a href="../allpost">所有帖子</a></li>
                            <li class="current-menu-item"><a href="contact.jsp">联系我们</a></li>
                            <% if (session.getAttribute("user") == null) {%>
                            <li><a href="login/login.html">登陆/注册</a></li>
                            <%
                            } else {
                                String username = (String) session.getAttribute("user");
                            %>
                            <li><a href="user?flag=message"><%=username%>
                            </a></li>
                            <%}%>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>
</div>
<!-- End of Header -->

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

<!-- Start of Page Container -->
<div class="page-container">
    <div class="container">
        <div class="row">
            <div class="span8 page-content">
                <article class="type-page hentry clearfix">
                    <h1 class="post-title">联系我们</h1>
                    <hr>
                    <p>如果您有什么问题或者有一些宝贵的意见，请及时与管理员联系，我们一定会认真处理</p>
                </article>
                <form id="contact-form" class="row" action="../post?flag=advice" method="post">
                    <div class="span2">
                        <label for="advice">意见反馈<span>*</span> </label>
                    </div>
                    <div class="span6">
                        <textarea name="advice" id="advice" class="required span6" rows="6" title="* Please enter your message"></textarea>
                    </div>
                    <div class="span6 offset2 bm30">
                        <input type="submit" name="adviceSubmit" value="发送" class="btn btn-inverse">
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
                            <li><a href="articles-list.jsp">所有帖子</a></li>
                            <li><a href="faq.jsp">个人中心</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                        </ul>
                    </div>
                </section>
        </div>
    </div>
</div>
<!-- End of Page Container -->
<footer id="footer-wrapper"></footer>

<a href="#top" id="scroll-top"></a>

<!-- script -->
<script type='text/javascript' src='js/prettyphoto/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.easing.1.34e44.js?ver=1.3'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.liveSearchd5f7.js?ver=2.0'></script>
<script type='text/javascript' src='js/prettyphoto/jflickrfeed.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.formd471.js?ver=3.18'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.validate.minfc6b.js?ver=1.10.0'></script>
<script type='text/javascript' src='js/prettyphoto/custom5152.js?ver=1.0'></script>

<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>

