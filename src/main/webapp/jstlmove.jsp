<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public class Imsi{
	String name;
	String address;
	
	public String getName(){
		return name;
	}
	public String getAddress(){
		return address;
	}
	public void setName(String name){
		this.name=name;
	}
	public void setAddress(String address){
		this.address=address;
	}
}
%>
<%
Imsi imsi=new Imsi();
imsi.setName("hong");
imsi.setAddress("중랑구");
request.setAttribute("imsi",imsi);
request.getRequestDispatcher("jstlmove2.jsp").forward(request, response);
%>
</body>
</html>