<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<head>
    <title>Admin view </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Dance whirl Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/resources/css/style2.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main-gallery.css" type="text/css" media="screen" />  <!-- flexslider-CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->

    <!-- //Custom Theme files -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Arapey:400,400i" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300i,400,400i,600,600i,700" rel="stylesheet">
    <!-- //web-fonts -->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- banner -->
<div id="home" class="w3ls-banner">

    <!-- banner-text -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides callbacks callbacks1" id="slider4">
                <li>
                    <div class="w3layouts-banner-top">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3><span>Registration </span> </h3>
                                <p>Exclusive right of TryGym</p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top1">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3><span>Registration </span> </h3>
                                <p>Exclusive right of TryGym</p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top2">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3><span>Registration </span> </h3>
                                <p>Exclusive right of TryGym</p>
                            </div>

                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>

        <!--banner Slider starts Here-->
    </div>
    <!-- header -->
    <div class="header-w3layouts">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">TryGym</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h1><a class="navbar-brand" href="http://localhost:8080/gym/index"><font color="red">T</font>ry<font color="red">G</font>ym</a></h1>
                </div>

                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <form id="logoutForm" method="POST" action="${contextPath}/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>

                    <h2 style="color: white">${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

                </c:if>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                        <li class="hidden"><a class="page-scroll" href="#page-top"></a>	</li>
                        <li><a href="http://localhost:8080/">Home</a></li>
                        <li><a href="http://localhost:8080/member">Registration</a></li>
                        <li><a href="http://localhost:8080/view_details">Member Details</a></li>
                        <li><a href="http://localhost:8080/view_account">Account Summary</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
    </div>
    <!-- //header -->
</div>
<!-- //banner -->

<div class="member_form_container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <span>${registered}</span>

        <!--personal details form-->

        <h2 class="form-signin-heading" style="color: cornflowerblue">Personal Details</h2>

        <spring:bind path="name">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="Name"
                            autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="address">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="address" class="form-control" placeholder="Address"
                            autofocus="true"></form:input>
                <form:errors path="address"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="nic">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="nic" class="form-control" placeholder="NIC: 931234567V"
                            autofocus="true"></form:input>
                <form:errors path="nic"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="contact">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="contact" class="form-control" placeholder="Contact Number: 0711234567"
                            autofocus="true"></form:input>
                <form:errors path="contact"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="job">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="job" class="form-control" placeholder="Occupation"
                            autofocus="true"></form:input>
                <form:errors path="job"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="height">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="height" class="form-control" placeholder="Initial height:- Ex: 5' 3'' "
                            autofocus="true"></form:input>
                <form:errors path="height"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="weight">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="weight" class="form-control" placeholder="Initial weight:- Ex: 50 Kg"
                            autofocus="true"></form:input>
                <form:errors path="weight"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="health">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:textarea type="text" path="health" rows="5" cols="30" class="form-control" placeholder="Health deatils"
                               autofocus="true"></form:textarea>
                <form:errors path="health"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="pack">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:select type="text" path="pack" class="form-control" placeholder="Package"
                             autofocus="true">
                    <form:option value="">-----Select a Package-----</form:option>
                    <form:options items="${packageList}"/>
                </form:select>
                <form:errors path="pack"></form:errors>
            </div>
        </spring:bind>

        <!-- Assign workout Schedule-->
        <spring:bind path="workout">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:select type="text" path="workout" class="form-control" placeholder="Workout Schedule"
                             autofocus="true">
                    <form:option value="">-----Assign Workout-----</form:option>
                    <form:options items="${workoutList}"/>
                </form:select>
                <form:errors path="workout"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="duration">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:select type="text" path="duration" class="form-control" placeholder="Duration"
                             autofocus="true">
                    <form:option value="">-----Set workout duration-----</form:option>
                    <form:options items="${durationList}"/>
                </form:select>
                <form:errors path="duration"></form:errors>
            </div>
        </spring:bind>


        <!--create account form-->
        <h2 class="form-signin-heading" style="color: cornflowerblue">Create an account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="email">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="email" path="email" class="form-control"
                            placeholder="Email"></form:input>
                <form:errors path="email"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>

    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>


<!-- footer -->
<div class="copy-right">
    <p>&copy; 2017 TryGym. All rights reserved | Design by SisGrammers</p>
</div>

<!-- //footer -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/particles.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

<!-- skills -->

<script src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider4").responsiveSlides({
            auto: true,
            pager:true,
            nav:false,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider3").responsiveSlides({
            auto: true,
            pager:false,
            nav:true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>

<!-- js -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!-- search-jQuery -->
<!-- pop-up-box -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--//pop-up-box -->
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });
    });
</script>

<!-- Map-JavaScript -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
    google.maps.event.addDomListener(window, 'load', init);
    function init() {
        var mapOptions = {
            zoom: 11,
            center: new google.maps.LatLng(40.6700, -73.9400),
            styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
        };
        var mapElement = document.getElementById('map');
        var map = new google.maps.Map(mapElement, mapOptions);
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(40.6700, -73.9400),
            map: map
        });
    }
</script>
<!-- //Map-JavaScript -->


<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){

            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->


<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
