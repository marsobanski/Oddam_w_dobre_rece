<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: riffraff
  Date: 06.07.19
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/style.css" />
</head>
<body>
<header>
    <jsp:include page="logged-header.jsp"/>
</header>

<section class="login-page">
    <h2>Czy na pewno chcesz się wylogować?</h2>
    <form action="<c:url value="/logout"/>" method="post">
        <div class="form-group form-group--buttons">
            <a href="/donation" class="btn btn--without-border">Cofnij</a>
            <button class="btn" type="submit">Wyloguj</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
    </form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>
