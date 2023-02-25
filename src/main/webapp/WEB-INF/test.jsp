<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">

    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/app.js"></script>

    <title>Fruity Loopin' Tiem</title>
</head>
<body>
<div class="container mt-3">
    <h1 class="">Les Fruits</h1>
</div>
<div class="container p-3 bg-light d-flex justify-content-center align-items-center ">
    <table class="table table-striped table-bordered mb-0">
        <thead>
        <tr>
            <th>Name</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="oneFruit" items="${allFruits}">
            <tr>
                <td><c:out value="${oneFruit.name} "/></td>
                <td><c:out value="${oneFruit.price}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>