<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Usuários</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            margin: 50px auto;
            width: 300px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            border-radius: 8px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        ul {
            padding-left: 20px;
        }
        li {
            margin: 4px 0;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Cadastro de Nome de Usuário</h2>
    <form method="post" action="cadastro">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required />
        <input type="submit" value="Cadastrar" />
    </form>

    <h3>Usuários Cadastrados:</h3>
    <ul>
        <% 
            java.util.List<String> nomes = (java.util.List<String>) request.getAttribute("nomes");
            if (nomes != null) {
                for (String nome : nomes) {
        %>
            <li><%= nome %></li>
        <% 
                }
            }
        %>
    </ul>
</div>
</body>
</html>
