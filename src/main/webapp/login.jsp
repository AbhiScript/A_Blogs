<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login | A_Blogs</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg, #0078D7, #4f46e5);
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	color: white;
}

.container {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(12px);
	padding: 40px;
	width: 400px;
	border-radius: 20px;
	text-align: center;
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.25);
	animation: fadeIn 1s ease;
}

@
keyframes fadeIn {
	from {opacity: 0;
	transform: translateY(15px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
h2 {
	margin-bottom: 15px;
	font-weight: 600;
}

input {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border: none;
	border-radius: 30px;
	outline: none;
	font-size: 1rem;
}

input[type="text"], input[type="password"] {
	background: rgba(255, 255, 255, 0.8);
	color: #333;
}

button {
	width: 100%;
	padding: 12px;
	margin-top: 15px;
	background: #10b981;
	color: white;
	font-size: 1rem;
	font-weight: 600;
	border: none;
	border-radius: 30px;
	cursor: pointer;
	transition: 0.3s;
}

button:hover {
	background: #0a8c63;
}

a {
	color: #fff;
	text-decoration: underline;
	font-size: 0.9rem;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Welcome Back!</h2>
		<p>Login to your A_Blogs account</p>
		<form action="login" method="post">
			<input type="text" name="username" placeholder="Username" required>
			<input type="password" name="password" placeholder="Password"
				required>
			<button type="submit">Login</button>
		</form>
		<p style="margin-top: 15px;">
			Don't have an account? <a href="register.jsp">Register</a>
		</p>
	</div>
</body>
</html>
