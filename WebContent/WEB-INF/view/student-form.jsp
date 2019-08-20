<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>Student Registration Page</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">
	
	First Name: <form:input path="firstName"/>
	<br><br>
	Last Name: <form:input path="lastName"/>
	<br><br>
	Country: 
	<form:select path="country">
		<form:options items="${student.countryOptions}" />
	</form:select>
	
	<br><br>
	Programming Language: 
	<form:radiobutton path="favoriteLanguage" value="Java" label="Java" />
	<form:radiobutton path="favoriteLanguage" value="PHP" label="PHP"/>
	<form:radiobutton path="favoriteLanguage" value="C#" label="C#"/>
	<form:radiobutton path="favoriteLanguage" value="Ruby" label="Ruby"/>
	<br><br>
	
	<br><br>
	Operating Systems: 
	Linux<form:checkbox path="operatingSystems" value="Linux"/>
	Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
	MS Windows<form:checkbox path="operatingSystems" value="MS Windows"/>
	<br><br>
	
	<input type="submit" value="Submit"/>
	
	</form:form>
</body>
</html>