<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Post,java.util.ArrayList" %>
<html>
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Knowledge Base Theme</title>
    <link rel="shortcut icon" href="images/favicon.png"/>
    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
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
    <script src="js/html5.js"></script></script>
    <![endif]-->
    <%
        ArrayList posts = (ArrayList) request.getAttribute("posts");
        Integer postNumber = (Integer) request.getAttribute("postNumber");
        int pageNumber = (postNumber.intValue() / 5);
        int pagelast = (postNumber.intValue() % 5);
    %>
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
                            <li class="current-menu-item"><a href="index.jsp">主页</a></li>
                            <li><a href="post.jsp">发帖</a></li>
                            <li><a href="../allpost">所有帖子</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
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
<!-- Start of Search Wrapper -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">比格论坛</h3>
        <p class="search-tag-line">民议世间百态 众说天下风云——精彩尽在 比格论坛</p>
        <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
            <input class="search-term required" type="text" id="s" name="s" placeholder="Type your search terms here"
                   title="* Please enter a search term!"/>
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
            <div class="span8 main-listing">
                <%--//循环取帖子--%>
                <%for (int i = 0; i < posts.size(); i++) {%>
                <article class="format-standard type-post hentry clearfix">
                    <%
                        Post post = (Post) posts.get(i);
                        String title = post.getTitle();
                        String type = post.getType();
                        String content = post.getContent();
                        String time = post.getTime();
                    %>
                    <header class="clearfix">
                        <h3 class="post-title">
                            <a href="single.html"><%=title%>
                            </a>
                        </h3>
                        <div class="post-meta clearfix">
                            <span class="date"><%=time%></span>
                            <span class="category"><a href="#"><%=type%></a></span>
                            <span class="like-count">66</span>
                        </div><!-- end of post meta -->
                    </header>
                    <p><%=content%>
                    </p>
                </article>
                <%}%>
                <%
                    //怎么把pageNow传进来
                    //这里需要把servlet里的pageNow传进来
                    Integer pageFirst = (Integer) request.getAttribute("pageFirst");
                    int pageNow = pageFirst.intValue();
                    int pageSecond = pageNow + 1;
                    int pageThird = pageNow + 2;
                %>
                <!--分页-->
                <div id="pagination">
                    <a class="btn active"><%=pageNow%>
                    </a>
                    <% String secondPage = "../allpost?pageNow=" + pageSecond;
                        String thirdPage = "../allpost?pageNow=" + pageThird;
                        String up = "../allpost?pageNow=" + (pageNow - 1);
                        String next = "../allpost?pageNow=" + (pageNow + 1);
                        if (pageNow == pageNumber && pagelast == 0) {
                        } else if (pageNow > pageNumber) {
                        } else {%>
                    <a href=<%=secondPage%> class="btn"><%=pageSecond%>
                    </a>
                    <%
                        }
                        if (pageNow + 1 == pageNumber && pagelast == 0) {
                        } else if (pageNow + 1 > pageNumber) {
                        } else {
                    %>
                    <a href=<%=thirdPage%> class="btn"><%=pageThird%>
                    </a>
                    <%}%>
                    <%--这里能不能进行运算--%>
                    <%
                        if (pageNow == 1) {
                        } else {
                    %>
                    <a href=<%=up%> class="btn">up</a>
                    <%
                        }
                        if (pageNow == pageNumber && pagelast == 0) {
                        } else if (pageNow > pageNumber) {
                        } else {%>
                    <a href=<%=next%> class="btn">next</a>
                    <%}%>
                </div>
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
                <!-- end of sidebar -->
        </div>
    </div>
</div>
<!-- End of Page Container -->
<!-- 背景图片 -->
<footer id="footer-wrapper"></footer>
<!-- End of Footer -->

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
