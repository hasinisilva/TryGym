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

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<div id="home" class="w3ls-banner">
    <!-- header -->
    <div class="header-w3layouts">
        <!-- Navigation -->
        <nav class="">
            <div class="">
                <div class="navbar-header page-scroll">
                    <h2><a href="http://localhost:8080/gym/index"><img src="${pageContext.request.contextPath}/resources/images/trygym.png"></a></h2>
                    <h4 class="form-heading" style="color: white ;">Workout Your Dream</h4>
                </div>
            </div>
        </nav>
    </div>
    <!-- //header -->
</div>

<body class="register">


<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">

        <!--personal details form-->

        <h2 class="form-signin-heading" style="color: white">Personal Details</h2>

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
        <h2 class="form-signin-heading" style="color: white">Create an account</h2>
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
        <span>${registered}</span>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>

