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


USERFORM:
<div id="contact-form">

<%--<form id="contact" method="post" action="" onsubmit="return false">--%>
<form id="contact" method="post" action="/submit">

<fieldset>

<label for="name">Name: </label>
<input type="text" name="name" id="name"><br/>

<label for="dojo">Dojo location: </label>
    <select name="dojo" id="dojo">
        <option value="Seattle">Seattle</option>
        <option value="San Fran">San Fran</option>
        <option value="Elsewhere">Somewhere else</option>

    </select>
    <br/>

<label for="fave_lang">Fave Lang:</label>
    <select name="fave_lang" id="fave_lang">
        <option value="java">Java</option>
        <option value="san_fran">Python</option>
        <option value="french">French</option>

    </select>
    <br/>

<label for="comment">Question/Comment:</label><br/>
<textarea name="comment" id="comment"></textarea><br/>

<input type="submit" name="submit" id="submit" value="Send Message" />

</fieldset>
</form>
</div>
<br/>
<!-- /end #contact-form -->


</body>
</html>
