<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>scheduler</title>
    <!-- <link rel="shortcut icon" type="image/x-icon" href="img/pets.png"> -->
    <link rel="stylesheet" type="text/css" href="sign_up.css">
</head>
<body>
    <div id="cont">
        <h2>아이디 중복확인</h2>
        <input id="id" class="input" type="text" name="id_value" placeholder="아이디 입력">
        <input id="login_bt" type="button" onclick="id_checkEvent()" value="중복확인">
        
    </div>

    
    <script>
        function id_checkEvent() {
            window.open("id_check.jsp", "중복확인", "width=400, height=350");
        }

    </script>
</body>
</html>