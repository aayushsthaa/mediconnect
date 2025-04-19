<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userSession" value="${pageContext.session}" />
<c:set var="currentUser" value="${userSession.getAttribute('username')}" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MediConnect</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
</head>
<body>

	<c:choose>
		<c:when test="${not empty currentUser}">
			<div class="error-message">
				<h2>You are already logged in!</h2>
		        <p><a href="index">Go back to home page!!</a></p>
			</div>
		</c:when>
		
		<c:otherwise>
			<jsp:include page="header.jsp" />

	<section class="main-container">
      <div>
        <form action="" method="post" class="form-container">
          <img src="${pageContext.request.contextPath}/images/logoblack.png" alt="Logo" height="50px" />

          <h1>Welcome to MediConnect</h1>

          <div class="label-div">
            <label for="username">Username</label>
          </div>
          <input type="text" name="username" id="username" />
          <div class="label-div">
            <label for="password">Password</label>
          </div>
          <input type="password" name="password" id="password" />
          <button class="login-btn-form">Login</button>
          <p>Don't have an account? <a href="register">Register here</a></p>
        </form>
      </div>
    </section>
    
    <jsp:include page="footer.jsp" />
		</c:otherwise>

	</c:choose>
</body>
</html>