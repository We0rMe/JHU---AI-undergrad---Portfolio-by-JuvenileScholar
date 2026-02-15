<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String bgcolor="white";
String color=request.getParameter("color");
if(color!=null){
	bgcolor=color;
	Cookie colorinfocookie=new Cookie("colorinfo",color);
	colorinfocookie.setMaxAge(60*5);
	response.addCookie(colorinfocookie);
}
else{
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		String colorinfo1=null;
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("colorinfo")){
				colorinfo1=cookies[i].getValue();
				break;
			}
		}
		if(colorinfo1!=null){
			bgcolor=colorinfo1;
		}
}}
%>
<body bgcolor="<%=bgcolor %>">
</body>
</html>