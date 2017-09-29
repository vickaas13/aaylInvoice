<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${message }</h1>
<%--
	String str=(String)request.getAttribute("message");
	if(str!=null)
		out.println("<h1> "+str+"</h1>");		
--%> 
<a href="InvoiceController.ob" >Create Invoice</a><br>
<a href="../index.jsp">Logout</a>
</body>
</html>