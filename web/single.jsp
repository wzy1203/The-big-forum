<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <title>Knowledge Base Theme</title>

    <link rel="shortcut icon" href="images/favicon.png"/>

    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css' href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='responsive-css-css' href='css/responsive5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='pretty-photo-css-css' href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css'
          media='all'/>
    <link rel='stylesheet' id='main-css-css' href='css/main5152.css?ver=1.0' type='text/css' media='all'/>
    <link rel='stylesheet' id='custom-css-css' href='css/custom5152.html?ver=1.0' type='text/css' media='all'/>


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script></script>
    <![endif]-->

</head>

<body>

<!-- Start of Header -->
<div class="header-wrapper">
    <header>
        <div class="container">
            <div class="logo-container">
                <!-- Website Logo -->
                <!--<a href="index-2.html"  title="Knowledge Base Theme">
                                                  <img src="images/logo.png" alt="Knowledge Base Theme">
                                          </a></div>-->
                <!-- Start of Main Navigation -->
                <nav class="main-nav">
                    <div class="menu-top-menu-container">
                        <ul id="menu-top-menu" class="clearfix">
                            <li class="current-menu-item"><a href="index.jsp">主页</a></li>
                            <li><a href="../allpost">所有帖子</a></li>
                            <li><a href="articles-list.jsp">所有帖子</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                            <li><a href="login.jsp">登陆/注册</a></li>
                        </ul>
                    </div>
                </nav>
                <!-- End of Main Navigation -->
            </div>
    </header>
</div>
<!-- End of Header -->

