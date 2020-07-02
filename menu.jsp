<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>

<html>
<head>
	<title>LOGIN | OREAL</title>
	<script src="test.js"></script>
    <script src="https://kit.fontawesome.com/ad7b30a9d7.js" crossorigin="anonymous"></script>
	<link type = "text/css" rel = "stylesheet" href = "css/style.css"></link>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <header class="header">
        <ul class="header_user-info user-info">
            <a href="member.html">
                <li class="user-info__join">
                    <span class="join-icon">
                        <i class="fas fa-users fa-2x"></i>
                    </span><br>
                    <span class="join-title">
                        JOIN
                    </span>
                </li>
            </a>
            <a href="login.html">
                <li class="user-info__login">
                    <span class="login-icon">
                        <i class="fas fa-sign-in-alt fa-2x"></i>
                    </span><br>
                    <span class="login-title">
                        LOGIN
                    </span>
                </li>
            </a>
        </ul>
        <div class="header__logo">
            <a href="index.html">
                <img src="images/logo.jpg" alt="logo">  
            </a>
        </div>
    </header>
    <nav class="nav">
        <div class="nav__search-bar">
            <input type="text" placeholder="검색어를 입력하세요.  ex)후드티, 반팔티, 수트">
            <input type="submit" value="검색">
        </div>
        <ul class="nav__menu-bar">
            <li class="nav_menu" id="menu__best" onclick="show_best()">
                BEST
            </li>
            <li class="nav_menu" id="menu__new" onclick="show_new()">
                NEW
            </li>
            <li class="nav_menu" id="menu__sale" onclick="show_sale()">
                SALE
            </li>
            <li class="nav_menu" id="menu__top" onclick="show_top()">
                TOP
            </li>
            <li class="nav_menu" id="menu__bottom" onclick="show_bottom()">
                BOTTOM
            </li>
            <li class="nav_menu" id="menu__suit" onclick="show_suit()">
                SUIT
            </li>
        </ul>
	</nav>
	<main class="main main_login">
		<form name = "loginForm" method = "get" action="index.html" target = "_top">
			<fieldset>
				<script type="text/javascript"> 
					
					<% String strID=request.getParameter("id"); %> 
					var strName = "<%=strID%>"; 
					document.write(findName(strName) + " 회원님<br/><br/>OREAL에서 즐거운 쇼핑하세요<br>"); 
					
					function findName(str) {
						if(str === member_id[0])
							return member_name[0];
						if(str === member_id[1])
							return member_name[1];
						if(str === member_id[2])
							return member_name[2];
					}
		
				</script>
			
				<div class="btns">
					<p>
						<input type = "submit" value = "확인" onClick="javascript:logoutProcess()">
						<script>
							function logoutProcess(){
								parent.location.replace("index.html");
							}
						</script>
					</p>
					<p>
						<input type = "submit" value = "로그아웃" onClick="javascript:logoutProcess()">
						<script>
							function logoutProcess(){
								parent.location.replace("index.html");
							}
						</script>
					</p>
				</div>
			</fieldset>
		</form>
	</main>
	<footer class="footer">
        <div class="footer__info">
            OREAL은 불필요한 신체 노출이 없고 여성세가 없는 진짜 여성을 위한 옷을 보여주는 홈페이지입니다.
            <br>
            [출처] 코지웨어, 킹스클로젯, 퓨즈서울, deepingray, 리가브, VVII
        </div>
    </footer>
</body>
</html>
