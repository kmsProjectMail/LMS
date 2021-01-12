<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교육과정 상세정보</title>
</head>
<body>
<h1>시설정보 vo</h1>
<%-- ${facilVo} --%>
	<table>
		<tr>
			<th>시설명</th><th>시설 수</th>
			<th>시설면적</th><th>수용 인원</th>
		</tr>	
		<c:forEach var="vo" items="${facilVo}">
		<tr>
			<td>
			<c:set var = "length" value="${fn:length(vo.trafclty_nm)}"/>
			${fn:substring(vo.trafclty_nm, 1, length-1)}
			</td>
			<td>
			<c:set var = "length" value="${fn:length(vo.hold_qy)}"/>
			<!-- 값이 없을 경우 ""가 입력되어있음 -->
			<c:if test="${length == 2}">
			 -
			</c:if>
			<c:if test="${length != 2}">
			${fn:substring(vo.hold_qy, 1, length-1)}개
			</c:if>
			</td>
			<td>
			<c:set var = "length" value="${fn:length(vo.fclty_ar_cn)}"/>
			<c:if test="${length == 2}">
			 -
			</c:if>
			<c:if test="${length != 2}">
			${fn:substring(vo.fclty_ar_cn, 1, length-1)}㎡
			</c:if>
			</td>
			<td>
			<c:set var = "length" value="${fn:length(vo.ocu_acptn_cn)}"/>
			<c:if test="${length == 2}">
			 -
			</c:if>
			<c:if test="${length != 2}">
			${fn:substring(vo.ocu_acptn_cn, 1, length-1)}명
			</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
<h1>장비정보 vo</h1>
${eqmnVo}
<h1>과정정보 vo</h1>
${TrprVo}
</body>
</html>