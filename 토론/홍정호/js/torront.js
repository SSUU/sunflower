$(document).ready(function(){
        headerControll();
		// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        // session 을 통한 로그인 유효성 검사
        // li 태그 로그인 text를 마이페이지로 변경
        menuControll();
        
        $("#gaesul").click(function(){
        	
        	window.close();
        	opener.window.$(".contents").load("./torron.jsp");
        		
        	});
});

function menuControll(){
	$(".navigator").load("./navi.jsp", function() {
		
		$("#userMenu").click(function(){
			$(".contents").load("login.jsp");
		});
		
		$("#tronMenu").click(function(){
			
			$(".contents").load("contentlist.jsp");
		});
		
	});
	
	// 관리자 계정으로 로그인 했을 경우 
	// 일반 로그인에서 결과가 admin 인 경우 해당
	$("#adminBtn").click(function(){
		if($(this).text() == '관리자'){
			$(".navigator").load("./admin/admin_navi.html");
			$(this).text('일반');
		}else{
			$(".navigator").load("./navi.html", function() {
				$("#userMenu").click(function(){
					$(".contents").load("login.jsp");
				});
			});
			$(this).text('관리자');
		}
		
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
	location.href = "./";
}

	

