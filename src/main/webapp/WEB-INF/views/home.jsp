
<%@include file="/WEB-INF/views/template/header.jsp" %>

<%--===================================================--%>
<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
                 src="<c:url value="/resources/images/ban1.jpg" />"
                 alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Motorcycle Ride Tours</h1>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/ban2.jpg" />"
                 alt="Second slide">
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/ban3.jpg" />"
                 alt="Third slide">
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle"
                 src="<c:url value="/resources/images/img1.jpg" />"
                 alt="Generic placeholder image" width="140" height="140">
            <h2>Discover what Motorcycle Tours is all about</h2>
            <p>With over 13,000 successful rides, Motorcycle Tours is the first and largest peer-to-peer motorcycle
                rental community in Sri Lanka, connecting riders to motorcycle owners everyday. Motorcycle riders can
                find the perfect motorcycle rental and owners can turn their garage into a business. A quick search
                will show the largest variety of makes and models available for your next motorcycle riding adventure,
                so no matter where you are you’ll never be without a motorcycle.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle"
                 src="<c:url value="/resources/images/img3.jpg" />"
                 alt="Generic placeholder image" width="140" height="140">
            <h2>Here's what makes a Motorcycle Tours perfect for you</h2>
            <p>Traditional motorcycle rental options are expensive and slow, offering limited variety,
                inflexible insurance and lackluster rescheduling or cancellation policies. Motorcycle
                Tours is different. Motorcycle Tours is motorcycle rentals done right. Sign up, find a ride,
                and book it, all within 5 minutes. Further, if you already have a motorcycle you can now profit
                from your passion! Share with confidence, exchange favorite routes and enjoy the company of like-minded
                riders. Our team of motorcycle enthusiasts works hard every day to provide the best in class prices,
                insurance coverage, and customer support.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle"
                 src="<c:url value="/resources/images/img4.jpg" />"
                 alt="Generic placeholder image" width="140" height="140">
            <h2>WE Have Many Rideouts Too</h2>
            <p>
                We organize many rideouts for aur customers were we go day or multiday rideouts across sri lanka.
                Sometimes we do overseas tours too click the rideouts to view the all upcoming rideouts
            </p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

</div>
</div>>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

