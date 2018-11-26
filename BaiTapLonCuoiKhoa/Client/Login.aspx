﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Client_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DDHT || SIGN IN</title>
    <base href="../Assets/AssetsAdmin/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="images/icon/favicon.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/metisMenu.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="css/typography.css">
    <link rel="stylesheet" href="css/default-css.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>



    <link href="/Assets/css/StyleCustom.css" rel="stylesheet" />
</head>
<body data-spy="scroll" data-target="#site-navbar" data-offset="5">
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark site_navbar bg-dark site-navbar-light login-page" id="site-navbar">
            <div class="container">
                <a class="navbar-brand" href="/TrangChu.aspx">EatWell</a>
            </div>
        </nav>
    </div>
    <div class="login-area">
        <div class="container">
            <div class="login-box ptb--100">
                <form id="form1" runat="server">
                    <div class="login-form-head">
                        <h4>Sign In</h4>
                        <p>Hello there, Sign in and start using website</p>
                    </div>
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="txtusername">Email address</label>
                            <asp:TextBox runat="server" ID="txtusername" CssClass="form-control" Text="" />
                            <%--<input type="email" id="exampleInputEmail1">--%>
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="txtpassword">Password</label>
                            <asp:TextBox runat="server" ID="txtpassword" CssClass="form-control" TextMode="Password" />
                            <i class="ti-lock"></i>
                        </div>
                        <div class="row mb-4 rmber-area">
                            <div class="col-6">
                            </div>
                            <div class="col-6 text-right">
                                <a>Forgot Password?</a>
                            </div>
                        </div>
                        <div class="submit-btn-area">
                            <asp:Button CssClass="btn btn-primary" runat="server" ID="btnsubmit" Text="ADD"></asp:Button>
                            <%--<button id="form_submit" type="submit">Submit </button>--%>
                            <%--OnClick="btnsubmit_Click"--%>
                        </div>
                        <div class="form-footer text-center mt-5">
                            <p class="text-muted">Don't have an account? <a href="/Client/Register.aspx">Sign up</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- login area end -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>

    <!-- others plugins -->
    <script src="js/plugins.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
