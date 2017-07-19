<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Workout schedule</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<div id="home" class="w3ls-banner">
    <!-- header -->
    <div class="header-w3layouts">
        <!-- Navigation -->
        <nav class="navbar navbar-fixed-top">
            <div class="container">
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

    <form:form method="POST" modelAttribute="workoutForm" class="form-signin">
        <!--workout schedule form-->
        <h2 class="form-signin-heading" style="color: white">Workout schedule</h2>
        
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="workout">
            <form:select type="text" path="workout" class="form-control" placeholder="Workout Schedule"
                         autofocus="true">
                <form:option value="">-----Assign Workout-----</form:option>
                <form:options items="${workoutList}"/>
            </form:select>
            <form:errors path="workout"></form:errors>
        </spring:bind>

        <spring:bind path="start_date">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="date" path="start_date" class="form-control"
                            placeholder="Starting date"></form:input>
                <form:errors path="start_date"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="end_date">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="date" path="end_date" class="form-control"
                            placeholder="Ending date"></form:input>
                <form:errors path="end_date"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Assign</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>

