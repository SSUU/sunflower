$(document).ready(function(){
        headerControll();
        // session 을 통한 로그인 유효성 검사
        // li 태그 로그인 text를 마이페이지로 변경
        menuControll();
});

function menuControll(){
	$("#userMenu").click(function(){
		
		$(".contents").load("login.jsp");
	});
}

function headerControll(){
	$(".glyphicon-search").click(function(){
        $(".search-box").toggle();
    });

    $(".right .glyphicon:last-child").click(function(){
        $(this).toggleClass("glyphicon-menu-hamburger");
        $(".navigator").toggle(500);
    });
}

function goToMain(){
	// session 확인하여 로그인 했는지 검사
	location.href = "./";
}

