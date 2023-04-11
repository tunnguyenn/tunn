# tunn
login
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoffeeShop.Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>CLCCoffee-Login</title>
    <link rel="shortcut icon" href="assets/images/logo/favourite_icon.png">

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <!-- icon font - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    <!-- popup - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

    <!-- jquery-ui - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
 

</head>
<body>

	
		  <!-- main body - start
		  ================================================== -->
		  <main>
	
			<!-- cart_sidebar - start
			
        </header>
      <!-- header_section - end
      ================================================== -->

      <!-- main body - start
      ================================================== -->
      <main>

       
        <!-- cart_sidebar - end
        ================================================== -->

        <!-- breadcrumb_section - start
        ================================================== -->
        
        <!-- breadcrumb_section - end
        ================================================== -->

        <!-- reserve_table_section - start
        ================================================== -->
        <section class="reserve_table_section sec_ptb_120">
        	<div class="container">
        		<div class="reserve_table_form wow fadeInUp" data-wow-delay=".1s">
        			<form id="form1" runat="server">
        			<h2 class="form_title text-center text-uppercase">Login</h2>
        				<div class="row justify-content-center">
        					<div class="col-lg-7">
        						<div class="form_item">
                                    <asp:TextBox  placeholder="Enter Your UserName" ID="txtUser" runat="server"></asp:TextBox>
                                    <label class="form_icon" for="person-value"><i class="fal fa-user"></i></label>
        						</div>
        						<div class="form_item">
        							 <asp:TextBox  placeholder="Enter Your PassWord" type="password" ID="txtPassWord" runat="server"></asp:TextBox>
        							<label class="form_icon" for="person-value"><i class="fal fa-user"></i></label>
        						</div>
        						<div class="text-center">
                               
                               
                                    <button>
                                        <asp:Button ID="btnLogin" class="btn btn_primary text-uppercase" runat="server" Text="Login" OnClick="Button1_Click" />
                                     &nbsp <a type="submit"  class="btn btn_primary text-uppercase" href="Register.aspx">Register</a></button>           
        						</div>
        					</div>
        				</div>
        			</form>
        			<div class="decoration_icon">
        				<img src="assets/images/feature/icon_01.png" alt="icon_not_found">
        				<span class="bg_shape"></span>
        			</div>
        		</div>
        		<div class="reserve_banner_image">
        			<img src="assets/images/reserve/img_01.jpg" alt="image_not_found">
        		</div>
        	</div>
        </section>
        <!-- reserve_table_section - end
        ================================================== -->
      </main>
      <!-- main body - end
      ================================================== -->

      <!-- footer_section - start
   
      <!-- footer_section - end
      ================================================== -->

    </div>
    <!-- body_wrap - end -->

    <!-- fraimwork - jquery include -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- animation - jquery include -->
    <script src="assets/js/wow.min.js"></script>

    <!-- carousel - jquery include -->
    <script src="assets/js/slick.min.js"></script>

    <!-- popup - jquery include -->
    <script src="assets/js/magnific-popup.min.js"></script>

    <!-- isotope filter - jquery include -->
    <script src="assets/js/isotope.pkgd.min.js"></script>

    <!-- google map - jquery include -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
    <script src="assets/js/gmaps.min.js"></script>

    <!-- jquery-ui - jquery include -->
    <script src="assets/js/jquery-ui.js"></script>

    <!-- off canvas sidebar - jquery include -->
    <script src="assets/js/mCustomScrollbar.js"></script>

    <!-- custom - jquery include -->
    <script src="assets/js/main.js"></script>
</body>
</html>
