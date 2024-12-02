<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오류</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 50px;
        }
        .error-message {
            color: red;
            font-size: 20px;
            margin-bottom: 20px;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn-container a {
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .btn-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2>로그인 오류</h2>

<p class="error-message">아이디와 비밀번호가 일치하지 않습니다.</p>

<div class="btn-container">
    <a href="purchase.jsp">다시 시도</a>
</div>

</body>
</html>
