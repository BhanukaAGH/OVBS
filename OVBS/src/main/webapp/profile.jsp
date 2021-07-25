<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>You Movies</title>
    <link rel="shortcut icon" type="image/png" href="img/logo.png">
</head>

<body>
	<!-- check user login or not  -->
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("index.jsp");
		}
	%>
	
	
	<div class="logo">
        You <span>Movies</span>
    </div>
    <!-- Success message -->
    <div class="success">
        ${changeprofilesuccess}
    </div>
    <div class="success">
        ${changePasswordsuccess}
    </div>
    <!-- error message -->
    <div class="error">
        ${changeprofilemessage}
    </div>
    <div class="error">
        ${changePasswordmessage}
    </div>
    <div class="showcase">
        <div class="vertical-nav">
            <ul class="tabs-menu">
                <li class="current"><a href="#tab-1">Profile</a></li>
                <li><a href="#tab-2">Edit profile</a></li>
                <li><a href="#tab-3">Change Password</a></li>
                <li><a href="#tab-4">Delete Account</a></li>
            </ul>
        </div>
        <div class="container">
            <div id="tab-1" class="tab-content">
                <table>
                    <tr>
                        <td>User Name</td>
                        <td>${user.getUsername()}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>${user.getEmail()}</td>
                    </tr>
                </table>
            </div>
            <div id="tab-2" class="tab-content">
                <form action="UpdateUserServlet" method="post">
                    <table>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="Uuname" id="" value="${user.getUsername()}"></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="email" name="Uemail" id="" value="${user.getEmail()}"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="text-align: right;"><input type="submit" name="update" id="" value="Update profile"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="tab-3" class="tab-content">
                <form action="ChangePasswordServlet" method="post">
                    <table>
                        <tr>
                            <td>Current Password</td>
                            <td><input type="password" name="Currentpass" id="" placeholder="Current Password"></td>
                        </tr>
                        <tr>
                            <td>New Password</td>
                            <td><input type="password" name="Newpass" id="" placeholder="New Password"></td>
                        </tr>
                        <tr>
                            <td>Re-enter Password</td>
                            <td><input type="password" name="Reenterpass" id="" placeholder="Re-enter Password"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="text-align: right;"><input type="submit" name="changePassword" id="" value="Change password"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="tab-4" class="tab-content">
                <form action="DeleteUserAccountServlet" method="post">
                    <table>
                        <tr>
                            <td>Delete Account</td>
                            <td><input type="submit" name="Delete" id="" value="Delete Account"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {

            $('.tabs-menu a').click(function(event) {
                event.preventDefault();

                // Toggle active class on tab buttons
                $(this).parent().addClass("current");
                $(this).parent().siblings().removeClass("current");

                // display only active tab content
                var activeTab = $(this).attr("href");
                $('.tab-content').not(activeTab).css("display", "none");
                $(activeTab).fadeIn();

            });

        });
    </script>
</body>

</html>