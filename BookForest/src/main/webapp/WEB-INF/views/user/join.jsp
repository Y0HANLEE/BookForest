<%@ include file="../include/head.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Section-->
<section class="py-5">
	<!-- <div class="container px-4 px-lg-5 mt-5"> -->
	<div class="container col-12">
		<form method="post" action="/user/join">
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">아이디</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" name="userid">
					<button class="btn btn-dark w-50p h-40p" id="chkId">Chk</button>
				</div>
				<div class="col-5 px-2 align-content-center text-danger" id="idInfo">
					
				</div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">비밀번호</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" type="password" name="userpw" maxlength="8">
				</div>
				<div class="col-5 px-2 align-content-center text-danger">
					*특수문자 포함 영어 소문자 8자리
				</div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center"><b>└</b> 확인</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" type="password" maxlength="8">
					<button class="btn btn-dark w-50p h-40p" id="chkPw">Chk</button>
				</div>
				<div class="col-5 px-2 align-content-center text-danger">
					*특수문자 포함 영어 소문자 8자리
				</div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">이름</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" name="name" maxlength="30">
				</div>
				<div class="col-5 px-2 align-content-center text-danger"></div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">생일</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" type="date" name="birth">
				</div>
				<div class="col-5 px-2 align-content-center text-danger"></div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">연락처</div>
				<div class="col-5 lh-lg">
					<input class="col-20 px-2 me-1 h-40p" id="ph1" maxlength="3">-
					<input class="col-22 px-2 me-1 h-40p" id="ph2" maxlength="4">-
					<input class="col-22 px-2 me-1 h-40p" id="ph3" maxlength="4">
					<input type="hidden" name="phone">						
				</div>
				<div class="col-5 px-2 align-content-center text-danger">
				</div>
			</div>
			<div class="row h-40p my-4">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">Email</div>
				<div class="col-5 lh-lg">
					<input class="col-4 px-2 me-1 h-40p" id="m1">@
					<input class="col-4 px-2 me-1 h-40p" id="m2">
					<input type="hidden" name="email">
					<button class="btn btn-dark w-50p h-40p" id="chkEmail">Chk</button>
				</div>
				<div class="col-5 px-2 align-content-center text-danger">
					
				</div>
			</div>
			<div class="row h-40p my-2">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center">주소</div>
				<div class="col-5 lh-lg">
					<input class="col-9 px-2 me-1 h-40p" name="addr1">
					<button class="btn btn-dark w-50p h-40p" id="findCode">Find</button>
				</div>
				<div class="col-5 px-2 align-content-center text-danger">
					
				</div>
			</div>
			<div class="row h-80p my-2">
				<div class="col-2 ps-3 fs-5 fw-bolder text-start align-content-center"></div>
				<div class="col-10 lh-lg">
					<input class="col-7 px-2 my-1 h-40p" name="addr2">
					<input class="col-7 px-2 my-1 h-40p" name="addr3">
				</div>
			</div>
			<div class="row h-50p m-2 mt-5">
				<button class="btn btn-sm btn-dark" id="joinBtn">회원가입</button>
			</div>
		</form>
	</div>
</section>
<script>
	$(document).ready(function(){
		//header 정보변경(배경사진, 글귀)
		$("#headerTitle").html("Join to BookForest");
		$("#headerIntro").html("회원가입");
		$("#header").css("background-image", "linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(../resources/assets/img/forest3.jpg)");
	
		
		$("#chkId").click(function(e){
			e.preventDefault();
			
			var userid = $("input[name='userid']").val();
			//ID중복체크
			$.ajax({
				type:"post",
				url:"/user/chkId",
				data:{userid:userid},
				success:function(result){
					console.log("중복된 ID 개수 : "+result+"개");
					if(result!=0){
						$("#idInfo").html("중복된 ID가 존재합니다.").removeClass("text-success").addClass("text-danger");;
					} else {
						$("#idInfo").html("사용가능한 아이디입니다.").removeClass("text-danger").addClass("text-success");
					}
				}
			});
		});
		
		$("#chkPw").click(function(e){
			e.preventDefault();
			
		});
		
		//email
		var m1 = $("#m1").val();
		var m2 = $("#m2").val();
		var mail = $("input[name='email']").val(m1+"@"+m2);
		
		$("#chkEmail").click(function(e){
			e.preventDefault();

		});
		
		//phone
		var ph1 = $("#ph1").val();
		var ph2 = $("#ph2").val();
		var ph3 = $("#ph3").val();
		var ph = $("input[name='phone']").val(ph1+"-"+ph2+"-"+ph3);
		
		
		
		$("#findCode").click(function(e){
			e.preventDefault();
			
		});
	});
</script>
<%@include file="../include/foot.jsp"%>