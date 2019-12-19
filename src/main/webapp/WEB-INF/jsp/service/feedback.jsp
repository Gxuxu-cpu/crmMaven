<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>服务反馈</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/script/common.js"></script>
</head>
<body>

	<div class="page_title">客户服务管理 &gt; 服务反馈</div>
	<div class="button_bar">
		<button class="common_button" onclick="help('');">帮助</button>
		<button class="common_button" onclick="save('feedback')">查询</button>
	</div>
	<form action="../service/feedback" id="feedback">
		<table class="query_form_table" height="53">
			<tr>
				<th height="28">客户</th>
				<td><input name="svrCustName"
					value="${pageInfo.entity.svrCustName}" /></td>
				<th height="28">概要</th>
				<td><input name="svrTitle" value="${pageInfo.entity.svrTitle}" /></td>
				<th height="28">服务类型</th>
				<td><select name="svrType">
						<option value="">全部</option>
						<c:forEach items="${typeList}" var="type">
							<option ${pageInfo.entity.svrType==type.dictItem?'selected':''}
								value="${type.dictItem}">${type.dictItem}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th height="22">创建日期</th>
				<td colspan="3"><input name="svrCreateDate"
					value="${pageInfo.entity.svrCreateDate}" /></td>
				<th height="22">状态</th>
				<td><select name="svrStatus">
						<option ${pageInfo.entity.svrStatus=="已处理"} value="已处理">已处理</option>
				</select></td>
			</tr>
		</table>
	</form>
	<br />
	<table class="data_list_table">
		<tr>
			<th>编号</th>
			<th>客户</th>
			<th>概要</th>
			<th>服务类型</th>
			<th>创建人</th>
			<th>创建日期</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${pageInfo.lists}" var="service">
		<tr>
			<td class="list_data_number">${service.svrId}</td>
			<td class="list_data_text">${service.svrCustName}</td>
			<td class="list_data_ltext">${service.svrTitle}</td>
			<td class="list_data_text">${service.svrType}</td>
			<td class="list_data_text">${service.svrCreateBy}</td>
			<td class="list_data_text">
			<fmt:formatDate value="${service.svrCreateDate}" pattern="yyyy-MM-dd" />
			</td>
			<td class="list_data_op"><img
				onclick="to('../service/todetail?svrId=${service.svrId}');" title="处理"
				src="../../images/bt_feedback.gif" class="op_button" /></td>
		</tr>
		</c:forEach>


		<tr>
			<th colspan="7" class="pager">
				<div class="pager">
					共59条记录 每页<input value="10" size="2" />条 第<input value="1" size="2" />页/共5页
					<a href="#">第一页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a
						href="#">最后一页</a> 转到<input value="1" size="2" />页
					<button width="20" onclick="reload();">GO</button>
				</div>
			</th>
		</tr>
	</table>
</body>
</html>