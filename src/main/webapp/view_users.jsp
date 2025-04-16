<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Elenco Utenti</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #343a40;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .bottom-link {
            text-align: center;
            margin-top: 30px;
        }

        .bottom-link a {
            background-color: #28a745;
            color: white;
            padding: 10px 18px;
            border-radius: 5px;
            text-decoration: none;
        }

        .bottom-link a:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<h2>Elenco Utenti</h2>
<hr><br/>

<table>
    <tr>
        <th>Nome</th>
        <th>Cognome</th>
        <th>Email</th>
        <th>Modifica</th>
        <th>Cancella</th>
    </tr>

    <c:forEach var="tempUser" items="${users_list}">
        <tr>
            <td>${tempUser.nome}</td>
            <td>${tempUser.cognome}</td>
            <td>${tempUser.email}</td>
            <td><a href="update_form.jsp?id=${tempUser.id}&nome=${tempUser.nome}&cognome=${tempUser.cognome}&email=${tempUser.email}">Modifica</a></td>
            <td><a href="CancellaUtente?id=${tempUser.id}">Cancella</a></td>
        </tr>
    </c:forEach>
</table>

<div class="bottom-link">
    <a href="user_form.jsp">Aggiungi un nuovo utente</a>
</div>
</body>
</html>
