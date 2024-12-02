<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 구매</title>
    <script>
        function showError(message) {
            alert(message); // 팝업창 표시
            document.getElementById("id").value = ""; // 아이디 입력 초기화
            document.getElementById("password").value = ""; // 비밀번호 입력 초기화
        }
    </script>
</head>
<body>

<h2>상품 구매</h2>

<%
    // 세션에서 등록된 아이디와 비밀번호 가져오기
    String registeredId = (String) session.getAttribute("userId");
    String registeredPassword = (String) session.getAttribute("userPassword");

    // 입력된 아이디와 비밀번호 가져오기
    String inputId = request.getParameter("id");
    String inputPassword = request.getParameter("password");

    // POST 방식으로 데이터가 전달되었을 경우 처리
    if (inputId != null && inputPassword != null) {
        if (registeredId != null && registeredPassword != null) {
            if (inputId.equals(registeredId) && inputPassword.equals(registeredPassword)) {
                // 아이디와 비밀번호가 일치할 경우 구매 확인 페이지로 폼 데이터 전달
                request.setAttribute("name", request.getParameter("name"));
                request.setAttribute("id", inputId);
                request.setAttribute("password", inputPassword);
                request.setAttribute("email", request.getParameter("email"));
                request.setAttribute("address", request.getParameter("address"));
                request.setAttribute("products", request.getParameterValues("products"));
                RequestDispatcher dispatcher = request.getRequestDispatcher("purchaseConfirm.jsp");
                dispatcher.forward(request, response);
            } else {
                // 아이디 또는 비밀번호가 일치하지 않을 경우 error.jsp로 폼 데이터 전달
                request.setAttribute("errorMessage", "아이디와 비밀번호가 일치하지 않습니다.");
                request.setAttribute("name", request.getParameter("name"));
                request.setAttribute("id", inputId);
                request.setAttribute("password", inputPassword);
                request.setAttribute("email", request.getParameter("email"));
                request.setAttribute("address", request.getParameter("address"));
                request.setAttribute("products", request.getParameterValues("products"));
                RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            // 세션 정보가 없을 경우 경고
            response.sendRedirect("register.jsp"); // 세션 정보가 없다면 회원가입 페이지로 이동
        }
    }
%>

<form action="purchase.jsp" method="post">
    <label>구매할 상품을 선택하세요:</label><br>
    <img src="image1.png" alt="젤다의 전설">
    <input type="checkbox" name="products" value="Zelda" /> 젤다의 전설 (30,000원) <br>

    <img src="image2.png" alt="역전재판">
    <input type="checkbox" name="products" value="Ace Attorney" /> 역전재판 (20,000원) <br>

    <img src="image3.png" alt="포켓몬스터 블랙">
    <input type="checkbox" name="products" value="Pokemon Black" /> 포켓몬스터 블랙 (40,000원) <br><br>

    <label for="name">이름</label>
    <input type="text" id="name" name="name" required><br>

    <label for="id">아이디</label>
    <input type="text" id="id" name="id" required><br>

    <label for="password">비밀번호</label>
    <input type="password" id="password" name="password" required><br>

    <label for="email">이메일</label>
    <input type="email" id="email" name="email" required><br>

    <label for="address">주소</label>
    <input type="text" id="address" name="address" required><br>

    <input type="submit" value="구매 확인">
</form>

</body>
</html>
