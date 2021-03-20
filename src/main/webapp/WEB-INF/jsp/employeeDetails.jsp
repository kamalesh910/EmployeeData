<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<style>
th {
	background-color: #286090;
}

td, th {
	font-family: 'Roboto', sans-serif;
	font-size: 15px;
}

th {
	color: white;
}

body {
	background-color: whitesmoke;
}

table {
	color: black;
	background-color: white;
}

h3 {
	color: black;
	background-color: white;
	padding: 6px;
	margin: 20px;
}
</style>
<body>
	<%@page import="java.util.ArrayList"%>
	<%--Importing all the dependent classes--%>
	<%@page import="java.io.*"%>
	<%@page import="com.employee.model.*"%>
	<%@page import="java.util.Iterator"%>
	<%!ArrayList<Employee> employeeList = new ArrayList<Employee>();%>
	<%
		String delimeter = ",";
	String line;
	FileReader file = new FileReader("src/main/resources/static/empData.csv");
	BufferedReader reader = new BufferedReader(file);
	while ((line = reader.readLine()) != null) {
		String[] empValue = line.split(delimeter);
		Employee employee = new Employee(Integer.parseInt(empValue[0]), empValue[1], empValue[2], empValue[3],
		Long.parseLong(empValue[4]));
		employeeList.add(employee);
	}
	reader.close();
	%>
	<%--Assigning ArrayList object containing Employee data to the local object --%>
	<div>
		<h3 align="center">Employee Details</h3>
	</div>
	<table class="table table-hover " style="width: 90%;" align="center">

		<tr>
			<th align="center">Employee ID</th>
			<th align="center">Employee Name</th>
			<th align="center">Employee Address</th>
			<th align="center">Employee Mail</th>
			<th align="center">Employee Number</th>
		</tr>
		<%
			// Iterating through subjectList
		if (employeeList != null) // Null check for the object
		{
			Iterator<Employee> iterator = employeeList.iterator(); // Iterator interface
			while (iterator.hasNext()) // iterate through all the data until the last record
			{
				Employee empDetails = iterator.next(); //assign individual employee record to the employee class object
		%>
		<tr>
			<td align="center"><%=empDetails.getEmpId()%></td>
			<td><%=empDetails.getEmpName()%></td>
			<td><%=empDetails.getEmpAddress()%></td>
			<td><%=empDetails.getEmpEmailId()%></td>
			<td><%=empDetails.getEmpNumber()%></td>
		</tr>
		<%
			}
		}
		%>
	</table>
</body>
</html>