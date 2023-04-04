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

    //디비 접속해서 뭔가를 하는 코드

    //Connector 파일을 불러오겠다
    Class.forName("com.mysql.jdbc.Driver");

    //데이터베이스 정의 (연결할 데이터베이스에 대한 설명을 적는 곳) (데이터베이스의 주소, 아이디, 비번)
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/web", "stageus", "stageus");

    //sql 만들기
    String sql = "SELECT * FROM user WHERE id=? AND pw=?";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);
  
    //sql문이 삽입, 수정, 삭제일 때는 아래 명령어만 쳐주면 작업 끝남
    //query.executeUpdate();
    //밑에 3개 할 필요 x

    //데이터베이스 요청을 보내기 & 받기
    ResultSet result = query.executeQuery();

    //데이터 정제 (Cursor 방식에서 List로 옮기기)
    //var idList = [] 와 동일
    ArrayList<String> idList = new ArrayList<String>();
    ArrayList<String> pwList = new ArrayList<String>();

    //result.next 는 한줄 row를 다 읽음
    while(result.next()) {
        String id = result.getString(2);
        String pw = result.getString(3);
        idList.add("\"" + id + "\"");
        pwList.add("\"" + pw + "\"");
    };

    //jsp는 자료형을 무시해서 가져오므로 \"해서 string을 가져와줘야 한다
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>scheduler</title>
    <!-- <link rel="shortcut icon" type="image/x-icon" href="img/pets.png"> -->
    <link rel="stylesheet" type="text/css" href="find_id.css">
</head>
<body>
    <div id="cont">
        <img id=logo src="/scheduler/img/logo.png">
        <h2>아이디 찾기</h2>
        <div id="line"></div>
        <form id="cont_box" action="">
            <input id="name" type="text" class="input" name="name_value" placeholder="이름">
            <input id="phone" type="text" class="input" name="phone_value" placeholder="전화번호 (숫자만 입력)">
            <input id="find_id_bt" type="submit" value="아이디 찾기">
        </form>
    </div>

    <!-- <script src="index.js"></script> -->
</body>
</html>