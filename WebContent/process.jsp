<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Ticket Price</title>
</head>
<body>
	<%!
	String name;
	String address;
	String mobile_num;
	String success;
	String printName;
	String printAddress;
	String printMobile;
	%>
	<%
	name = request.getParameter("name");
	address = request.getParameter("address");
	mobile_num = request.getParameter("mobile");
	if(name.equalsIgnoreCase("Ram") && address.equalsIgnoreCase("Delhi") && mobile_num.equals("9999988888")){
		success = "User has been successfully validated!!!";
		printName = "Ram";
		printAddress = "Delhi";
		printMobile = "9999988888";
	}
	else if(name.equalsIgnoreCase("Mohan") && address.equalsIgnoreCase("Mumbai") && mobile_num.equals("9999977777")){
		success = "User has been successfully validated!!!";
		printName = "Mohan";
		printAddress = "Mumbai";
		printMobile = "9999977777";
	}
	else{
		success = "User has not been Validated...";
	}
	%>
	<table width="20%" border="1" cellspacing="0" cellpadding="0">
	  <tr>
	    <td colspan = "2"><%=success%></td>
	  </tr>
	  <%
	  if(success.contains("successfully")){
	  %>
	  <tr>
	    <td>Name</td><td><%=printName%></td>
	  </tr>
	  <tr>
	    <td>Address</td><td><%=printAddress%></td>
	  </tr>
	  <tr>
	    <td>Mobile No.</td><td><%=printMobile%></td>
	  </tr>
	  <%
	  }
	  %>
	</table>
</body>
</html>