<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h2 {
            text-align: center;
        }
        form {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px #ddd;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input, select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn-container {
            text-align: center;
        }
        .btn-container input {
            width: 45%;
            padding: 10px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }
        .btn-container input:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2>회원 가입</h2>

<form action="register_ok.jsp" method="post">
    <label for="id">아이디</label>
    <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
    
    <label for="pw">비밀번호</label>
    <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required>
    
    <label for="pw_confirm">비밀번호 확인</label>
    <input type="password" id="pw_confirm" name="pw_confirm" placeholder="비밀번호를 다시 입력하세요" required>
    
    <label for="name">성명</label>
    <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
    
    <label>성별</label>
    <input type="radio" id="male" name="gender" value="m" checked> 남
    <input type="radio" id="female" name="gender" value="f"> 여
    
    <label for="email">이메일</label>
    <input type="text" id="email" name="email_id" placeholder="이메일 ID" style="width: 40%;" required>
    @
    <select id="email_domain" name="email_domain" style="width: 55%;">
        <option value="gmail.com" selected>gmail.com</option>
        <option value="naver.com">naver.com</option>
        <option value="daum.net">daum.net</option>
    </select>
    
    <label for="phone">전화번호</label>
    <input type="text" id="phone" name="phone" placeholder="전화번호를 입력하세요" required>
    
    <div class="btn-container">
        <input type="submit" value="회원가입">
        <input type="reset" value="초기화">
    </div>
</form>

</body>
</html>
