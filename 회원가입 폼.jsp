@@ 회원가입 폼
	name이랑 type이랑 작성하기

	http://localhost:8080/jsp/hyejin2/form.jsp
# form.jps

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>form.jsp</h1>

<h1>회원가입</h1>
<form action="pro2.jsp" method="get">

이름<input type="text" name="name" placeholder="이름" /> <br /> 
아이디<input type="text" name="id" maxlength="8" placeholder="아이디" /> <br /> 
비밀번호<input type="text" name="password" minlength="14" placeholder="비밀번호" /> <br />
비밀번호 확인<input type="text" name="rePassword" minlength="14" placeholder="비밀번호 확인" /> <br />

성별<br>   
남자<input type="radio" name="gender" /> <br />
여자<input type="radio" name="gender" /> <br />

생년월일<br>
<input type="date" name="date" /><br />

휴대전화<input type="number" name="phoneNumber" placeholder=" - 를 뺴고 입력해주세요." /> <br />
통신사<select name="telecom">
	<option value="KT">KT</option>
	<option value="SK">SK</option>
	<option value="LG">LGU+</option>
</select>
<br />
SMS 수신여부<br>
	<input name="phonReceive" type="radio" value="수신함" checked /> <br />
	<input name="phonReceive" type="radio" value="수신거부" /> <br />

우편번호<input type="number" name="post" maxlength="6" placeholder="우편번호" /> <br />
주소<input type="text" name="address" placeholder="주소" /> <br />
상세주소<input type="text" name="detailedAddress" placeholder="상세주소" /> <br />

이메일<br>
<input type="email" name="email" placeholder="이메일아이디" /><br />
이메일 수신여부<br>
	<input name="emailReceive" type="radio" value="수신함" checked /> <br />
	<input name="emailReceive" type="radio" value="수신거부" /> <br />
		
	<textarea rows="5" cols="20" name="content"></textarea> <br />

	<input name = "" type="submit" value="회원가입" />

</form>


# pro2.jps

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>pro2.jsp</h1>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String rePassword = request.getParameter("rePassword");
	String gender = request.getParameter("gender");
	String date = request.getParameter("date");
	String phoneNumber = request.getParameter("phoneNumber");
	String phoneReceive = request.getParameter("phoneReceive");
	String telecom = request.getParameter("telecom");
	String post = request.getParameter("post");
	String address = request.getParameter("address");
	String detailedAddress = request.getParameter("detailedAddress");
	String email = request.getParameter("email");
	String emailReceive = request.getParameter("emailReceive");
%>

 <h3>아이디 [<%=id%>]</h3>
 <h3>비밀번호 [<%=password%>]</h3>
 <h3>성별 [<%=gender%>]</h3>
 <h3>닉네임 [<%=name%>]</h3>
 <h3>통신사 [<%=telecom%>]</h3>
 <h3>휴대전화 [<%=phoneNumber%>]</h3> 
 <h3>SMS 수신여부 : [<%=phoneReceive%>]</h3>
 <h3>이메일 [<%=email%>]</h3>
 <h3>email 수신여부 : [<%=emailReceive%>]</h3>
 <h3>생년월일 [<%=date%>]</h3>
 <h3>우편번호 [<%=post%>]</h3>
 <h3>주소 [<%=address%>]</h3>
 <h3>상세주소 [<%=detailedAddress%>]</h3>
