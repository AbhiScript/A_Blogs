<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | A_Blogs</title>
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
	background: #f3f5f7;
	color: #333;
}

/* Navbar */
nav {
	background: linear-gradient(135deg, #0078D7, #4f46e5);
	color: white;
	padding: 15px 40px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
}

nav .brand {
	font-size: 1.6rem;
	font-weight: 700;
}

nav .actions a {
	color: white;
	margin-left: 20px;
	text-decoration: none;
	font-weight: 500;
	transition: 0.3s;
}

nav .actions a:hover {
	text-decoration: underline;
}

/* Feed Section */
.feed {
	max-width: 800px;
	margin: 40px auto;
	padding: 0 20px;
}

.post {
	background: white;
	border-radius: 16px;
	padding: 25px;
	margin-bottom: 20px;
	box-shadow: 0 3px 10px rgba(0, 0, 0, 0.05);
	transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.post:hover {
	transform: translateY(-3px);
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
}

.post h3 {
	color: #0078D7;
	margin-bottom: 8px;
}

.post p {
	font-size: 0.95rem;
	color: #444;
	line-height: 1.6;
}

footer {
	text-align: center;
	padding: 20px;
	color: #777;
	font-size: 0.9rem;
	margin-top: 40px;
}
</style>
</head>
<body>

	<nav>
		<div class="brand">A_Blogs</div>
		<div class="actions">
			<a href="profile.jsp">Profile</a> <a href="logout">Logout</a>
		</div>
	</nav>

	<div class="feed">
		<div class="post">
			<h3>Welcome to A_Blogs!</h3>
			<p>This is your home feed. Here you’ll see posts from people
				across the community.</p>
		</div>

		<div class="post">
			<h3>✨ Start your first blog!</h3>
			<p>Click the “Create Post” button and express your thoughts with
				the world. Write, inspire, and connect.</p>
		</div>
	</div>

	<footer>
		©
		<%=java.time.Year.now()%>
		A_Blogs | Built by Abhijeet
	</footer>

</body>
</html>
