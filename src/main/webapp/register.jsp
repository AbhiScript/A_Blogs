<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A_Blogs | Register</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(135deg, #f3f5f7, #e2e8ec);
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.card {
	background: white;
	width: 420px;
	padding: 40px;
	border-radius: 16px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	text-align: center;
	animation: fadeIn 0.8s ease;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.brand {
	font-size: 1.8rem;
	font-weight: bold;
	color: #0078D7;
	margin-bottom: 20px;
}

form {
	text-align: left;
}

label {
	display: block;
	margin-top: 15px;
	font-weight: 600;
}

input, select {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border-radius: 8px;
	border: 1px solid #ccc;
	font-size: 1rem;
}

input[type="submit"] {
	margin-top: 25px;
	background-color: #0078D7;
	color: white;
	font-weight: 600;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

input[type="submit"]:hover {
	background-color: #005ea2;
}

.link {
	margin-top: 15px;
	display: block;
	color: #0078D7;
	text-decoration: none;
}

.link:hover {
	text-decoration: underline;
}

.message {
	margin-top: 15px;
	font-size: 0.9rem;
}

.error {
	color: red;
}

.success {
	color: green;
}
</style>
</head>
<body>
	<div class="card">
		<div class="brand">A_Blogs</div>
		<h2>Create Your Account</h2>

		<form action="register" method="post">
			<label>Username</label> <input type="text" name="username" required>

			<label>Email</label> <input type="email" name="email" required>

			<label>Password</label> <input type="password" name="password"
				required> <label>Role</label> <select name="role" required>
				<option value="user">USER</option>
				<option value="admin">ADMIN</option>
			</select> <input type="submit" value="register">
		</form>
	</div>
</body>
</html>