<!-- Start of Search Wrapper -->
<!-- 网页大标题和搜索栏 -->
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">比格论坛</h3>
        <p class="search-tag-line">民议世间百态 众说天下风云——精彩尽在 比格论坛</p>
        <form id="search-form" class="search-form clearfix" method="post" action="allpost?flag=search">
            <input class="search-term required" type="text" id="keyword" name="keyword"
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

            <!-- start of page content -->
            <div class="span8 page-content">
                <article class=" type-post format-standard hentry clearfix">

                    <h1 class="post-title"><a href="#">Integrating WordPress with Your Website</a></h1>

                    <div class="post-meta clearfix">
                        <span class="date">25 Feb, 2013</span>
                        <span class="category"><a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                        <span class="comments"><a href="#" title="Comment on Integrating WordPress with Your Website">3 Comments</a></span>
                        <span class="like-count">66</span>
                    </div><!-- end of Post meta -->

                    <p>Many of us work in an endless stream of tasks, browser tasks, social media, emails, meetings,
                        rushing from one thing to another, never pausing and never ending.&nbsp;Then the day is over,
                        and we are exhausted, and we often have very little to show for it. And we start the next day,
                        ready for a mindless stream of tasks and distractions.</p>

                    <p>I am a fan of going against the stream of what most people do, and taking a step back. Is it
                        really worth it? Is this the best way? Are we losing our lives to busy-ness and distraction?</p>

                    <p>What if we did less instead?&nbsp;Of course, I’ve been suggesting doing less for six years here
                        on Zen Habits, but it’s a topic worth revisiting, because&nbsp;<em>it is so necessary</em>.
                        Today I offer a short guide to doing less, for those willing to give it a try.</p>

                    <h3>The Benefits</h3>

                    <p>I could probably write&nbsp;<a title="The Power of Less"
                                                      href="http://www.amazon.com/gp/product/1401309704/ref=as_li_ss_tl?ie=UTF8&amp;tag=zenhab-20&amp;linkCode=as2&amp;camp=1789&amp;creative=390957&amp;creativeASIN=1401309704">an
                        entire book</a>&nbsp;on the benefits of doing less, but here’s the short version:</p>

                    <ul>
                        <li><strong>You accomplish more</strong>. No, you don’t get more done (you’re doing less, after
                            all), but if you do less and focus on the important stuff, you actually achieve better
                            results, more meaningful accomplishments. This is how I’m able to work less but still write
                            hundreds of posts a year (on various sites), create ebooks and courses, and more.
                        </li>
                        <li><strong>You have less anxiety</strong>. When you let go of the distractions and the
                            non-essential, you free yourself from the fear that you need to do these things. You learn
                            that your world doesn’t fall apart when you let these things go.
                        </li>
                        <li><strong>You enjoy life more</strong>. Taking time to really focus on an important task, or
                            enjoy the little things, rather than rushing through them, is much more enjoyable.
                        </li>
                        <li><strong>You create time</strong>. When you do less, all of a sudden you have free time! What
                            can you do with all that time? How about spend some time with loved ones, read, write, make
                            music, exercise, cook healthy meals, start your own business, meditate, do yoga?
                        </li>
                    </ul>

                    <p>I’ll stop with those benefits �?they’re sufficient for getting started. But I think you’ll
                        discover others as you give this a try.</p>

                    <h3>Savor Your Tasks</h3>

                    <p>I wrote recently about&nbsp;<a href="#">how to savor life</a>&nbsp;�?and this applies to your
                        to-do list.</p>

                    <p>When you do a task �?let’s say writing something �?create space around that task. Really pay
                        attention, really pour yourself into it, and enjoy it. Any task can be enjoyable with the savor
                        mindset �?yes, even cleaning and doing taxes.</p>

                    <p>When you do the task, don’t rush through it, but be mindful, be present, and smile.&nbsp;When
                        you’re done with the task, savor your accomplishment instead of just looking for what’s next.
                        Breathe between tasks.</p>

                    <blockquote><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                        euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                        quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
                        consequat.</p></blockquote>
                    <p>Instead, think of yourself as a collector. Each day is limited, our lives are limited, and we can
                        try to cram as many things as we possibly can into these containers, or we can collect just the
                        experiences worthy of being in these limited days.</p>

                    <p>What would you include in your day if you were culling experiences and tasks down to the best
                        ones? My day, as an example, often contains these things I love: meditation, writing, coffee and
                        reading, spending time with my wife and kids, exercise, eating healthy meals, helping people,
                        going for a walk, more reading, drinking a glass or two of red wine. Not every day has those
                        things, and not in that order, but those are some of the things I find worthy of my day.</p>

                    <h3>Creating a Day of Less</h3>

                    <p>Can you do less today? How would you do it?</p>

                    <p>The answer is yes, you can do less today, even if you’ve already started with a rush of small
                        tasks. Here’s what I suggest:</p>

                    <ol>
                        <li><strong>Take a breath</strong>. Take a moment to pause in your busy day, and breathe. Pay
                            attention to your breath for a minute, then pay attention to your body, how you’re sitting,
                            whether your jaw is clenched, what is tense.
                        </li>
                        <li><strong>Now consider your day</strong>. What have you done already today? What is on the
                            horizon for the rest of the day? Is there anything you can let go of? Can you create spaces
                            between your tasks? Can you cull your tasks, getting rid of the non-essential, just leaving
                            the best?
                        </li>
                        <li><strong>Learn to know the essential</strong>. It takes time to figure out what tasks give
                            you the most impact on your life, your career, your ability to help others and change the
                            world. But start learning today �?pick what you think is most essential, clear some space,
                            and just work on those things. Savor them.
                        </li>
                        <li><strong>Reduce distractions</strong>. Consider going on a digital cleanse �?take a day or a
                            week off of social media, news, entertainment/gossip sites, the places you usually spend on
                            distractions. What will you do when you feel like some distraction? Meditate, exercise,
                            create.
                        </li>
                    </ol>

                    <p>Breathe. Enjoy the new space. Savor the beauty of doing less.</p>

                </article>

                <div class="like-btn">

                    <form id="like-it-form" action="#" method="post">
                        <span class="like-it ">66</span>
                        <input type="hidden" name="post_id" value="99">
                        <input type="hidden" name="action" value="like_it">
                    </form>

                                                        <span class="tags">
                                                                <strong>Tags:&nbsp;&nbsp;</strong><a href="#" rel="tag">basic</a>, <a
                                                                href="#" rel="tag">setting</a>, <a
                                                                href="http://knowledgebase.inspirythemes.com/tag/website/"
                                                                rel="tag">website</a>
                                                        </span>

                </div>

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
                                            <a href="#" rel="external nofollow" class="url">John Doe</a>
                                        </cite>
                                        - <a class="comment-reply-link" href="#">Reply</a>
                                    </h5>

                                    <p class="date">
                                        <a href="#">
                                            <time datetime="2013-02-26T13:18:47+00:00">February 26, 2013 at 1:18 pm
                                            </time>
                                        </a>
                                    </p>

                                </div><!-- end .comment-meta -->

                                <div class="comment-body">
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
                                        consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
                                        et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
                                        dolore te feugait nulla facilisi.</p>
                                    <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming
                                        id quod mazim placerat facer possim assum. Typi non habent claritatem insitam;
                                        est usus legentis in iis qui facit eorum claritatem.</p>
                                </div><!-- end of comment-body -->

                            </article><!-- end of comment -->

                            <ul class="children">

                                <li class="comment byuser comment-author-saqib-sarwar bypostauthor odd alt depth-2"
                                    id="li-comment-3">
                                    <article id="comment-3">

                                        <a href="#">
                                            <img alt=""
                                                 src="http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                                 class="avatar avatar-60 photo" height="60" width="60">
                                        </a>

                                        <div class="comment-meta">

                                            <h5 class="author">
                                                <cite class="fn">saqib sarwar</cite>
                                                - <a class="comment-reply-link" href="#">Reply</a>
                                            </h5>

                                            <p class="date">
                                                <a href="#">
                                                    <time datetime="2013-02-26T13:20:14+00:00">February 26, 2013 at 1:20
                                                        pm
                                                    </time>
                                                </a>
                                            </p>

                                        </div><!-- end .comment-meta -->

                                        <div class="comment-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet
                                                doming id quod mazim placerat facer possim assum. Typi non habent
                                                claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
                                                Investigationes demonstraverunt lectores legere me lius quod ii legunt
                                                saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem
                                                consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc
                                                putamus parum claram, anteposuerit litterarum formas humanitatis per
                                                seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis
                                                videntur parum clari, fiant sollemnes in futurum.</p>
                                        </div><!-- end of comment-body -->

                                    </article><!-- end of comment -->

                                </li>
                            </ul>
                        </li>

                        <li class="comment even thread-odd thread-alt depth-1" id="li-comment-4">
                            <article id="comment-4">

                                <a href="#">
                                    <img alt=""
                                         src="http://1.gravatar.com/avatar/50a7625001317a58444a20ece817aeca?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
                                         class="avatar avatar-60 photo" height="60" width="60">
                                </a>

                                <div class="comment-meta">

                                    <h5 class="author">
                                        <cite class="fn"><a href="#" rel="external nofollow" class="url">John
                                            Doe</a></cite>
                                        - <a class="comment-reply-link" href="#">Reply</a>
                                    </h5>

                                    <p class="date">
                                        <a href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/#comment-4">
                                            <time datetime="2013-02-26T13:27:04+00:00">February 26, 2013 at 1:27 pm
                                            </time>
                                        </a>
                                    </p>

                                </div><!-- end .comment-meta -->

                                <div class="comment-body">
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                                        euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                                        minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
                                        aliquip ex ea commodo consequat. </p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
                                        consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
                                        et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
                                        dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend
                                        option congue nihil imperdiet doming id quod mazim placerat facer possim
                                        assum.</p>
                                </div><!-- end of comment-body -->

                            </article><!-- end of comment -->
                        </li>
                    </ol>

                    <div id="respond">

                        <h3>发表评论</h3>

                        <div class="cancel-comment-reply">
                            <a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Click here
                                to cancel reply.</a>
                        </div>


                        <form action="#" method="post" id="commentform">
                            <div>
                                <label for="comment"></label>
                                <textarea class="span8" name="comment" id="comment" cols="58" rows="10"></textarea>
                                                                    <span class="search-form clearfix">
                                                                    <input class="search-btn" type="submit" value="发送"/>
                                                                    </span></div>

                        </form>

                    </div>

                </section><!-- end of comments -->

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
                            <li><a href="information.jsp">个人中心</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                        </ul>
                    </div>
                </section>


                <section class="widget">
                    <h3 class="title">最新动态</h3>
                    <ul class="articles">
                        <li class="article-entry standard">
                            <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>
                            <span class="article-meta">25 Feb, 2013 in <a href="#"
                                                                          title="View all posts in Server &amp; Database">Server &amp; Database</a></span>
                            <span class="like-count">66</span>
                        </li>
                        <li class="article-entry standard">
                            <h4><a href="single.html">WordPress Site Maintenance</a></h4>
                            <span class="article-meta">24 Feb, 2013 in <a href="#"
                                                                          title="View all posts in Website Dev">Website Dev</a></span>
                            <span class="like-count">15</span>
                        </li>
                        <li class="article-entry video">
                            <h4><a href="single.html">Meta Tags in WordPress</a></h4>
                            <span class="article-meta">23 Feb, 2013 in <a href="#"
                                                                          title="View all posts in Website Dev">Website Dev</a></span>
                            <span class="like-count">8</span>
                        </li>
                        <li class="article-entry image">
                            <h4><a href="single.html">WordPress in Your Language</a></h4>
                            <span class="article-meta">22 Feb, 2013 in <a href="#"
                                                                          title="View all posts in Advanced Techniques">Advanced Techniques</a></span>
                            <span class="like-count">6</span>
                        </li>
                    </ul>
                </section>


                <section class="widget"></section>
                <section class="widget"></section>

            </aside>
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
<script type='text/javascript' src='js/prettyphoto/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='js/prettyphoto/jflickrfeed.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.liveSearch.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.form.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.validate.min.js'></script>
<script type='text/javascript' src='js/prettyphoto/custom.js'></script>

<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>
