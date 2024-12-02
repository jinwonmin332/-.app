<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입 완료</title>
    <script type="text/javascript">
        // 회원가입 성공 후 팝업 창과 리디렉션 처리
        function showSuccessAndRedirect() {
            alert("회원가입이 성공하였습니다.");
            window.location.href = "purchase.jsp"; // 상품 구매 페이지로 이동
        }
    </script>
</head>
<body>
<%
    // 회원가입 데이터를 가져오기
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email_id") + "@" + request.getParameter("email_domain");
    String phone = request.getParameter("phone");

    // 세션에 사용자 정보 저장
    session.setAttribute("userId", id);
    session.setAttribute("userPassword", pw);

    // 회원가입 정보를 확인용 출력 (옵션)
    out.println("<p>아이디: " + id + "</p>");
    out.println("<p>이름: " + name + "</p>");
    out.println("<p>이메일: " + email + "</p>");
    out.println("<p>전화번호: " + phone + "</p>");
%>

<!-- 페이지 로드 시 팝업과 리디렉션 -->
<body onload="showSuccessAndRedirect()"></body>
</html>
