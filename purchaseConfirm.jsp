<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구매 확인</title>
    <style>
        img {
            display: block;
            margin-bottom: 10px;
            max-width: 300px; /* 필요에 따라 크기 조정 */
        }
    </style>
</head>
<body>

<h2>구매 확인</h2>

<%
    // 상품 가격 설정
    int zeldaPrice = 30000;
    int aceAttorneyPrice = 20000;
    int pokemonPrice = 40000;

    // 선택된 상품 가져오기
    String[] products = request.getParameterValues("products");
    int totalPrice = 0;

    // 총 가격 계산 및 상품 리스트 생성
    StringBuilder productList = new StringBuilder();
    if (products != null) {
        for (String product : products) {
            if (product.equals("Zelda")) {
                totalPrice += zeldaPrice;
                productList.append("<img src='image1.png' alt='젤다의 전설'> 젤다의 전설 (30,000원) <br>");
            } else if (product.equals("Ace Attorney")) {
                totalPrice += aceAttorneyPrice;
                productList.append("<img src='image2.png' alt='역전재판'> 역전재판 (20,000원) <br>");
            } else if (product.equals("Pokemon Black")) {
                totalPrice += pokemonPrice;
                productList.append("<img src='image3.png' alt='포켓몬스터 블랙'> 포켓몬스터 블랙 (40,000원) <br>");
            }
        }
    }

    // 배송 예정일 계산 (현재 날짜 + 3일)
    Calendar calendar = Calendar.getInstance();
    calendar.add(Calendar.DAY_OF_YEAR, 3);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    String deliveryDate = sdf.format(calendar.getTime());

    // 폼에서 입력된 값 가져오기
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
%>

<p>구매한 상품:</p>
<p><%= productList.toString() %></p>
<p>총 구매 금액: <%= totalPrice %>원</p>
<p>배송 예정일: <%= deliveryDate %></p>

<p>이름: <%= name %></p>
<p>아이디: <%= id %></p>
<p>이메일: <%= email %></p>
<p>주소: <%= address %></p>

<!-- 구매목록 재선택 버튼 -->
<form action="purchase.jsp" method="post" style="margin-top: 20px;">
    <button type="submit">구매목록 재선택</button>
</form>

</body>
</html>
