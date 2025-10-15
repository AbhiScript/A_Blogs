<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A_Blogs | Welcome</title>
<style>
/* Reset */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(135deg, #f3f5f7, #e2e8ec);
	color: #333;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.container {
	background: white;
	width: 450px;
	border-radius: 16px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	text-align: center;
	padding: 40px 30px;
	animation: fadeIn 1s ease;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(15px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.brand {
	font-size: 2rem;
	font-weight: bold;
	color: #0078D7;
	margin-bottom: 10px;
}

.tagline {
	font-size: 1rem;
	color: #666;
	margin-bottom: 25px;
}

.btn {
	display: inline-block;
	width: 180px;
	padding: 12px;
	margin: 12px;
	font-size: 1rem;
	font-weight: 600;
	border: none;
	border-radius: 30px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.btn-register {
	background-color: #0078D7;
	color: white;
}

.btn-register:hover {
	background-color: #005ea2;
}

.btn-login {
	background-color: white;
	color: #0078D7;
	border: 2px solid #0078D7;
}

.btn-login:hover {
	background-color: #0078D7;
	color: white;
}

footer {
	position: absolute;
	bottom: 20px;
	font-size: 0.9rem;
	color: #777;
}

footer a {
	color: #0078D7;
	text-decoration: none;
}

footer a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<div class="brand">A_Blogs</div>
		<div class="tagline">Share your thoughts. Inspire the world.</div>
		<p>
			Welcome to <strong>A_Blogs</strong> - your personal space to write,
			connect, and explore ideas.
		</p>
		
		<div style="margin-top: 30px;">
			<form action="register.jsp" method="get" style="display:inline;">
				<button class="btn btn-register">Register</button>
			</form>
			
			<form action="login.jsp" method="get" style="display:inline;">
				<button class="btn btn-login">Login</button>
			</form>
		</div>
	</div>
	
	<footer>
		&copy; <%= java.time.Year.now() %> A_Blogs | Crafted By Abhijeet
	</footer>
</body>
</html>