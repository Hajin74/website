<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>
<html>
<head>
	 <title>LOGIN | OREAL</title>
	 <script src="https://kit.fontawesome.com/ad7b30a9d7.js" crossorigin="anonymous"></script>
	 <link type = "text/css" rel = "stylesheet" href = "css/style.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
    <table  class = "member_table">
		<tr>
			<td>
				<H1>로그인을 축하드립니다.</H1>
			</td>
		</tr>
		<tr>
			<td>
				<%
				String strName=request.getParameter("member_name");
				String strID=request.getParameter("member_id");
				out.println("아이디 : " + strName + "<br/>");
				out.println("비밀번호 : " + strID + "<br/></br>" );
				out.println("<a href='index.html'><input type = 'button' value = '확인' id = 'checkbutton'></a>");
				%>
			</td>
		</tr>
	</table>
    <footer class="footer">
        <div class="footer__info">
            OREAL은 불필요한 신체 노출이 없고 여성세가 없는 진짜 여성을 위한 옷을 보여주는 홈페이지입니다.
            <br>
            [출처] 코지웨어, 킹스클로젯, 퓨즈서울, deepingray, 리가브, VVII
        </div>
    </footer>
</body>
</html>
