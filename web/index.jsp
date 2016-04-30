<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
        <!-- META TAGS -->
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>比格论坛</title>
        <link rel="shortcut icon" href="main/images/favicon.png"/>
        <!-- Style Sheet-->
        <link rel="stylesheet" href="../main/style.css" type="text/css"/>
        <link rel="stylesheet" href="main/css/bootstrap5152.css" type="text/css"/>
        <link rel='stylesheet' href="main/css/responsive5152.css" type="text/css"/>
        <link rel='stylesheet' href='main/js/prettyphoto/prettyPhotoaeb9.css' type="text/css"/>
        <link rel='stylesheet' href='main/css/main5152.css' type='text/css'/>
        <link rel='stylesheet' href='main/css/custom5152.html' type='text/css'/>
</head>
<body>
<!-- 页面跳转的头部 -->
<div class="header-wrapper">
        <header>
                <div class="container">
                        <div class="logo-container">
                                <nav class="main-nav">
                                        <div class="menu-top-menu-container">
                                                <ul id="menu-top-menu" class="clearfix">
                                                        <li class="current-menu-item"><a href="index.jsp">主页</a></li>
                                                        <li><a href="post.jsp">发帖</a></li>
                                                        <li><a href="../allpost">所有帖子</a></li>
                                                        <li><a href="contact.jsp">联系我们</a></li>
                                                        <% if (session.getAttribute("user")==null) {%>
                                                        <li><a href="login.jsp">登陆/注册</a></li>
                                                        <%}else{
                                                        String username = (String)session.getAttribute("user");%>
                                                        <li><a href="user?flag=message"><%=username%></a></li>
                                                        <%}%>
                                                </ul>
                                        </div>
                                </nav>
                        </div>
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
                        <!-- start of page content -->
                        <div class="span8 page-content">
                                <!-- Basic Home Page Template -->
                                <div class="row separator">
                                        <section class="span4 articles-list">
                                                <h3>按分类查看</h3>
                                                <!-- 显示帖子信息-->
                                                <ul class="articles">
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>
                                                                <span class="article-meta">25 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                                                <span class="like-count">66</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">WordPress Site Maintenance</a>
                                                                </h4>
                                                                <span class="article-meta">24 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Website Dev">Website Dev</a></span>
                                                                <span class="like-count">15</span>
                                                        </li>
                                                        <li class="article-entry video">
                                                                <h4><a href="single.html">Meta Tags in WordPress</a>
                                                                </h4>
                                                                <span class="article-meta">23 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Website Dev">Website Dev</a></span>
                                                                <span class="like-count">8</span>
                                                        </li>
                                                        <li class="article-entry image">
                                                                <h4><a href="single.html">WordPress in Your Language</a>
                                                                </h4>
                                                                <span class="article-meta">22 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                <span class="like-count">6</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Know Your Sources</a></h4>
                                                                <span class="article-meta">22 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Website Dev">Website Dev</a></span>
                                                                <span class="like-count">2</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Validating a Website</a></h4>
                                                                <span class="article-meta">21 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Website Dev">Website Dev</a></span>
                                                                <span class="like-count">3</span>
                                                        </li>
                                                </ul>
                                        </section>
                                        <section class="span4 articles-list">
                                                <h3>最新动态</h3>
                                                <ul class="articles">
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Integrating WordPress with
                                                                        Your Website</a></h4>
                                                                <span class="article-meta">25 Feb, 2013 in
                                                                        <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a>
                                                                </span>
                                                                <span class="like-count">66</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Using Javascript</a></h4>
                                                                <span class="article-meta">25 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                                                <span class="like-count">18</span>
                                                        </li>
                                                        <li class="article-entry image">
                                                                <h4><a href="single.html">Using Images</a></h4>
                                                                <span class="article-meta">25 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                                                <span class="like-count">7</span>
                                                        </li>
                                                        <li class="article-entry video">
                                                                <h4><a href="single.html">Using Video</a></h4>
                                                                <span class="article-meta">24 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in WordPress Plugins">WordPress Plugins</a></span>
                                                                <span class="like-count">7</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">WordPress Site Maintenance</a>
                                                                </h4>
                                                                <span class="article-meta">24 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Website Dev">Website Dev</a></span>
                                                                <span class="like-count">15</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">WordPress CSS Information and
                                                                        Techniques</a></h4>
                                                                <span class="article-meta">24 Feb, 2013 in <a href="#"
                                                                                                              title="View all posts in Theme Development">Theme Development</a></span>
                                                                <span class="like-count">1</span>
                                                        </li>
                                                </ul>
                                        </section>
                                </div>
                        </div>
                        <!-- end of page content -->
                        <!-- start of sidebar -->
                        <aside class="span4 page-sidebar">
                                <section class="widget"></section>
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
                                <section class="widget">
                                        <div class="tagcloud"></div>
                                </section>
                        </aside>
                        <!-- end of sidebar -->
                </div>
        </div>
</div>
<!-- End of Page Container -->
<!-- Start of Footer --><!-- End of Footer -->
<a href="#top" id="scroll-top"></a>
<!-- script -->
<script type='text/javascript' src='main/js/prettyphoto/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jflickrfeed.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.liveSearch.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.form.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.validate.min.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/custom.js'></script>
<div style="display:none">
        <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
                charset='gb2312'></script>
</div>
</body>
</html>