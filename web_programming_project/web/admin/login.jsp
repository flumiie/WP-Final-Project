<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link href="../assets/css/login.css" rel="stylesheet" type="text/css"/>
    <title>Welcome back!</title>
</head>

<body>
    <div class="form">
        <ul class="tab-group">
            <li class="tab active"><a href="#login">Log In</a></li>
            <li class="tab"><a href="#signup">Sign Up</a></li>
        </ul>
        
        <div class="tab-content">
            <% if (request.getParameter("invalid") != null) { %>
            <h3 style="color:RED" class="fadeout">Invalid username or password.</h3>
            <% } %>
            <% if (request.getParameter("userFound") != null) { %>
            <h3 style="color:RED" class="fadeout">Please choose another username.</h3>
            <% } %>
            <% if (request.getParameter("length") != null) { %>
            <h3 style="color:RED" class="fadeout">Username or password cannot be less than 5.</h3>
            <% } %>
            <% if (request.getParameter("registered") != null) { %>
            <h3 style="color:GREEN" class="fadeout">You are now registered. Please login.</h3>
            <% } %>
            
            <div id="login">
                <h1>Welcome Back!</h1>
                <form action="../login" method="POST">
                    <div class="field-wrap">
                        <label>Username<span class="req">*</span></label>
                        <input type="text" name="username" required autocomplete="on"/>
                    </div>
                    <div class="field-wrap">
                        <label>Password<span class="req">*</span></label>
                        <input type="password" name="password" required autocomplete="on"/>
                    </div>
                    <p class="forgot"><a href="forgotPassword.jsp">Forgot Password?</a></p>
                    <button class="button button-block"/>Log In</button>
                </form>
            </div>
            
            <div id="signup">
                <h1>Sign Up for Free</h1>
                <form action="../add_user" method="POST">
                    <div class="field-wrap">
                        <label>Username<span class="req">*</span></label>
                        <input type="text" name="username" required autocomplete="on"/>
                    </div>
                    <input type="hidden" name="type" value="User">
                    <div class="field-wrap">
                        <label>Password<span class="req">*</span></label>
                        <input type="password" name="password" required autocomplete="on"/>
                    </div>
                    <div class="field-wrap">
                        <label>Confirm Password<span class="req">*</span></label>
                        <input type="password" name="confPassword" required autocomplete="off"/>
                    </div>
                    <div class="field-wrap">
                        <label>Full Name:<span class="req">*</span></label>
                        <input type="text" name="name" required autocomplete="on"/>
                    </div>
                    <button type="submit" class="button button-block">Register</button>
                </form>
            </div>
        </div><!-- tab-content -->
    </div> <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="../assets/js/login.js" type="text/javascript"></script>
</body>
</html>