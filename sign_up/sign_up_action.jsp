<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page import="java.util.ArrayList"%>

<%
    //받아온 값에 대한 인코딩 설정 (한글 깨짐 방지)
    request.setCharacterEncoding("utf-8");

    //jsp에서 변수를 만드는 문법
    String idValue = request.getParameter("id_value");
    String pwValue = request.getParameter("pw_value");
    String nameValue = request.getParameter("name_value");
    String phoneValue = request.getParameter("phone_value");
    String rankValue = request.getParameter("rank_value");

    //디비 접속해서 뭔가를 하는 코드

    //Connector 파일을 불러오겠다
    Class.forName("com.mysql.jdbc.Driver");

    //데이터베이스 정의 (연결할 데이터베이스에 대한 설명을 적는 곳) (데이터베이스의 주소, 아이디, 비번)
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/web", "stageus", "stageus");

    //sql 만들기
    String sql = "INSERT INTO user (id, pw, name, phone, rank) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);
    query.setString(3, nameValue);
    query.setString(4, phoneValue);
    query.setString(5, rankValue);
  
    //sql문이 삽입, 수정, 삭제일 때는 아래 명령어만 쳐주면 작업 끝남
    query.executeUpdate();


%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <script>
        




        alert("회원가입 성공!")
        location.href="/scheduler/index.jsp"
        
    </script>
</body>
</html>