<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from demo.foxthemes.net/instellohtml/Form-ShowOneAccount.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2022 04:43:07 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link href="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/images/favicon.png" rel="icon" type="image/png">

    <!-- Basic Page Needs
    ================================================== -->
    <title>Instello Sharing Photos</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Instello - Sharing Photos platform HTML Template">

    <!-- icons
    ================================================== -->
    <link rel="stylesheet" href="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/css/icons.css">

    <!-- CSS 
    ================================================== -->
    <link rel="stylesheet" href="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/css/uikit.css">
    <link rel="stylesheet" href="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/css/style.css">
    <link rel="stylesheet" href="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/css/tailwind.css">

</head>

<body class="bg-gray-100">


<div id="wrapper" class="flex flex-col justify-between h-screen">

    <!-- header-->
    <div class="bg-white py-4 shadow dark:bg-gray-800">
        <div class="max-w-6xl mx-auto">


            <div class="flex items-center lg:justify-between justify-around">
                <div class="item-media">
                    <img
                            src="${T.getAvatarurl()}"
                            alt="" width="55" height="55">
                </div>

                <%--                <a href="/bootstrap/feed/demo.foxthemes.net/instellohtml/trending.jsp">--%>
                <img src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/images/logo.png" alt=""
                     class="w-32">
                </a>

                <div class="capitalize flex font-semibold hidden lg:block my-2 space-x-3 text-center text-sm">
                    <%--                    <a href="/bootstrap/feed/demo.foxthemes.net/instellohtml/form-login.jsp" class="py-3 px-4">Login</a>--%>
                    <a href="/Show"
                       class="bg-pink-500 pink-500 px-6 py-3 rounded-md shadow text-white">Back</a>
                </div>

            </div>
        </div>
    </div>

    <!-- Content-->

    <div>
        <div class="lg:p-12 max-w-md max-w-xl lg:my-0 my-12 mx-auto p-6 space-y-">
            <%--            <h1 class="lg:text-3xl text-xl font-semibold mb-6">Information</h1>--%>
            <%--                <p class="mb-2 text-black text-lg"> Register to manage your account </p>--%>
            <form action="/">

                <div><label>Username:</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${T.getUsername()}">
                </div>

                <div><label>Password:</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${T.getPassword()}"></div>
                <div><label>Email:</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${T.getEmail()}"></div>
                <div><label>Phone Number :</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${T.getPhone()}"></div>
                <div><label>Address:</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${T.getAddress()}"></div>
                <div><label>Status:</label>
                    <input type="text" class="bg-gray-200 mb-2 shadow-none  dark:bg-gray-800"
                           style="border: 1px solid #d3d5d8 !important;" value="${B.getUsername()}"></div>

                <br>




                    <div class="item-statistic">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <span>  <a href="/Lookup?id=${T.getIdAccounts()}"
                                   class="bg-pink-500 pink-500 px-6 py-3 rounded-md shadow text-white">Lock up</a> </span>
                        <span> <a href="/Delete?id=${T.getIdAccounts()}"
                                  class="bg-pink-500 pink-500 px-6 py-3 rounded-md shadow text-white">Delete</a> </span>
                    </div>





                <%--                                    <div class="flex justify-start my-4 space-x-1">--%>
                <%--                                        <div class="checkbox">--%>
                <%--                                            <input type="checkbox" id="chekcbox1" checked>--%>
                <%--                                            <label for="chekcbox1"><span class="checkbox-icon"></span> I Agree</label>--%>
                <%--                                        </div>--%>
                <%--                                        <a href="#"> Terms and Conditions</a>--%>
                <%--                                    </div>--%>

            </form>
        </div>
    </div>

    <!-- Footer -->

    <div class="lg:mb-5 py-3 uk-link-reset">
        <div class="flex flex-col items-center justify-between lg:flex-row max-w-6xl mx-auto lg:space-y-0 space-y-3">
            <div class="flex space-x-2 text-gray-700 uppercase">
                <a href="#"> About</a>
                <a href="#"> Help</a>
                <a href="#"> Terms</a>
                <a href="#"> Privacy</a>
            </div>
            <p class="capitalize"> copyright 2020 by Instello</p>
        </div>
    </div>

</div>

<script>

    (function (window, document, undefined) {
        'use strict';
        if (!('localStorage' in window)) return;
        var nightMode = localStorage.getItem('gmtNightMode');
        if (nightMode) {
            document.documentElement.className += ' dark';
        }
    })(window, document);


    (function (window, document, undefined) {

        'use strict';

        // Feature test
        if (!('localStorage' in window)) return;

        // Get our newly insert toggle
        var nightMode = document.querySelector('#night-mode');
        if (!nightMode) return;

        // When clicked, toggle night mode on or off
        nightMode.addEventListener('click', function (event) {
            event.preventDefault();
            document.documentElement.classList.toggle('dark');
            if (document.documentElement.classList.contains('dark')) {
                localStorage.setItem('gmtNightMode', true);
                return;
            }
            localStorage.removeItem('gmtNightMode');
        }, false);

    })(window, document);
</script>

<!-- Scripts
================================================== -->
<script src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/js/tippy.all.min.js"></script>
<script src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/js/jquery-3.3.1.min.js"></script>
<script src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/js/uikit.js"></script>
<script src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/js/simplebar.js"></script>
<script src="/bootstrap/feed/demo.foxthemes.net/instellohtml/assets/js/custom.js"></script>


<script src="../../unpkg.com/ionicons%405.2.3/dist/ionicons.js"></script>
</body>


<!-- Mirrored from demo.foxthemes.net/instellohtml/Form-ShowOneAccount.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2022 04:43:07 GMT -->
</html>