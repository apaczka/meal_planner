<%@ page import="pl.coderslab.model.Admins" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Zaplanuj jedzonko</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style><%@include file="css/style.css"%></style>
</head>
<body>

    <c:set var = "admin" value="${sessionScope.userName}"/>

<c:if test="${admin==null}">

<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <a href="/" class="navbar-brand main-logo">
            Zaplanuj <span>Jedzonko</span>
        </a>
        <ul class="nav nounderline text-uppercase">
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href='<c:url value="/login"/>'>Logowanie</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href='<c:url value="/register"/>'>Rejestracja</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link" href='<c:url value="/about/"/>'>O aplikacji</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href='<c:url value="/recipelistpublic/"/>'>Przepisy</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link disabled" href='<c:url value="/contact/"/>'>Kontakt</a>
            </li>
        </ul>
    </nav>
</header>

</c:if>

<c:if test="${admin!=null}">


<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-between">
        <a href="/app/dashboard/" class="navbar-brand main-logo main-logo-smaller">
            Zaplanuj <span>Jedzonko</span>
        </a>
        <div class="d-flex justify-content-around">
            <h4 class="text-light mr-3">${admin}</h4>
            <div class="circle-div text-center"><i class="fas fa-user icon-user"></i></div>
        </div>
    </nav>
</header>

</c:if>