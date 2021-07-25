<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style-login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Goldman&family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/lightslider.css">
    <script src="js/JQuery3.3.1.js"></script>
    <script src="js/lightslider.js"></script>
    <title>YouMovies</title>
    <link rel="shortcut icon" type="image/png" href="img/logo.png">
</head>

<body>
	<!-- check user login or not  -->
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("index.jsp");
		}
	%>


	<form action="Logout" method="post" id="logoutform"></form>
    <!-- header -->
    <header id="home">
        <!-- navbar -->
        <nav id="nav">
            <div class="nav-center">
                <!-- nav header -->
                <div class="nav-header">
                    <div class="logo-title">
                        <h2>You<span>Movies</span></h2>
                    </div>
                </div>
                <!-- links -->
                <div class="links-container">
                    <ul class="links">
                        <li>
                            <a href="#home" class="nav-link active">Home</a>
                        </li>
                        <li>
                            <a href="#movies" class="nav-link">Movies</a>
                        </li>
                        <li>
                            <a href="#tvshows" class="nav-link">TV Shows</a>
                        </li>
                        <li>
                            <a href="#newreleased" class="nav-link">New Released</a>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button class="dropbtn">Admin</button>

                                <div class="dropdown-content">
                                    <a href="#">Add Movies</a>
                                    <a href="#">Add TV Shows</a>
                                    <a href="Users.jsp">Users</a>
                                    <a href="#">Plan</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- search & profile -->
                <div class="right-container">
                    <div class="search-bar">
                        <input type="text" name="search-bar" id="" placeholder="Search">
                        <i class="fas fa-search"></i>
                    </div>
                    <a href="profile.jsp">
                        <div class="profile-container">
                            <i aria-hidden="true" class="fas fa-user-circle"></i>
                        </div>
                    </a>
                    <div class="logout">
                        <input type="submit" name="Logout" value="Logout" form="logoutform">
                    </div>
                </div>
            </div>
        </nav>

        <!-- banner -->
        <div class="banner">
            <div class="container">
                <h1>SEE</h1>
                <p>Far in a dystopian future, the human race has lost the sense of sight, and society has had to find new ways to interact, build, hunt, and to survive. All of that is challenged when a set of twins is born with sight.
                </p>
                <button class="watchnow">Watch now</button>
            </div>
        </div>
    </header>
    <!-- scroll to top button -->
    <button onclick="topFunction()" id="myBtn"><i class="fas fa-angle-up"></i></button>

    <!-- New Released -->
    <section id="newreleased" class="section">
        <div class="title">
            <h2>New Released</h2>
            <div class="line"></div>
        </div>
        <!-- Slider -->
        <ul id="autowidth1" class="cs-hidden">
            <!-- Slide-box-1 -->
            <li class="item-a">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr1.jpeg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Avengers</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-2 -->
            <li class="item-b">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr2.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Jocker</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-3 -->
            <li class="item-c">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr3.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Gemini Man</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-4 -->
            <li class="item-d">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr4.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Alita</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-5 -->
            <li class="item-e">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr5.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Godzilla Vs. Kong 2021</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-6 -->
            <li class="item-f">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr6.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Sonic</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-7 -->
            <li class="item-g">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr7.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Avatar</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-8 -->
            <li class="item-h">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr8.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Dead Pool</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-9 -->
            <li class="item-i">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr9.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Beauty and the Beast</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-10 -->
            <li class="item-j">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr10.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Transformer</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-11 -->
            <li class="item-k">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr11.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Mission Imposible</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-12 -->
            <li class="item-l">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr12.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Jurasic World</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

        </ul>
    </section>

    <!-- TV Shows -->
    <section id="tvshows" class="section">
        <div class="title">
            <h2>TV Shows</h2>
            <div class="line"></div>
        </div>
        <!-- Slider -->
        <ul id="autowidth3" class="cs-hidden">
            <!-- Slide-box-1 -->
            <li class="item-a">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/1.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Breaking Bad</strong>
                        <p>Crime | Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-2 -->
            <li class="item-b">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/2.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Game of Thrones</strong>
                        <p>Fantacy | Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-3 -->
            <li class="item-c">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/3.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>The Witcher</strong>
                        <p>Fantacy</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-4 -->
            <li class="item-d">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/4.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Vikings</strong>
                        <p>Historical Fantacy | Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-5 -->
            <li class="item-e">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/5.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>The Last Kingdom</strong>
                        <p>Historical Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-6 -->
            <li class="item-f">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/6.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Money Heist</strong>
                        <p>Action | Crime | Thriller</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-7 -->
            <li class="item-g">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/7.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Dark</strong>
                        <p>Crime | Drama | Mystery | Sci-Fi</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-8 -->
            <li class="item-h">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/8.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>The Flash</strong>
                        <p>Action | Drama | Sci-Fi</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-9 -->
            <li class="item-i">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/9.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Peaky Blinders</strong>
                        <p>Historical Fiction | Crime | Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-10 -->
            <li class="item-j">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/10.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Daredevil</strong>
                        <p>Action | Crime | Drama</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-11 -->
            <li class="item-k">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/11.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Arrow</strong>
                        <p>Action | Adventure | Drama | Crime</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-12 -->
            <li class="item-l">
                <div class="card tv">
                    <div class="card-img tv-img">
                        <img src="img/TV series/12.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>The 100</strong>
                        <p>Action | Drama | Sci-Fi</p>
                    </div>
                </div>
            </li>

        </ul>
    </section>

    <!-- Movies -->
    <section id="movies" class="section">
        <div class="title">
            <h2>Movies</h2>
            <div class="line"></div>
        </div>
        <!-- Slider -->
        <ul id="autowidth2" class="cs-hidden">
            <!-- Slide-box-1 -->
            <li class="item-a">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr1.jpeg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Avengers</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-2 -->
            <li class="item-b">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr2.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Jocker</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-3 -->
            <li class="item-c">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr3.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Gemini Man</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-4 -->
            <li class="item-d">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr4.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Alita</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-5 -->
            <li class="item-e">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr5.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Godzilla Vs. Kong 2021</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-6 -->
            <li class="item-f">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr6.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Sonic</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-7 -->
            <li class="item-g">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr7.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Avatar</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-8 -->
            <li class="item-h">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr8.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Dead Pool</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-9 -->
            <li class="item-i">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr9.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Beauty and the Beast</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-10 -->
            <li class="item-j">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr10.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Transformer</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-11 -->
            <li class="item-k">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr11.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Mission Imposible</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

            <!-- Slide-box-12 -->
            <li class="item-l">
                <div class="card">
                    <div class="card-img">
                        <img src="img/New Realeased/nr12.jpg" alt="">
                    </div>
                    <!-- text -->
                    <div class="card-text">
                        <strong>Jurasic World</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>

        </ul>
    </section>

    <!-- footer -->
    <section id="footer" class="section">
        <div class="footer-container">
            <div class="footer-section">
                <div class="logo-title">
                    <h2>You<span>Movies</span></h2>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.sdfsdfsdfsdfsdfsdfsdfsdf dsfsdfd sdfds</p>
                <div class="social-media">
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-telegram"></i>
                </div>
            </div>
            <div class="footer-section">
                <div class="logo-title">
                    <h2>Movies</h2>
                </div>
                <div class="link-category">
                    <div class="movie-link">
                        <a href="#">Drama</a>
                        <a href="#">Action</a>
                        <a href="#">Animation</a>
                        <a href="#">Comedy</a>
                    </div>
                    <div class="movie-link">
                        <a href="#">Crime</a>
                        <a href="#">Fantacy</a>
                        <a href="#">Horror</a>
                        <a href="#">Romance</a>
                    </div>
                </div>
            </div>
            <div class="footer-section">
                <div class="logo-title">
                    <h2>TV Series</h2>
                </div>
                <div class="link-category">
                    <div class="movie-link">
                        <a href="#">Friends</a>
                        <a href="#">See</a>
                        <a href="#">Sherlock</a>
                        <a href="#">Breaking Bad</a>
                    </div>
                    <div class="movie-link">
                        <a href="#">Game of Thrones</a>
                        <a href="#">The Sopranos</a>
                        <a href="#">The X-Files</a>
                        <a href="#">Money Heist</a>
                    </div>
                </div>
            </div>

            <div class="footer-section">
                <div class="logo-title">
                    <h2>My Account</h2>
                </div>
                <div class="link-category">
                    <div class="movie-link">
                        <a href="#">My Account</a>
                        <a href="#">Plan</a>
                        <a href="#">Premium</a>
                        <a href="#">About</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- slider script -->
    <script>
        $(document).ready(function() {
            $('#autowidth1,#autowidth2,#autowidth3').lightSlider({
                autoWidth: true,
                loop: true,
                onSliderLoad: function() {
                    $('autoWidth1,autowidth2,autowidth3').removeClass('cs-hidden')
                }
            });
        });
    </script>
    <!-- scroll to top -->
    <script src="js/main.js"></script>
</body>

</html>