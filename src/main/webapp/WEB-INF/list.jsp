<%--
  Created by IntelliJ IDEA.
  User: ceris
  Date: 12/07/2024
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des chiens</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
    <h1>Liste des chiens</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Numéro</th>
            <th>Nom</th>
            <th>Race</th>
            <th>Date de naissance</th>
            <th>Détails</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dog" items="${dogs}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${dog.name}</td>
                <td>${dog.breed}</td>
                <td>${dog.birth}</td>
                <td><button>Détails</button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <form action="${pageContext.request.contextPath}/dog/add" method="get">
        <button type="submit">Ajouter un chien</button>
    </form>
</div>
</body>
</html>
