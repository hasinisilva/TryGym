<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <title>Resource Reservation</title>

    <!-- head -->
    <meta charset="utf-8">
    <!--  stylesheet -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/helpers/demo.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/helpers/media/layout.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/helpers/media/elements.css?v=2848" />

    <!-- helper libraries -->
    <script src="${pageContext.request.contextPath}/resources/helpers/jquery-1.12.2.min.js" type="text/javascript"></script>

    <!-- daypilot libraries -->
    <script src="${pageContext.request.contextPath}/resources/js/daypilot-all.min.js?v=2848" type="text/javascript"></script>

    <!-- daypilot themes -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/areas.css?v=2848" />

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/month_white.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/month_green.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/month_transparent.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/month_traditional.css?v=2848" />

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/navigator_8.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/navigator_white.css?v=2848" />

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/calendar_transparent.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/calendar_white.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/calendar_green.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/calendar_traditional.css?v=2848" />

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_8.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_white.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_green.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_blue.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_traditional.css?v=2848" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/scheduler_transparent.css?v=2848" />

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!-- /head -->

</head>
<body id="page-top">
<div id="home" class="w3ls-banner">
    <!-- header -->
    <div class="header-w3layouts">
        <!-- Navigation -->
        <nav class="navbar">
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

<div id="main">
    <div id="container" >
        <div id="content">
            <div>
                <div id="dp"></div>

                <script type="text/javascript">

                    var dp = new DayPilot.Scheduler("dp");

                    dp.startDate = "2017-01-01";
                    dp.days = 366;
                    dp.scale = "Day";
                    dp.timeHeaders = [
                        { groupBy: "Month", format: "MMM yyyy" },
                        { groupBy: "Cell", format: "d" }
                    ];

                    dp.bubble = new DayPilot.Bubble();
                    dp.resourceBubble = new DayPilot.Bubble();

                    dp.contextMenu = new DayPilot.Menu({items: [
                        {text:"Edit", onClick: function(args) { dp.events.edit(args.source); } },
                        {text:"Cancel", onClick: function(args) { dp.events.remove(args.source); } },
                        {text:"-"},
                        {text:"Select", onClick: function(args) { dp.multiselect.add(args.source); } },
                    ]});

                    dp.treeEnabled = true;
                    dp.resources = [
                        { name: "11.30am - 2.30pm Session", id: "G1", expanded: true, children:[
                            { name : "Horizontal Seated Leg Press 1", id : "A" },
                            { name : "Horizontal Seated Leg Press 2", id : "B" },
                            { name : "Cable Biceps Bar 1", id : "C" },
                            { name : "Cable Biceps Bar 2", id : "D" },
                            { name : "Chest Press 1", id : "E" },
                            { name : "Chest Press 2", id : "F" }
                        ]
                        },
                        { name: "3pm - 5pm Session", id: "G2", expanded: true, children:[
                            { name : "Horizontal Seated Leg Press 1", id : "G" },
                            { name : "Horizontal Seated Leg Press 2", id : "H" },
                            { name : "Cable Biceps Bar 1", id : "I" },
                            { name : "Cable Biceps Bar 2", id : "J" },
                            { name : "Chest Press 1", id : "K" },
                            { name : "Chest Press 2", id : "L" }
                        ]
                        },
                        { name: "5pm - 10pm Session", id: "G3", expanded: false, children:[
                            { name : "Horizontal Seated Leg Press 1", id : "M" },
                            { name : "Horizontal Seated Leg Press 2", id : "N" },
                            { name : "Cable Biceps Bar 1", id : "O" },
                            { name : "Cable Biceps Bar 2", id : "P" },
                            { name : "Chest Press 1", id : "U" },
                            { name : "Chest Press 2", id : "V" }
                        ]
                        }

                    ];

                    dp.heightSpec = "Max";
                    dp.height = 500;

                    dp.events.list = [];

                    for (var i = 0; i < 12; i++) {
                        var duration = 2; // reservation is for 2 hours
                        var durationDays = 1; // 0 to 2
                        var start = Math.floor(Math.random() * 6) + 2; // 2 to 7


                         var e = {
                         start: new DayPilot.Date("2017-03-25T00:00:00").addDays(start),
                         end: new DayPilot.Date("2017-03-25T12:00:00").addDays(start).addDays(durationDays).addHours(duration),
                         id: DayPilot.guid(),
                         resource: String.fromCharCode(65+i),
                         text: "Reservation " + (i + 1)
                         };

                         dp.events.list.push(e);
                    }

                    dp.eventMovingStartEndEnabled = true;
                    dp.eventResizingStartEndEnabled = true;
                    dp.timeRangeSelectingStartEndEnabled = true;

                    dp.onBeforeResHeaderRender = function(args) {
                        args.resource.bubbleHtml = "Resource";
                    };

                    dp.onEventMove = function(args) {
                    };

                    // event moving
                    dp.onEventMoved = function (args) {
                        dp.message("Moved: " + args.e.text());
                    };

                    dp.onEventClicked = function(args) {
                    };

                    dp.onEventMoving = function(args) {
                        if (args.e.resource() === "A" && args.resource === "B") {  // don't allow moving from A to B
                            args.left.enabled = false;
                            args.right.html = "You can't move an resource from one session to another";

                            args.allowed = false;
                        }
                        else if (args.resource === "B") {  // must start on a working day, maximum length one day
                            while (args.start.getDayOfWeek() == 0 || args.start.getDayOfWeek() == 6) {
                                args.start = args.start.addDays(1);
                            }
                            args.end = args.start.addDays(1);  // fixed duration
                            args.left.enabled = false;
                            args.right.html = "Events in Room 2 must start on a workday and are limited to 1 day.";
                        }

                        if (args.resource === "C") {
                            var except = args.e.data;
                            var events = dp.rows.find(args.resource).events.all();

                            var start = args.start;
                            var end = args.end;
                            var overlaps = events.some(function(item) {
                                return item.data !== except && DayPilot.Util.overlaps(item.start(), item.end(), start, end);
                            });

                            while (overlaps) {
                                start = start.addDays(1);
                                end = end.addDays(1);

                                overlaps = events.some(function(item) {
                                    return item.data !== except && DayPilot.Util.overlaps(item.start(), item.end(), start, end);
                                });
                            }

                            if (args.start !== start) {
                                args.start = start;
                                args.end = end;

                                args.left.enabled = false;
                                args.right.html = "Start automatically moved to " + args.start.toString("d MMMM, yyyy");
                            }

                        }

//        args.html = args.start.toString("d MMMM, yyyy");

                    };

                    dp.onBeforeCellRender = function(args) {
                    };

                    dp.onBeforeEventRender = function(args) {
                        args.data.bubbleHtml = "<div><b>" + args.data.text + "</b></div><div>Start: " + new DayPilot.Date(args.data.start).toString("M/d/yyyy") + "</div><div>End: " + new DayPilot.Date(args.data.end).toString("M/d/yyyy") + "</div>";
                    };

                    dp.onEventResize = function(args) {
                    };

                    // event resizing
                    dp.onEventResized = function (args) {
                        dp.message("Resized: " + args.e.text());
                    };

                    dp.onEventResizing = function(args) {
                    };

                    // event creating
                    dp.onTimeRangeSelected = function (args) {
                        DayPilot.Modal.prompt("New reservation:", "Your Userame").then(function(modal) {
                            dp.clearSelection();
                            var name = modal.result;
                            if (!name) return;
                            var e = new DayPilot.Event({
                                start: args.start,
                                end: args.end,
                                id: DayPilot.guid(),
                                resource: args.resource,
                                text: name
                            });
                            dp.events.add(e);
                            dp.message("Reserved");
                        });
                    };

                    dp.separators = [
                        {color:"Red", location:"2017-03-29T00:00:00", layer: "BelowEvents"}
                    ];

                    dp.treePreventParentUsage = true;

                    dp.onEventClicked = function(args) {
                        //alert("clicked");
                    };

                    dp.eventClickHandling = "Edit";

                    /*
                     dp.onEventClick = function(args) {
                     new DayPilot.Modal({
                     left: DayPilot.abs(args.div).x,
                     width: args.div.offsetWidth,
                     height: args.div.offsetHeight,
                     top: DayPilot.abs(args.div).y,
                     theme: "modal_min"
                     }).showHtml(args.e.text());
                     };
                     */

                    dp.onEventMove = function(args) {
                        if (args.ctrl) {
                            var newEvent = new DayPilot.Event({
                                start: args.newStart,
                                end: args.newEnd,
                                text: "Copy of " + args.e.text(),
                                resource: args.newResource,
                                id: DayPilot.guid()  // generate random id
                            });
                            dp.events.add(newEvent);

                            // notify the server about the action here

                            args.preventDefault(); // prevent the default action - moving event to the new location
                        }
                    };

                    //dp.eventUpdateInplaceOptimization = true;

                    dp.init();

                    dp.scrollTo("2017-06-12");

                    $(document).ready(function() {
                        $(document).keydown(function(ev) {
                            if (ev.which === 27) {
                                DayPilot.Scheduler.stopDragging();
                            }
                        });
                    });

                </script>

                <!-- bottom -->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        var url = window.location.href;
        var filename = url.substring(url.lastIndexOf('/')+1);
        if (filename === "") filename = "index.html";
        $(".menu a[href='" + filename + "']").addClass("selected");
    });

</script>
<!-- /bottom -->

</body>


