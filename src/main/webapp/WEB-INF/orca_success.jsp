<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charSet="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>결제 위젯</title>
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<body>
  결제성공
  ${orderid}
  ${amount}
  ${paymenttype}
</body>

</html>