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
        <img id=logo src="/scheduler/img/logo.png">
        <h2>회원가입</h2>
        <div id="line"></div>
        <form id="cont_box" action="/scheduler/sign_up/sign_up_action.jsp" onsubmit="return check()">
            <div id="info_box">
                <div id="box1">
                    <input id="id" class="input" type="text" name="id_value" placeholder="아이디">
                    <input id="login_bt" type="button" onclick="id_checkEvent()" value="중복확인">
                    <input id="pw" type="text" class="input" name="pw_value" placeholder="비밀번호">
                    <input id="name" type="text" class="input" name="name_value" placeholder="이름">
                </div>
                <div id="box2">
                    <input id="phone" type="text" class="input" name="phone_value" placeholder="전화번호 (숫자만 입력)">
                    <h3>직급</h3>
                    <select id="rank" name="rank_value">
                        <option value="팀원">팀원</option>
                        <option value="팀장">팀장</option>
                        <option value="관리자">관리자</option>
                    </select>
                </div>
            </div>
            <input id="sign_up_bt" type="submit" value="계정 생성" onsubmit="checkEvent()">
        </form>
    </div>

    
    <script>
        function id_checkEvent() {
            window.open("id_check.jsp", "중복확인", "width=400, height=350");
        }

        function checkEvent() {
            if (!document.getElementById(id).value) {
                alert("아이디를 입력해주세요")
                return false;
            }
            else if (!document.joinform.pw.value) {
                alert("비밀번호를 입력해주세요")
                return false;
            }
            else if (!document.joinform.name.value) {
                alert("이름을 입력해주세요")
                return false;
            }
            else if (!document.joinform.phone.value) {
                alert("이름을 입력해주세요")
                return false;
            }
        }

    </script>
</body>
</html>