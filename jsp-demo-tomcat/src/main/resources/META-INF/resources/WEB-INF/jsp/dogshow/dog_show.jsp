<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");

%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

    <!-- Basic Page Needs ==================================================
    ================================================== -->

    <meta charset="utf-8">
    <title>Freebix Responsive Site Template</title>
    <meta name="description" content="Place to put your description text">
    <meta name="author" content="">
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Mobile Specific Metas ==================================================
    ================================================== -->

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

    <!-- CSS ==================================================
    ================================================== -->

    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/screen.css">
    <link rel="stylesheet" href="css/search.css">
    <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" />

    <!-- Favicons ==================================================
    ================================================== -->

    <link rel="shortcut icon" href="favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

    <!-- Google Fonts ==================================================
    ================================================== -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Content Part ==================================================
================================================== -->
<div id="header">
    <div class="container">
        <!-- Header | Logo, Menu
            ================================================== -->
        <div class="logo"><a href="${pageContext.request.contextPath}/home_page" al><img src="images/logo.png" alt="" style="height: 120px; margin-bottom: 10px"/></a></div>
        <div class="mainmenu">
            <div id="mainmenu">
                <ul class="sf-menu">
                    <li><a href="${pageContext.request.contextPath}/home_page">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
                    <li><a>Register</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/register_dog">Register Dog</a></li>
                            <li><a>Register to Contest</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/reg_participant">Register as Participant</a></li>
                                    <li><a href="${pageContext.request.contextPath}/reg_dog_contest">Register dog to contest</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/dogshows" id="visited">Dog Shows</a></li>
                    <li><a href="${pageContext.request.contextPath}/add_dog_show">Add dog show</a></li>
                    <li><a href="${pageContext.request.contextPath}/register_expert">Add Expert</a></li>
                    <li>
                        <nav class="main-nav ">
                            <!-- ссылки на вызов форм -->
                    <li><a  href="#0">Sign up / Sign in</a></li>
                    <%--<li><a class="cd-signup" href="#0">Регистрация</a></li>--%>
                    </nav>
                    </li>
                </ul>
            </div>
            <!-- mainmenu ends here -->

            <!-- Responsive Menu -->
            <form id="responsive-menu" action="#" method="post">
                <select>
                    <option value="">Navigation</option>
                    <option value="${pageContext.request.contextPath}/home_page">Home</option>
                    <option value="${pageContext.request.contextPath}/about">About</option>
                    <option value="${pageContext.request.contextPath}/contact">Contact</option>
                    <option value="${pageContext.request.contextPath}/register_dog">Register Dog</option>
                    <option value="${pageContext.request.contextPath}/register_participant">Register as Participant</option>
                    <option value="${pageContext.request.contextPath}/dogshows">Dog Shows</option>
                    <option value="${pageContext.request.contextPath}/reg">Registration test</option>
                    <option value="${pageContext.request.contextPath}/register_dog">Add Dog test</option>
                    <option value="${pageContext.request.contextPath}/add_dog_show">Add dog show test</option>
                    <option value="${pageContext.request.contextPath}/register_expert">Add Expert test</option>
                </select>
            </form>
        </div>
        <!-- mainmenu ends here -->
    </div>
    <!-- container ends here -->
</div>
<!-- header ends here -->
<!--Breadcrumbs ==================================================
================================================== -->
<div class="breadcrumbs">
    <div class="container">
        <header>
            <h3>Dog Shows</h3>
            </header>
    </div>
    <!-- container ends here -->
    <hr class="separator1">
