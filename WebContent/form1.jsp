<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user1" class="bean.Kullanici" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user1"/>

<% 
String action=request.getParameter("action");


if(action!=null && action.equals("submitForm")){
	
	if(user1.validate()){
		
		request.getRequestDispatcher("/JSPBeanGecerlilikKontroluEkleme/Controller").forward(request, response);
	}
	
	
}



%>


<h1><jsp:getProperty property="message" name="user1"/></h1>

<form action="/JSPBeanGecerlilikKontroluEkleme/form1.jsp" method="post">

<input type="hidden" name="action" value="submitForm"/>
Email:<input type="text" name="email" value="<jsp:getProperty property="email" name="user1" />" /><br/>
Parola:<input type="text" name="pasword" value="<jsp:getProperty property="password" name="user1" />" /><br/>
<input type="submit" value="OK" />

</form>

</body>
</html>