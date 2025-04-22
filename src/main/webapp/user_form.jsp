<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Modifica Utente</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #343a40;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .back-link {
            text-align: center;
            margin-top: 15px;
        }

        .back-link a {
            text-decoration: none;
            color: #007bff;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Aggiungi Utente</h2>
    <form action="AggiungiModifica" method="GET">
        <input type="hidden" name="id">

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome">

        <label for="cognome">Cognome:</label>
        <input type="text" id="cognome" name="cognome">

        <label for="email">Email:</label>
        <input type="text" id="email" name="email">

        <input type="submit" value="Salva Utente">
    </form>

    <div class="back-link">
        <a href="view_users.jsp">← Torna all'elenco</a>
    </div>
</div>
</body>
</html>
