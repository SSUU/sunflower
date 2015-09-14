$(document).ready(function() {
	// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	// session 을 통한 로그인 유효성 검사
	// li 태그 로그인 text를 마이페이지로 변경
	menuControll();
	headerControll();
});
var tPath = pathContainer();

function menuControll() {
	
	$(".navigator").load(tPath.getView("menu_general"), function() {
		$("li").click(function(){
			var loadFileName = $(this).attr("value");
			$(".contents").load(tPath.getView(loadFileName));
		});
	});

	 // 관리자 계정으로 로그인 했을 경우
	 // 일반 로그인에서 결과가 admin 인 경우 해당
//	 $("#adminBtn").click(function(){
//	 if($(this).text() == '관리자'){
//	 $(".navigator").load("./util/menu_admin.jsp");
//	 $(this).text('일반');
//	 }else{
//	 $(".navigator").load("./util/menu_general.jsp", function() {
//	 });
//	 $(this).text('관리자');
//	 }
//
//	 });
}

function headerControll() {
	$(".glyphicon-search").click(function() {
		$(".search-box").toggle();
	});

	$(".right .glyphicon:last-child").click(function() {
		$(this).toggleClass("glyphicon-menu-hamburger");
		$(".navigator").toggle(500);
	});
}

//function goToMain() {
//	location.href = tPath.getBasePath();
//}

function pathContainer() {
	var basePath = "./";
	var viewPath = 
	[ 
	  {
		folder : "util/",
		chat : "chat",
		timer : "timer",
		menu_general : "menu_general",
		menu_admin : "menu_admin",
		graph_1 : "graph_1"
	  },
	  {
		folder : "person/",
		login : "login",
		signup : "signup"
	  },
	  {
		folder : "torron/",
		list : "list",
		create : "create",
		room : "room"
	  },
	  {
		  folder : "surpport/",
		  introduce : "introduce",
		  customer : "customer"
	  }
	  ];

	var pathObj = {
		view : "view",
		js : "js",
		css : "css",
		getView : function(fileName) {

			for (var i = 0; i < viewPath.length; i++) {
				var obj = viewPath[i]
				if (obj.hasOwnProperty(fileName)) {
					// alert("p : "+obj.folder + obj[fileName]);
					return obj.folder + obj[fileName]+".jsp";
				}
			}
		}
	}

	return {
		getView : function(fileName) {
			return pathObj.getView(fileName);
		},
		goToMain : function() {
			location.href = basePath;
		}
	}
}