</div>
<!-- breadcrumbs ends here -->
<!-- Blog ==================================================
================================================== -->
<div class="container">
    <div class="ten columns alpha">
            <c:forEach var="dsh" items="${dogshows_list}">
                <form:form method="POST" action="delete_show">
                <article class="post">
                    <h3><a href="${pageContext.request.contextPath}/showDet/${dsh.dogshow_id}">${dsh.title}</a></h3><br>
                <a href="pics/${dsh.dogshow_id}.jpg" class="prettyPhoto[gal]"><img class="shadow" src="pics/${dsh.dogshow_id}.jpg" alt="" height="200" /></a>
                <div class="entry-date">
                    <%--KOSTIL--%>
                    <p></p>
                    <p><fmt:formatDate value="${dsh.date}" pattern="dd MMM yyyy" /></p>
                </div>
                <p>${dsh.description}</p>
                    <input hidden value="<c:out value="${dsh.dogshow_id}"/>" name="dogshow_id" id="${dsh.dogshow_id}" />
                <a href="${pageContext.request.contextPath}/showDet/${dsh.dogshow_id}" style="font-size: 15px">more <span>-></span></a>

                <div align="right">
                    <input type="submit" value="Delete"/>
                </div>

                    </form:form>
                </article>
            </c:forEach>
    </div>
    <!-- ten columns ends here -->

    <aside class="six columns omega shadow1">
        <section class="recentnews">
            <h4 class="sidebarheader">Additional instruments</h4>
            <ul class="tabs">
                <li><a class="active">Search</a></li>
            </ul>
            <ul class="tabs-content">
                <li class="active" id="trends">
                    <p>Use this form to search that Dog Show You want.</p>
                    <form action="/search_dogshow" method="POST" class="search_bar small">
                        <div class="search_dropdown" style="width: 1px;" id="search_type" name="search_type">
                            <span>Search Type</span>
                            <ul>
                                <li><input type="hidden" value= 1 name="search_type">Title</li>
                                <li><input type="hidden" value= 2 name="search_type">Sponsor</li>
                                <li><input type="hidden" value= 3 name="search_type">Organizer</li>
                                <li><input type="hidden" value= 4 name="search_type">Contest Type</li>
                            </ul>
                        </div>
                        <input type="text" placeholder="Search for anything" name="search_text" id="search_text"/>
                    <%--<select name="search_type" id="search_typ">--%>
                        <%--<option disabled> Choose Search Type</option>--%>
                        <%--<option value="1">Search By Title</option>--%>
                        <%--<option value="2">Search By Sponsor</option>--%>
                        <%--<option value="3">Search By Organizer</option>--%>
                        <%--<option value="4">Search By Contest type</option>--%>
                    <%--</select>--%>
                        <br>
                        <%--<input type="text" name="search_text" id="search_text">--%>
                        <%--<input type="submit" value="Search">--%>
                        <button type="submit" value="Search">Search</button>
                    </form>
                </li>
            </ul>
        </section>
    </aside>
    <!--end six columns-->
</div>
<!-- container ends here -->
<!-- Socialize ==================================================
================================================== -->
<hr class="separator2">
<div class="socialsblock">
    <div class="container socialize">
        <h3>Socialize with us!</h3>
        <section class="socials">
            <ul class="socials">
                <li><a href="#"><img src="images/socials/twitter.png" alt="" /></a></li>
                <li><a href="#"><img src="images/socials/facebook.png" alt="" /></a></li>
                <li><a href="#"><img src="images/socials/dribbble.png" alt="" /></a></li>
                <li><a href="#"><img src="images/socials/google+.png" alt="" /></a></li>
                <li><a href="#"><img src="images/socials/linkedin.png" alt="" /></a></li>
                <li><a href="#"><img src="images/socials/youtube.png" alt="" /></a></li>
            </ul>
        </section>
    </div>
    <!-- container ends here -->
</div>
<!-- socialsblock ends here -->
<!-- Footer ==================================================
================================================== -->
<div class="footer">
    <div class="container">
        <div class="one_fourth">
            <h3>Contact Informations</h3>
            <p><span class="orange"><strong>Address:</strong></span> <br>
                Kharkiv, Ukraine</p>
            <p><span class="orange"><strong>Phone:</strong></span> <br>
                + 38 (093) 867 6925<br>
            </p>
            <p><span class="orange"><strong>Email:</strong></span> <br>
                safronov.maksim.v@gmail.com<br>
            </p>
        </div>
        <!-- four columns ends here -->
        <div class="one_fourth lastcolumn">
            <h3>About</h3>
            <p>There is a service, which help You to be aware of Dog Shows.</p>
        </div>
        <!-- four columns ends here -->
    </div>
    <!-- container ends here -->
</div>
<!-- footer ends here -->
<!-- Copyright ==================================================
================================================== -->
<div id="copyright">
    <div class="container">
        <p class="copyright">&copy; Copyright 2017. &quot;SERVICE NAME&quot; by Max Design. All rights reserved.</p>
    </div>
    <!-- container ends here -->
</div>
<!-- copyright ends here -->
<!-- End Document
================================================== -->
<!-- Scripts ==================================================
================================================== -->
<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="js/search.js" type="text/javascript"></script>
<!-- Main js files -->
<script src="js/screen.js" type="text/javascript"></script>
<!-- Tabs -->
<script src="js/tabs.js" type="text/javascript"></script>
<!-- Include prettyPhoto -->
<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
<!-- Include Superfish -->
<script src="js/superfish.js" type="text/javascript"></script>
<script src="js/hoverIntent.js" type="text/javascript"></script>
<!-- Flexslider -->
<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
<!-- Modernizr -->
<script type="text/javascript" src="js/modernizr.custom.29473.js"></script>
</body>
</html>
