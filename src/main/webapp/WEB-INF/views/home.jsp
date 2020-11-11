
<%@include file="/WEB-INF/views/template/header.jsp" %>

<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item">
                <img src="<c:url value="/resources/images/banner2.jpg" />">
                <div class="carousel-caption d-none d-md-block">

                </div>
            </div>

            <div class="carousel-item active">
            <img src="<c:url value="/resources/images/banner1.jpg" />">
                <div class="carousel-caption d-none d-md-block">

                </div>
            </div>

            <div class="carousel-item">
                <img src="<c:url value="/resources/images/ban3.jpg" />">
                <div class="carousel-caption d-none d-md-block">

                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">
    <br>
    <h3 style="text-align: center"  class="my-4">Welcome to Motorcycle Ride Tours</h3>
    <h5 style="text-align: center"> Discover what Motorcycle Tours is all about</h5>
    <br>
    <hr>
    <br>
    <!-- Marketing Icons Section -->
    <div class="row">
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h5 style="text-align: center" class="card-header">
                    Our Community
                </h5>
                <div class="card-body">
                    <p class="card-text" style="text-align: center">
                    With over 13,000 successful rides, Motorcycle Tours is the first and largest peer-to-peer motorcycle
                    rental community in Sri Lanka, connecting riders to motorcycle owners everyday.
                    </p>
                </div>
                <div style="text-align: center" class="card-footer" >
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 style="text-align: center" class="card-header">Renting Rides</h4>
                <div class="card-body">
                    <p class="card-text" style="text-align: center">
                        Motorcycle riders can
                        find the perfect motorcycle rental and owners can turn their garage into a business. A quick search
                        will show the largest variety of makes and models available for your next motorcycle riding adventure,
                        so no matter where you are you will never be without a motorcycle.
                    </p>
                </div>
                <div style="text-align: center" class="card-footer">
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 style="text-align: center" class="card-header">Ride Tours</h4>
                <div class="card-body">
                    <p class="card-text" style="text-align: center">
                        We organize many rideouts for aur customers were we go day or multiday rideouts across sri lanka.
                        Sometimes we do overseas tours too click the rideouts to view the all upcoming rideouts
                    </p>
                </div>
                <div style="text-align: center" class="card-footer">
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Features Section -->
    <div class="row">
        <div class="col-lg-6">
            <h3>MortarCycle Ride Tour Features Features</h3>
            <br>
            <p style="text-align: center">
                Traditional motorcycle rental options are expensive and slow, offering limited variety,
                inflexible insurance and lackluster rescheduling or cancellation policies. Motorcycle
                Tours is different. Motorcycle Tours is motorcycle rentals done right. Sign up, find a ride,
                and book it, all within 5 minutes. Further, if you already have a motorcycle you can now profit
                from your passion! Share with confidence, exchange favorite routes and enjoy the company of like-minded
                riders. Our team of motorcycle enthusiasts works hard every day to provide the best in class prices,
                insurance coverage, and customer support.
            </p>
        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded"
            src="<c:url value="/resources/images/img3.jpg" />">
        </div>
    </div>
    <!-- /.row -->
    <hr>
</div>
<!-- /.container -->
<%--===================================================--%>
<%@include file="/WEB-INF/views/template/footer.jsp" %>

