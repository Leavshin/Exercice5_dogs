<%--
  Created by IntelliJ IDEA.
  User: ceris
  Date: 12/07/2024
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulaire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-5">
    <h1>Ajouter un chien</h1>
    <form action="${pageContext.request.contextPath}/dog/add" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Nom :</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="breed" class="form-label">Race :</label>
            <input type="text" class="form-control" id="breed" name="breed" required>
        </div>
        <div class="mb-3">
            <label for="birth" class="form-label">Date de naissance :</label>
            <input type="date" class="form-control" id="birth" name="birth" required>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>
</body>
</html>
