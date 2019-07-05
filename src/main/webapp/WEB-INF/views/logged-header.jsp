<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="container container--70">
    <ul class="nav--actions">
        <li class="logged-user">
            ${currentUser.username}
            <ul class="dropdown">
                <li><a href="#">Profil</a></li>
                <li><a href="#">Ustawienia</a></li>
                <li><a href="#">Moje zbiórki</a></li>
                <li><a href="<c:url value="/logout"/>" methods="post">Logout</a></li>
                <form action="<c:url value="/logout"/>" method="post">
                    <input class="fa fa-id-badge" type="submit" value="Wyloguj">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </ul>
        </li>
    </ul>

    <ul>
        <li><a href="index.html" class="btn btn--without-border active">Start</a></li>
        <li><a href="index.html#steps" class="btn btn--without-border">O co chodzi?</a></li>
        <li><a href="index.html#about-us" class="btn btn--without-border">O nas</a></li>
        <li><a href="index.html#help" class="btn btn--without-border">Fundacje i organizacje</a></li>
        <li><a href="index.html#contact" class="btn btn--without-border">Kontakt</a></li>
    </ul>
</nav>