<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
</head>
<body onload='document.f.j_username.focus();'>
	<input id="contextPath" type="hidden"
		value="<%=request.getContextPath()%>" />
	<div class="col-sm-offset-3 col-sm-6" style="margin-top: 10%;">

		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">工作宝系统后台</h3>
			</div>
			<div class="panel-body">
				<form name="f" commandName="user" modelAttribute="user"
					cssClass="form-horizontal" role="form" method="post" action="<c:url value='/j_security_check'/>">

                    <table class="editTable">
                    <div id="loginError" class="loginError">
                        <c:if test="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION != null}">
                            ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
                        </c:if>

                    </div>

                    <tr>
                        <td><label for="j_username">用户账号：</label></td>
                        <td><input id="j_username" placeholder="用户账号" name="j_username" type="text" cssClass="form-control"/></td>

                        <td><label for="j_password">用户密码：</label></td>
                        <td><input type="password" name="j_password" id="j_password" cssClass="form-control"placeholder="用户密码" /></td>

                    </tr>
                    <tr>
                        <td><label for="authCode">验证码：</label></td>
                        <td><input type="text"  id="authCode" name="authCode" cssClass="form-control"
								placeholder="验证码" /></td>

                        <td><div class="col-sm-2">
							<img id="authIMG" alt="验证码"
								src="<%=request.getContextPath()%>/authCode"></div>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="form-group">
						<div class="col-sm-offset-3 col-sm-12">
							<button type="submit" class="btn btn-default">登录</button></div>
					</div>
                        </td>
                    </tr>
                    </table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>