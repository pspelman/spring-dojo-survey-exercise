<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dojo Survey</title>
</head>
<body>
<h1>
    <c:out value="${message}"/>
</h1>
<%--<c:out value="${sessionScope.count }" />--%>


Results from the form:
<div id="form-data">

    Name: <c:out value="${name}"/> <br/>
    Location: <c:out value="${dojo}"/> <br/>
    Lang: <c:out value="${fave_lang}"/> <br/>
    Note: <c:out value="${comment}"/> <br/>
</div>
<br/>
<!-- /end #contact-form -->
</body>
</html>
