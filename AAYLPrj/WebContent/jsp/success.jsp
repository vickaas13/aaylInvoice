<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${message }</h1>
	<%
		String user = null;
		if (session.getAttribute("user") == null) {
			response.sendRedirect("../index.jsp");
		} else
			user = (String) session.getAttribute("user");
		String userName = null;
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user"))
					userName = cookie.getValue();
				if (cookie.getName().equals("JSESSIONID"))
					sessionID = cookie.getValue();
			}
		}
	%>
	<h3>
		Hi <%=userName%>, Login successful. Your Session ID=<%=sessionID%></h3>
	<br> User=<%=user%>
	<br>
	<a href="homepage.jsp">Create Invoice</a>	
	<form action="../LogoutController" method="post">
		<input type="submit" value="Logout">
	</form> 
</body>
</html>