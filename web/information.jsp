<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<%@ page import="Model.User" %>
<html>
<!--[if lt IE 7]>
<html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>
<html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>
<html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <link rel="shortcut icon" href="main/images/favicon.png"/>
    <!-- Style Sheet-->
    <link rel="stylesheet" href="main/style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css' href='main/css/bootstrap5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='responsive-css-css' href='main/css/responsive5152.css?ver=1.0' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='pretty-photo-css-css' href='main/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='main-css-css' href='main/css/main5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='custom-css-css' href='main/css/custom5152.html?ver=1.0' type='text/css' media='all'/>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="main/js/html5.js"></script>
    <![endif]-->
</head>
<body>
<!-- Start of Header -->
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
                            <% if (session.getAttribute("user") == null) {%>
                            <li><a href="login.jsp">登陆/注册</a></li>
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
<!-- End of Search Wrapper -->

<!-- Start of Page Container -->
<div class="page-container">
    <div class="container">
        <div class="row">

            <%--个人中心  已实现--%>
            <div class="span8 page-content">
                <article class="type-page hentry clearfix">
                    <h1 class="post-title">个人中心</h1>
                    <hr>
                    <ul class="tabs-nav">
                        <li class="active" style=""><a href="#">个人信息</a></li>
                        <li><a href="#">我的帖子</a></li>
                        <li><a href="#">与我相关</a></li>
                        <li><a href="#">修改密码</a></li>
                    </ul>
                    <div class="tabs-container">
                        <div class="tab-content"><h3>个人信息</h3>
                            <%
                                User user = (User)request.getAttribute("user");
                                String username = user.getUsername();
                                String sex = user.getSex();
                                String brith = user.getBrith();
                                String address = user.getAddress();
                                String email = user.getEmail();
                            %>
                            <h4>用户名 ：<input id="username" name="username" type="text" disabled="disabled" value="<%=username%>"></h4>
                            <h4>性 别 ： <input id="sex" name="sex" type="text" disabled="disabled" value="<%=sex%>"></h4>
                            <h4>生 日 ： <input id="brith" name="brith" type="text" disabled="disabled" value="<%=brith%>"></h4>
                            <h4>地 区 ： <input id="address"name="address" type="text" disabled="disabled" value="<%=address%>" ></h4>
                            <h4>e-mail ：<input id="email" name="email" type="text" disabled="disabled" value="<%=email%>"></h4>
                            <input style="margin-left: 100px"  type="button" value="修改" id="changeInformation">
                            <input type="button" value="保存" id="saveInformation" name="saveInformation">
                        </div>

                        <div class="tab-content">
                            <div class="span8 main-listing">


                                <article class="format-standard type-post hentry clearfix">
                                    <header class="clearfix">
                                        <h3 class="post-title">
                                            <a href="single.jsp">Integrating WordPress with Your Website</a>
                                        </h3>
                                        <div class="post-meta clearfix">
                                            <span class="date">25 Feb, 2013</span>
                                            <span class="category"><a href="#"
                                                                      title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                                            <span class="comments"><a href="#"
                                                                      title="Comment on Integrating WordPress with Your Website">3 Comments</a></span>
                                            <span class="like-count">66</span>
                                        </div><!-- end of post meta -->
                                    </header>
                                    <p>Many of us work in an endless stream of tasks, browser tasks, social media,
                                        emails, meetings, rushing from one thing to another, never pausing and never
                                        ending.&nbsp;Then the day is over, and we are exhausted, and we often have very
                                        little to show for it. And we start the next . . . <a class="readmore-link"
                                                                                              href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/">Read
                                            more</a></p>
                                </article>


                                <article class="format-standard type-post hentry clearfix">
                                    <header class="clearfix">
                                        <h3 class="post-title">
                                            <a href="single.html">Using Javascript</a>
                                        </h3>
                                        <div class="post-meta clearfix">
                                            <span class="date">25 Feb, 2013</span>
                                            <span class="category"><a href="#"
                                                                      title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                                            <span class="comments"><a href="#" title="Comment on Using Javascript">0 Comments</a></span>
                                            <span class="like-count">18</span>
                                        </div><!-- end of post meta -->
                                    </header>
                                    <p>Many of us work in an endless stream of tasks, browser tasks, social media,
                                        emails, meetings, rushing from one thing to another, never pausing and never
                                        ending.&nbsp;Then the day is over, and we are exhausted, and we often have very
                                        little to show for it. And we start the next . . . <a class="readmore-link"
                                                                                              href="http://knowledgebase.inspirythemes.com/using-javascript/">Read
                                            more</a></p>
                                </article>
                                <article class=" type-post format-image hentry clearfix">
                                    <header class="clearfix">
                                        <h3 class="post-title">
                                            <a href="single.html">Using Images</a>
                                        </h3>
                                        <div class="post-meta clearfix">
                                            <span class="date">25 Feb, 2013</span>
                                            <span class="category"><a href="#"
                                                                      title="View all posts in Designing in WordPress">Designing in WordPress</a></span>
                                            <span class="comments"><a href="#" title="Comment on Using Images">0 Comments</a></span>
                                            <span class="like-count">7</span>
                                        </div><!-- end of post meta -->

                                    </header>
                                    <p>Many of us work in an endless stream of tasks, browser tasks, social media,
                                        emails, meetings, rushing from one thing to another, never pausing and never
                                        ending.&nbsp;Then the day is over, and we are exhausted, and we often have very
                                        little to show for it. And we start the next . . . <a class="readmore-link"
                                                                                              href="http://knowledgebase.inspirythemes.com/using-images/">Read
                                            more</a></p>

                                </article>

                                <article class="type-post  format-video hentry clearfix">

                                    <header class="clearfix">

                                        <h3 class="post-title">
                                            <a href="single.html">Using Video</a>
                                        </h3>

                                        <div class="post-meta clearfix">
                                            <span class="date">24 Feb, 2013</span>
                                            <span class="category"><a href="#"
                                                                      title="View all posts in WordPress Plugins">WordPress Plugins</a></span>

                                            <span class="comments"><a href="#"
                                                                      title="Comment on Using Video">0 Comments</a></span>

                                            <span class="like-count">7</span>
                                        </div><!-- end of post meta -->

                                    </header>
                                    <div class="post-video">
                                    </div>

                                    <p>Many of us work in an endless stream of tasks, browser tasks, social media,
                                        emails, meetings, rushing from one thing to another, never pausing and never
                                        ending.&nbsp;Then the day is over, and we are exhausted, and we often have very
                                        little to show for it. And we start the next . . . <a class="readmore-link"
                                                                                              href="http://knowledgebase.inspirythemes.com/using-video/">Read
                                            more</a></p>

                                </article>

                                <article class=" type-post  format-standard hentry clearfix">

                                    <header class="clearfix">

                                        <h3 class="post-title">
                                            <a href="single.html">WordPress Site Maintenance</a>
                                        </h3>

                                        <div class="post-meta clearfix">
                                            <span class="date">24 Feb, 2013</span>
                                            <span class="category"><a href="#" title="View all posts in Website Dev">Website Dev</a></span>

                                            <span class="comments"><a href="#"
                                                                      title="Comment on WordPress Site Maintenance">0 Comments</a></span>

                                            <span class="like-count">15</span>
                                        </div><!-- end of post meta -->

                                    </header>

                                    <p>Many of us work in an endless stream of tasks, browser tasks, social media,
                                        emails, meetings, rushing from one thing to another, never pausing and never
                                        ending.&nbsp;Then the day is over, and we are exhausted, and we often have very
                                        little to show for it. And we start the next . . . <a class="readmore-link"
                                                                                              href="http://knowledgebase.inspirythemes.com/wordpress-site-maintenance/">Read
                                            more</a></p>

                                </article>

                                <div id="pagination">
                                    <a href="#" class="btn active">1</a>
                                    <a href="#" class="btn">2</a>
                                    <a href="#" class="btn">3</a>
                                    <a href="#" class="btn">Next »</a>
                                    <a href="#" class="btn">Last »</a>
                                </div>

                            </div>


                        </div>
                        <div class="tab-content"><h3>与我相关</h3>
                            <dl class="accordion clearfix">
                                <dt><span></span>我的评论</dt>
                                <dd>
                                    <section id="comments">

                                        <h3 id="comments-title">(3) Comments</h3>

                                        <ol class="commentlist">

                                            <li class="comment even thread-even depth-1" id="li-comment-2">
                                                <article id="comment-2">

                                                    <a href="#">
                                                        <img alt=""
                                                             src="http://1.gravatar.com/avatar/50a7625001317a58444a20ece817aeca?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                                             class="avatar avatar-60 photo" height="60" width="60">
                                                    </a>

                                                    <div class="comment-meta">

                                                        <h5 class="author">
                                                            <cite class="fn">
                                                                <a href="#" rel="external nofollow" class="url">John
                                                                    Doe</a>
                                                            </cite>
                                                            - <a class="comment-reply-link" href="#">Reply</a>
                                                        </h5>

                                                        <p class="date">
                                                            <a href="#">
                                                                <time datetime="2013-02-26T13:18:47+00:00">February 26,
                                                                    2013 at 1:18 pm
                                                                </time>
                                                            </a>
                                                        </p>

                                                    </div><!-- end .comment-meta -->

                                                    <div class="comment-body">
                                                        <p>Duis autem vel eum iriure dolor in hendrerit in vulputate
                                                            velit esse molestie consequat, vel illum dolore eu feugiat
                                                            nulla facilisis at vero eros et accumsan et iusto odio
                                                            dignissim qui blandit praesent luptatum zzril delenit augue
                                                            duis dolore te feugait nulla facilisi.</p>
                                                        <p>Nam liber tempor cum soluta nobis eleifend option congue
                                                            nihil imperdiet doming id quod mazim placerat facer possim
                                                            assum. Typi non habent claritatem insitam; est usus legentis
                                                            in iis qui facit eorum claritatem.</p>
                                                    </div><!-- end of comment-body -->

                                                </article><!-- end of comment -->

                                                <ul class="children">

                                                    <li class="comment byuser comment-author-saqib-sarwar bypostauthor odd alt depth-2"
                                                        id="li-comment-3">
                                                        <article id="comment-3">

                                                            <a href="#">
                                                                <img alt=""
                                                                     src="http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                                                     class="avatar avatar-60 photo" height="60"
                                                                     width="60">
                                                            </a>

                                                            <div class="comment-meta">

                                                                <h5 class="author">
                                                                    <cite class="fn">saqib sarwar</cite>
                                                                    - <a class="comment-reply-link" href="#">Reply</a>
                                                                </h5>

                                                                <p class="date">
                                                                    <a href="#">
                                                                        <time datetime="2013-02-26T13:20:14+00:00">
                                                                            February 26, 2013 at 1:20 pm
                                                                        </time>
                                                                    </a>
                                                                </p>

                                                            </div><!-- end .comment-meta -->

                                                            <div class="comment-body">
                                                                <p>Nam liber tempor cum soluta nobis eleifend option
                                                                    congue nihil imperdiet doming id quod mazim placerat
                                                                    facer possim assum. Typi non habent claritatem
                                                                    insitam; est usus legentis in iis qui facit eorum
                                                                    claritatem. Investigationes demonstraverunt lectores
                                                                    legere me lius quod ii legunt saepius. Claritas est
                                                                    etiam processus dynamicus, qui sequitur mutationem
                                                                    consuetudium lectorum. Mirum est notare quam littera
                                                                    gothica, quam nunc putamus parum claram,
                                                                    anteposuerit litterarum formas humanitatis per
                                                                    seacula quarta decima et quinta decima. Eodem modo
                                                                    typi, qui nunc nobis videntur parum clari, fiant
                                                                    sollemnes in futurum.</p>
                                                            </div><!-- end of comment-body -->
                                </dd>

                                <dt><span></span>评论我的</dt>
                                <dd>
                                    <section id="comments">

                                        <h3 id="comments-title">(3) Comments</h3>

                                        <ol class="commentlist">

                                            <li class="comment even thread-even depth-1" id="li-comment-2">
                                                <article id="comment-2">

                                                    <a href="#">
                                                        <img alt=""
                                                             src="http://1.gravatar.com/avatar/50a7625001317a58444a20ece817aeca?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                                             class="avatar avatar-60 photo" height="60" width="60">
                                                    </a>

                                                    <div class="comment-meta">

                                                        <h5 class="author">
                                                            <cite class="fn">
                                                                <a href="#" rel="external nofollow" class="url">John
                                                                    Doe</a>
                                                            </cite>
                                                            - <a class="comment-reply-link" href="#">Reply</a>
                                                        </h5>

                                                        <p class="date">
                                                            <a href="#">
                                                                <time datetime="2013-02-26T13:18:47+00:00">February 26,
                                                                    2013 at 1:18 pm
                                                                </time>
                                                            </a>
                                                        </p>

                                                    </div><!-- end .comment-meta -->

                                                    <div class="comment-body">
                                                        <p>Duis autem vel eum iriure dolor in hendrerit in vulputate
                                                            velit esse molestie consequat, vel illum dolore eu feugiat
                                                            nulla facilisis at vero eros et accumsan et iusto odio
                                                            dignissim qui blandit praesent luptatum zzril delenit augue
                                                            duis dolore te feugait nulla facilisi.</p>
                                                        <p>Nam liber tempor cum soluta nobis eleifend option congue
                                                            nihil imperdiet doming id quod mazim placerat facer possim
                                                            assum. Typi non habent claritatem insitam; est usus legentis
                                                            in iis qui facit eorum claritatem.</p>
                                                    </div><!-- end of comment-body -->

                                                </article><!-- end of comment -->

                                                <ul class="children">

                                                    <li class="comment byuser comment-author-saqib-sarwar bypostauthor odd alt depth-2"
                                                        id="li-comment-3">
                                                        <article id="comment-3">

                                                            <a href="#">
                                                                <img alt=""
                                                                     src="http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                                                     class="avatar avatar-60 photo" height="60"
                                                                     width="60">
                                                            </a>

                                                            <div class="comment-meta">

                                                                <h5 class="author">
                                                                    <cite class="fn">saqib sarwar</cite>
                                                                    - <a class="comment-reply-link" href="#">Reply</a>
                                                                </h5>

                                                                <p class="date">
                                                                    <a href="#">
                                                                        <time datetime="2013-02-26T13:20:14+00:00">
                                                                            February 26, 2013 at 1:20 pm
                                                                        </time>
                                                                    </a>
                                                                </p>

                                                            </div><!-- end .comment-meta -->

                                                            <div class="comment-body">
                                                                <p>Nam liber tempor cum soluta nobis eleifend option
                                                                    congue nihil imperdiet doming id quod mazim placerat
                                                                    facer possim assum. Typi non habent claritatem
                                                                    insitam; est usus legentis in iis qui facit eorum
                                                                    claritatem. Investigationes demonstraverunt lectores
                                                                    legere me lius quod ii legunt saepius. Claritas est
                                                                    etiam processus dynamicus, qui sequitur mutationem
                                                                    consuetudium lectorum. Mirum est notare quam littera
                                                                    gothica, quam nunc putamus parum claram,
                                                                    anteposuerit litterarum formas humanitatis per
                                                                    seacula quarta decima et quinta decima. Eodem modo
                                                                    typi, qui nunc nobis videntur parum clari, fiant
                                                                    sollemnes in futurum.</p>
                                                            </div><!-- end of comment-body -->
                                </dd>


                            </dl>
                        </div>
                        <div class="tab-content">
                            <div class="span8 page-content">
                                <article class="type-page hentry clearfix">
                                    <h1 class="post-title">修改密码</h1>
                                    <hr>
                                </article>
                                <form id="contact-form" class="row" action="../user?flag=change" method="post">
                                    <div class="span2">
                                        <label for="password">原密码<span>*</span> </label>
                                    </div>
                                    <div class="span6">
                                        <input type="text" name="password" id="password" class="required input-xlarge" required="required">
                                        <span id="p1"></span>
                                    </div>
                                    <div class="span2">
                                        <label for="newPassword">新密码<span>*</span> </label>
                                    </div>
                                    <div class="span6">
                                        <input type="text" name="newPassword" id="newPassword" class="required input-xlarge" required="required">
                                    </div>
                                    <div class="span2">
                                        <label for="confirmNewPassword">再次确认<span>*</span> </label>
                                    </div>
                                    <div class="span6">
                                        <input type="text" name="confirmNewPassword" id="confirmNewPassword"
                                               class="required input-xlarge" required="required">
                                    </div>
                                    <div class="span6 offset2 bm30">
                                        <input type="submit" name="changeSubmit" id="changeSubmit" value="确认" class="btn btn-inverse" disabled="disabled">
                                    </div>
                                    <div class="span6 offset2 error-container"></div>
                                    <div class="span8 offset2" id="message-sent"></div>
                                </form>
                                <!-- end of page content -->
                </article>
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
<script type='text/javascript' src='main/js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='main/js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='main/js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='main/js/jflickrfeed.js'></script>
<script type='text/javascript' src='main/js/jquery.liveSearch.js'></script>
<script type='text/javascript' src='main/js/jquery.form.js'></script>
<script type='text/javascript' src='main/js/jquery.validate.min.js'></script>
<script type='text/javascript' src='main/js/custom.js'></script>
<script type="text/javascript" src="main/js/changeUser.js"></script>
<script type="text/javascript" src="main/js/changeInfo.js"></script>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>

