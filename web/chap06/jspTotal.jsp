<%--
  Created by IntelliJ IDEA.
  User: gmfd7
  Date: 2023-10-19
  Time: 오전 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP 종합 예제</title>
</head>
<body>
    <h2>JSP 종합 예제</h2>
    <hr>

    <%!
        String[] members = { "김길동", "홍길동", "김사랑", "박사랑"};
        int num1 = 10;

        int calc(int num2) {
            return num1 + num2;
        }
    %>

    <h3>
        1. JSP 주석
        <!-- HTML 주석 : 화면에서는 안 보이고 소스 보기에는 보임-->
        <%-- JSP 주석 : 화면과 소스 보기에서 보이지 않음--%>
    </h3>
    <h3>
        2. calc(10) 메서드 실행 결과 :
        <%=calc(10)%>
    </h3>
    <hr>
    <h3>
        3. include : index.jsp</h3>
        <%@ include file="../index.jsp"%>
    <hr>
    <h3>
        4. 스크립트(배열 데이터 출력)
    </h3>
        <ul>
            <%
                for (String name : members) {
            %>
                <li><%=name%>></li>
            <%
                }
            %>
        </ul>
</body>
</html>
