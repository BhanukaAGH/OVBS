<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style-sign-in.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Goldman&family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <title>YouMovies</title>
    <link rel="shortcut icon" type="image/png" href="img/logo.png">
</head>

<body>
    <header>
        <div class="background">
            <nav>
                <div class="nav-bar">
                    <div class="title">
                        <h2>You <span>Movies</span></h2>
                    </div>
                </div>
            </nav>
            <img src="img/firstpage/1.jpg">
            <img src="img/firstpage/3.jpg">
            <img src="img/firstpage/2.jpg">
            <img src="img/firstpage/4.jpg">
            <img src="img/firstpage/5.jpg">
            <div class="overlay">
                <div class="register-form">
                    <form action="SignUpServlet" method="post">
                        <h1>Sign Up</h1>
                        <input type="text" name="uname" id="" placeholder="User Name" required>
                        <input type="text" name="email" id="" placeholder="Email" required>
                        <input type="password" name="password" id="" placeholder="Password" required>
                        <input type="submit" name="signup" value="Sign Up">
                        <p>You have an account? <a href="sign-in.jsp">Sign in</a></p>
                    </form>
                </div>
            </div>
        </div>
    </header>
</body>

</html>