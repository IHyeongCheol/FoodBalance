<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<script src="https://cdn.ckeditor.com/4.18.0/standard/ckeditor.js"></script>



<style type="text/css">
  table {
    width: 100%;
    border-top: 1px solid #fff;
    border-collapse: collapse;
  }
 .th {
    border-right: 1px solid #52575c;
    border-bottom: 1px solid #fff;
    padding: 15px;
  }
 .tr {
    border-right: 1px solid #52575c;
    padding: 15px;
  }


.form{
	margin: 30px;
	text-align: center;
	font-family: "나눔스퀘어라운드R";
		}
h1{
	font-family: "나눔바른고딕";
	font-size: 40px;
}
th{	
	height: 29px;
	border-top: 0px;
	border-bottom: 1px solid #fff;
	background-color: #424343;
	color: white;
	font-weight: normal;
}
td{
	border-top: 0px;
	border-bottom: 1px solid #424343;
	background-color: #FCFCFC;
}
#logoutBtn{
	font-family: "나눔스퀘어라운드B";
	font-size: 13px;
	padding: 5px 5px;
	color: white;
	background-color: 424343;
	border: none;
	margin: 5px 8px;
	border-radius: 5px;
	cursor: pointer;
	width: 65px;
	height: 30px;
}
#writeBtn{
	font-family: "나눔스퀘어라운드B";
	font-size: 15px;
	padding: 3px 3px;
	color: white;
	background-color: 4795DA;
	border: none;
	margin: 0px 5px;
	border-radius: 5px;
	cursor: pointer;
	width: 90px;
	height: 40px;
}
#writeBtn:hover{
	color: white;
	background-color: 549FE1;
}
#btn{
	font-family: "나눔스퀘어라운드B";
	font-size: 13px;
	padding: 5px 5px;
	color: white;
	border: none;
	margin: 5px 8px;
	border-radius: 5px;
	cursor: pointer;
	width: 65px;
	height: 30px;
	background-color: 3D7DB5;
}
.note-frame card{
	postion:realtive;
	margin:0 auto;
}
.note-editor{
	postion:realtive;
	margin:0 auto;
}
#commentBox{
	width: 850px;
	border: 3px solid #F8F8F8;
	text-align: left;
	position: relative;
	margin: 0 auto;
}
#replyList{
	height: auto;
	width: auto;
	text-align: left;
	position: relative;
	margin: 5px;
	padding: 15px 25px 15px 25px;
	background-color: #F8F8F8;
}
#replyBox{
	height: 140px;
	width: 840px;
	border: 3px solid #F8F8F8;
	position: relative;
	margin: 0 auto;
	background-color: #F8F8F8;
}
#replyWrite{
	height: 100px;
	width: 600px;
	text-align: left;
	position: relative;
	margin: 0 auto;
	padding: 10px 0px;
}
#replyBtn{
	font-family: "나눔스퀘어라운드R";
	font-size: 12px;
	padding: 2px 3px;
	color: white;
	border: none;
	margin: 1px 3px;
	border-radius: 5px;
	cursor: pointer;
	width: 50px;
	height: 25px;
	background-color: C3A50E;
}
		
		/* 페이지 */
#ss{
	width: 70%; 
	min-width: 100%; 
	margin-right:auto; 
	margin-left:auto; 
	height: 100%;
}
/*   겉 테두리  */
#se{
	position:relative; 
	margin: auto;
	width: 100%;
	max-width: 1350px;
	height: 100%;
 	background: white;
 	border-radius: 30px;
 	border: 3px solid black;
 	flex-wrap: wrap; 
 	transition: all ease-in-out 0.3s;
 	
  }

 

</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
	
<title></title>

</head>
<body id="ss">
<div id="se"> 
	<c:import url="/WEB-INF/views/common/menubar.jsp" />
	<section class="page-section cta">
	    <div class="container">
	    <br>
	        <div class="row">
		        <form action="binsert.do" method="post" enctype="multipart/form-data">
		            <div class="col-xl-9 mx-auto">
		            <br><br>
		            
		            <p style="color: #52575c; font-size: 35px;" align="center"><b>게시글 등록 페이지</b></p>
		                <div class="cta-inner bg-faded text-center rounded">
<!-- =============================================================================== -->
							<!-- form에서 입력된 값들과 첨부파일을 같이 전송하려면, 반드시 enctype 속성을 추가해야 함
						     enctype="multipart/form-data" 값을 지정해야함 -->
						
							<table style=" border-collapse: collapse; width: 100%;background: white; border-radius: 1rem; border: 1px solid; padding: 5px; margin: 5px;text-align: center;"align="center" cellspacing="0" cellpadding="15">
								<tr><th class="th">제     목</th><td class="td"><input class="form-control" id="disabledInput" type="text" name="board_title" required></td></tr>
								<tr><th class="th">작 성 자</th><td class="td"><input class="form-control" id="disabledInput" type="text" name="user_id" readonly value="${loginMember.user_id }" required></td></tr>
								<tr><th class="th">첨부파일</th><td class="td" align="left" ><input style="margin-bottom: 1%; " class="btn btn-outline-secondary" type="file" name="upfile"></td></tr>
								<tr><th class="th">내     용</th><td class="td"><textarea class="form-control" id='summernote' name="board_content" rows="5" cols="50" required></textarea>
								<!-- <script>
                        			CKEDITOR.replace( 'board_content' );
                				</script> -->
								</td></tr>
					
							</table>
<!-- =============================================================================== -->
						</div>
						<br>
						<div style=" padding: 5px; margin: 5px; margin-bottom: 3%" align="center">
							<input style="margin-bottom: 1%; " class="btn btn-outline-secondary" type="submit" value="등록하기"> &nbsp;
							<input style="margin-bottom: 1%; " class="btn btn-outline-secondary" type="reset" value="작성취소"> &nbsp;
							<button style="margin-bottom: 1%; " class="btn btn-outline-secondary" onclick="javascript:history.go(-1);return false;">목록</button>
							<!-- return false로 이벤트 전달 막음 -->
						</div>
					</div>
				</form>
				
			</div>
			<c:import url="/WEB-INF/views/common/footer.jsp" />			
		</div>
	</section>


</div>
</body>
</html>
