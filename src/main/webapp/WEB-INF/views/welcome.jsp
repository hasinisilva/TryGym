<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User profile</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top">
<div id="home" class="w3ls-banner">
    <!-- header -->
    <div class="header-w3layouts">
        <!-- Navigation -->
        <nav>
            <div>
                <div class="navbar-header page-scroll">
                    <h2><a href="http://localhost:8080/gym/index"><img src="${pageContext.request.contextPath}/resources/images/trygym.png"></a></h2>
                    <h4 class="form-heading" style="color: white ;">Workout Your Dream</h4>
                </div>
            </div>
        </nav>
    </div>
    <!-- //header -->
</div>

<div class="container">
    <div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2 style="color: white">Welcome TryGym Member: ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>
    </div>

    <div class="video text-center" >
        <video autoplay loop id="bgvid" controls>
            <source src="<c:url value="/resources/video/NO-EXCUSES.mp4" />" type="video/mp4">
        </video>
    </div>

    <h2 style="color: #0e86c7">Allocate gym resources</h2>
        <p style="color: snow">Provide: You can use this link to allocate gym resources before you go to the gym. You are allowed to allocate only one resource
        at a time. You can cancel your reservation within 2 hours.</p>
        <br>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/gym/reserve">Reserve Resources</a> </button>
        <br>
        <br>


        <h2 style="color: #0e86c7">More Details on Workout</h2>
        <p style="color: snow">Provide: You can find further details by clicking-on the relevant tab. You can find Video tutorials there.</p>
        <br>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/leg_workout">Leg Workout</a> </button>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/chest_workout">Chest Workout</a> </button>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/back_workout">Back Workout</a> </button>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/shoulder_workout">Shoulder Workout</a> </button>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/arms_workout">Arms Workout</a> </button>
        <button type="button" class="btn btn-default"> <a href="http://localhost:8080/abs_workout">Abs Workout</a> </button>


</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>

